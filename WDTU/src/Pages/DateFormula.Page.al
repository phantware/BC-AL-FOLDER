/// <summary>
/// Page Date Formula (ID 50003).
/// </summary>
page 50003 "Date Formula"
{
    Caption = 'Date Formula';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Date Formula";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Primary Key"; Rec."Primary Key")
                {
                    ApplicationArea = All;
                }
                field("Reference for Date Calculation"; Rec."Reference for Date Calculation")
                {
                    ApplicationArea = All;
                }
                field("Date Formula to Test"; Rec."Date Formula to Test")
                {
                    ApplicationArea = All;
                }
                field("Date Result"; Rec."Date Result")
                {
                    ApplicationArea = All;
                }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}