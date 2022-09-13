/// <summary>
/// Page ExpressionPage (ID 50100).
/// </summary>
page 50100 ExpressionPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    // SourceTable = TableName;
    Caption = 'Logical Expression Page';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Get input from users';
                field(Number1; Number1)
                {
                    ApplicationArea = All;

                }

                field(Number2; Number2)
                {
                    ApplicationArea = All;

                }
            }

            group(Output)
            {
                Caption = 'The result of the calculation';
                field(Res; Res)
                {
                    ApplicationArea = All;
                    Editable = false;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Run)
            {
                ApplicationArea = All;
                Caption = 'Run';
                Image = ExecuteBatch;


                trigger OnAction()
                begin
                    Res := Number1 < Number2;
                end;
            }
        }
    }

    var
        Number1: Integer;
        Number2: Integer;
        Res: Boolean;
}