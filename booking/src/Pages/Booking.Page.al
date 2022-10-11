/// <summary>
/// Page MyPage (ID 50000).
/// </summary>
page 50000 "MyPage"
{
    Caption = 'Caption';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Booking;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            group(General)
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