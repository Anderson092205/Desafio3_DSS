<?php
require("pdfESCalendar.php");

class MyCalendar extends PDF_USA_Calendar
{

function printDay($date)
{
	// add logic here to customize a day
}

function isHoliday($date)
{
	$this->JDtoYMD($date, $year, $month, $day);
	// call the base class for El Salvador holidays
	return parent::isHoliday($date);
}

} // class MyCalendar extends PDF_USA_Calendar

// MyCalendar shows how to customize your calendar with El Salvador holidays and a birthday
// Supports any size paper FPDF does
$pdf = new MyCalendar("L", "Letter");
// you can set margins and line width here. PDF_USA_Calendar uses the current settings.
$pdf->SetMargins(7,7);
$pdf->SetAutoPageBreak(false, 0);
// set fill color for non-weekend holidays
$greyValue = 190;
$pdf->SetFillColor($greyValue,$greyValue,$greyValue);
// print the calendar for a whole year
$year = gmdate("Y");
for ($month = 1; $month <= 12; ++$month)
	{
	$date = $pdf->MDYtoJD($month, 1, $year);
	$pdf->printMonth($date);
	}
$pdf->Output();
?>
