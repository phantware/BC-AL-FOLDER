/// <summary>
/// Page Booking List (ID 50001).
/// </summary>
page 50001 "Booking List"
{
    Caption = 'Booking List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = Booking;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Booking No."; Rec."Booking No.")
                {
                    ApplicationArea = All;
                }
                field("Customer No."; Rec.Customer)
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field("DateTime Created"; Rec."DateTime Created")
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}