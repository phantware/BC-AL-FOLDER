/// <summary>
/// PageExtension SalesSetupPageExt (ID 50000) extends Record MyTargetPage.
/// </summary>
pageextension 50000 SalesSetupPageExt extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Direct Debit Mandate Nos.")
        {
            field("Booking Nos."; Rec."Booking Nos.")
            {

            }
        }
    }
}