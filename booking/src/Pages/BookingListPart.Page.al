/// <summary>
/// Page Booking List (ID 50001).
/// </summary>
page 50002 "BookingListPart"
{
    Caption = 'Booking List Part';
    PageType = ListPart;
    SourceTable = "Booking Line";
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("House No"; Rec."House No")
                {
                    ApplicationArea = All;
                }
                field("House Name"; Rec."House Name")
                {
                    ApplicationArea = All;
                }
                field("Cost Per Unit"; Rec."Cost Per Unit")
                {
                    ApplicationArea = All;
                }
                field("No of Nights"; Rec."No of Nights")
                {
                    ApplicationArea = All;
                }
                field("Line Total"; Rec."Line Total")
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}