/// <summary>
/// TableExtension SalesSetupExt (ID 50000) extends Record Sales and Receivables Setup.
/// </summary>
tableextension 50000 SalesSetupExt extends "Sales & Receivables Setup"
{
    fields
    {
        field(50000; "Booking Nos."; Code[10])
        {
            TableRelation = "No. Series";
        }
    }

}