<?php
require_once("fpdf.php");

class PDF_USA_Calendar extends FPDF
{
protected $date;
protected $squareHeight;
protected $squareWidth;
protected $longestMonth;
protected $tinySquareSize;
protected $headerFontSize;

function dec($str) {
	return mb_convert_encoding($str, 'ISO-8859-1', 'UTF-8');
}

function __construct($orientation="L", $size="Letter")
{
	parent::__construct($orientation, "mm", $size);
	// compute longest month name
	$this->longestMonth = "";
	$meses = array(1=>"Enero", 2=>"Febrero", 3=>"Marzo", 4=>"Abril", 5=>"Mayo", 6=>"Junio", 7=>"Julio", 8=>"Agosto", 9=>"Septiembre", 10=>"Octubre", 11=>"Noviembre", 12=>"Diciembre");
	for ($month = 1; $month <= 12; ++$month)
		{
		$monthYear = $meses[$month] . " 2009";
		if (strlen($monthYear) > strlen($this->longestMonth))
			{
			$this->longestMonth = $monthYear;
			}
		}
	// compute font size
	$this->tinySquareSize = 4;
	$this->headerFontSize = 70;
	$this->SetFont("Arial", "B", $this->headerFontSize);
	$width = $this->w - $this->lMargin - $this->rMargin;
	while ($this->GetStringWidth($this->dec($this->longestMonth)) > $width - $this->tinySquareSize * 22)
		{
		--$this->headerFontSize;
		$this->SetFont("Arial", "B", $this->headerFontSize);
		}
}

// useful date manipulation routines

function JDtoYMD($date, &$year, &$month, &$day)
{
	$string = JDToGregorian($date);
	$month = strtok($string, " -/");
	$day = strtok(" -/");
	$year = strtok(" -/");
}

function MDYtoJD($month, $day, $year)
{
	if (! $month || ! $day || ! $year)
		return 0;
	$a = floor((14-$month)/12);
	$y = floor($year+4800-$a);
	$m = floor($month+12*$a-3);
	$jd = $day+floor((153*$m+2)/5)+$y*365;
	$jd += floor($y/4)-floor($y/100)+floor($y/400)-32045;
	return $jd;
}

function lastMonth($date)
{
	$this->JDtoYMD($date, $year, $month, $day);
	if (--$month == 0)
		{
		$month = 12;
		$year--;
		}
	return GregorianToJD($month, $day, $year);
}

function nextMonth($date)
{
	$this->JDtoYMD($date, $year, $month, $day);
	if (++$month > 12)
		{
		$month = 1;
		++$year;
		}
	return GregorianToJD($month, $day, $year);
}

function isHoliday($date)
{
	$this->JDtoYMD($date, $year, $month, $day);
	if ($month == 1 && $day == 1) return $this->dec("Año Nuevo");
	if ($month == 4 && $day == 17) return $this->dec("Jueves Santo");
	if ($month == 4 && $day == 18) return $this->dec("Viernes Santo");
	if ($month == 4 && $day == 19) return $this->dec("Sábado Santo");
	if ($month == 5 && $day == 1) return $this->dec("Día del Trabajo");
	if ($month == 5 && $day == 10) return $this->dec("Día de la Madre");
	if ($month == 6 && $day == 17) return $this->dec("Día del Padre");
	if ($month == 8 && ($day == 4 || $day == 5 || $day == 6)) return $this->dec("Divino Salvador del Mundo");
	if ($month == 9 && $day == 15) return $this->dec("Día de la Independencia");
	if ($month == 11 && $day == 2) return $this->dec("Día de los Difuntos");
	if ($month == 12 && $day == 25) return $this->dec("Navidad");
	return "";
}

function isWeekHoliday($date, $dayOfWeek, $weekOfMonth, $monthOfDate)
{
	$this->JDtoYMD($date, $year, $month, $day);
	if ($monthOfDate != $month)
		return 0;
	$jd = jdtounix($date);
	$dow = gmdate("w", $jd);
	if ($dow != $dayOfWeek)
	return 0;
	$daysInMonth = gmdate("t", $jd);
	if ($weekOfMonth > 5 && $day + 6 > $daysInMonth)
		return 1;
 	if ($day > ($weekOfMonth - 1) * 7 && $day <= ($weekOfMonth * 7))
		return 1;
	return 0;
}

function tinyCalendar($date, $square)
{
	$this->JDtoYMD($date, $year, $month, $day);
	// print numbers in boxes
	$wd=gmdate("w",jdtounix($date));
	$cur = $date - $wd;
	$this->SetFont("Arial", "B", 10);
	$meses = array(1=>"Enero", 2=>"Febrero", 3=>"Marzo", 4=>"Abril", 5=>"Mayo", 6=>"Junio", 7=>"Julio", 8=>"Agosto", 9=>"Septiembre", 10=>"Octubre", 11=>"Noviembre", 12=>"Diciembre");
	$this->JDtoYMD($date, $year, $month, $day);
	$monthStr = $this->dec($meses[$month]." $year");
	// save local copy of coordinates for future reference
	$x = $this->x;
	$y = $this->y;
	$this->Cell(7*$square, $square, $monthStr, 0, 0, "C");
	$y+=$square;
	$this->SetXY($x, $y);
	$this->SetFontSize(8);
	$dias = array(1=>"D", 2=>"L", 3=>"M", 4=>"M", 5=>"J", 6=>"V", 7=>"S");
	for ($i = 1; $i <= 7; ++$i)
		{
		$this->Cell($square, $square, $this->dec($dias[$i]), 0,0,"C");
		}
	$y+=$square;
	$this->SetXY($x, $y);
	for ($k=0;$k<6;$k++)
		{
		for ($i=0;$i<7;$i++ )
			{
			$this->JDtoYMD($cur++, $curYear, $curMonth, $curDay);
			if ($curMonth != $month)
				$curDay = " ";
			$this->Cell($square, $square, $curDay, 0, 0, "R");
			}
		$y+=$square;
		$this->SetXY($x, $y);
		}
}

function printDay($date)
{
// nothing to do, can be overriden
}

function printHoliday($date)
{
	$x = $this->x;
	$y = $this->y;
	$height = 5.5;
	if ($this->squareHeight < 50)
		$height = 4;
	$widthPercent = .92;
	$fontSize = 11;
	$holiday = $this->isHoliday($date);
	if (strlen($holiday))
		{
		$wd = gmdate("w",jdtounix($date));
		if ($wd != 0 && $wd != 6)
			$this->Cell($this->squareWidth, $this->squareHeight, "", 0, 0, "", true);
		
		// Resaltar la fecha (Color rojo)
		$this->SetTextColor(200, 0, 0);
		
		// Calcular la altura total del texto para centrarlo verticalmente
		// Si el texto es largo, FPDF MultiCell lo dividirá
		$lines = max(1, ceil($this->GetStringWidth($holiday) / ($this->squareWidth * $widthPercent)));
		$totalTextHeight = $lines * $height;
		$startY = $y + ($this->squareHeight - $totalTextHeight) / 2; // Centrado vertical

		$this->SetXY($x + $this->squareWidth * (1-$widthPercent)/2, $startY);
		$this->SetFont("Arial", "B", $fontSize);
		$this->MultiCell($this->squareWidth * $widthPercent, $height, $holiday, 0, "C");
		
		// Restaurar color a negro para otros textos
		$this->SetTextColor(0, 0, 0);
		}
}

function printMonth($date)
{
	$this->date = $date;
	$this->JDtoYMD($date, $year, $month, $day);
	$this->AddPage();
	// compute size base on current settings
	$width = $this->w - $this->lMargin - $this->rMargin;
	$height = $this->h - $this->tMargin - $this->bMargin;
	// print prev and next calendars
	$this->setXY($this->lMargin,$this->tMargin);
	$this->tinyCalendar($this->lastMonth($date), $this->tinySquareSize);
	$this->setXY($this->lMargin+$width - $this->tinySquareSize * 7,$this->tMargin);
	$this->tinyCalendar($this->nextMonth($date), $this->tinySquareSize);
	// print header
	$firstLine = $this->tinySquareSize * 8 + $this->tMargin;
	$meses = array(1=>"Enero", 2=>"Febrero", 3=>"Marzo", 4=>"Abril", 5=>"Mayo", 6=>"Junio", 7=>"Julio", 8=>"Agosto", 9=>"Septiembre", 10=>"Octubre", 11=>"Noviembre", 12=>"Diciembre");
	$monthStr = $this->dec(strtoupper($meses[$month] . " " . $year));
	$this->SetXY($this->lMargin,$this->tMargin);
	$this->SetFont("Arial", "B", $this->headerFontSize);
	$this->Cell($width, $firstLine, $monthStr, 0,0, "C");
	// compute number of weeks in month.
	$wd=gmdate("w",jdtounix($date));
	$start = $date - $wd;
	$numDays = $this->nextMonth($date) - $start;
	$numWeeks = 0;
	while ($numDays > 0)
		{
		$numDays -= 7;
		++$numWeeks;
		}
	// compute horizontal lines
	$this->squareHeight = ($height - 6 - $firstLine) / $numWeeks;
	$horizontalLines = array($firstLine,6);
	for ($i = 0; $i < $numWeeks; ++$i)
		{
		$horizontalLines[$i + 2] = $this->squareHeight;
		}
	// compute vertical lines
	$this->squareWidth = $width / 7;
	$verticalLines = array($this->lMargin, $this->squareWidth, $this->squareWidth, $this->squareWidth, $this->squareWidth, $this->squareWidth, $this->squareWidth, $this->squareWidth);
	
	// print days of week
	$x = 0;
	$this->SetFont("Arial", "B", 12);
	$diasFull = array(1=>"Domingo", 2=>"Lunes", 3=>"Martes", 4=>"Miércoles", 5=>"Jueves", 6=>"Viernes", 7=>"Sábado");
	for ($i = 1; $i <= 7; ++$i)
		{
		$x += $verticalLines[$i-1];
		$this->SetXY($x,$firstLine);
		$day = $this->dec($diasFull[$i]);
		$this->Cell($verticalLines[$i],6,$day,0,0,"C");
		}
	
	// print numbers in boxes
	$wd=gmdate("w",jdtounix($date));
	$cur = $date - $wd;
	$this->SetFont("Arial", "B", 20);
	$x = 0;
	$y = $horizontalLines[0];
	for ($k=0;$k<$numWeeks;$k++)
		{
		$y += $horizontalLines[$k+1];
		for ($i=0;$i<7;$i++ )
			{
			$this->JDtoYMD($cur, $curYear, $curMonth, $curDay);
			$x += $verticalLines[$i];
			$this->squareWidth = $verticalLines[$i+1];
			if ($curMonth == $month)
				{
				$this->setXY($x, $y);
				$this->printHoliday($cur);
				$this->setXY($x, $y);
				$this->printDay($cur);
				$this->SetFont("Arial", "B", 20);
				$this->SetXY($x,$y+1);
				$this->Cell(5, 5, $curDay);
				}
			++$cur;
			}
		$x = 0;
		}
	
	// print horizontal lines
	$ly = 0;
	$ry = 0;
	foreach ($horizontalLines as $key => $value)
		{
		$ly += $value;
		$ry += $value;
		$this->Line($this->lMargin,$ly,$this->lMargin+$width,$ry);
		}
	// print vertical lines
	$lx = 0;
	$rx = 0;
	foreach ($verticalLines as $key => $value)
		{
		$lx += $value;
		$rx += $value;
		$this->Line($lx,$firstLine,$rx,$firstLine + 6 + $this->squareHeight * $numWeeks);
		}
}

} 
?>
