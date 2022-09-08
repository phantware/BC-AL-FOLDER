/// <summary>
/// Page MNB Bonus (ID 50110).
/// </summary>
page 50110 "MNB Bonus Card"
{
    Caption = 'Bonus Card';
    PageType = Document;
    // ApplicationArea = All;
    // UsageCategory = Administration;
    SourceTable = "MNB Bonus Header";


    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies bonus number';
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies bonus customer number';
                }

                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies bonus starting date';
                }

                field("Ending Date"; Rec."Ending Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies bonus ending date';
                }


                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies bonus status';
                }
            }

            part(Lines; "MNB Bonus Subform")
            {
                ApplicationArea = All;
                SubPageLink = "Document No." = field("No.");
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