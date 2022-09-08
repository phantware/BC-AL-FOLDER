/// <summary>
/// Page MNB Bonus Subform (ID 50120).
/// </summary>
page 50120 "MNB Bonus Subform"
{
    Caption = 'Bonus Lines';
    PageType = ListPart;
    // ApplicationArea = All;
    // UsageCategory = Administration;
    SourceTable = "MNB Bonus Line";

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies type of the bonus assigned';
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies item number for which bonus is assigned';
                }
                field("Bonus Perc."; Rec."Bonus Perc.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies bonus percentage';
                }


            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}