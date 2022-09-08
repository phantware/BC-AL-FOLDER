/// <summary>
/// Page MNB Bonus List (ID 50100).
/// </summary>
page 50100 "MNB Bonus List"
{
    Caption = 'Bonuses';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "MNB Bonus Header";
    Editable = false;
    CardPageId = "MNB Bonus Card";

    layout
    {
        area(Content)
        {
            repeater(Content1)
            {

                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specofies the bonus number.';
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer number';
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the starting date';
                }
                field("Ending Date"; Rec."Ending Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the ending date';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the bonus status';
                }
            }

        }
    }

    actions
    {
        area(Navigation)
        {
            action(CustomerCard)
            {
                ApplicationArea = All;
                Caption = 'Customer Card';
                Image = Customer;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = page "Customer Card";
                RunPageLink = "No." = field("Customer No.");
                ToolTip = 'Opens customer card';

            }
        }
    }

}