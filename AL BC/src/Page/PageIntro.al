/// <summary>
/// Page EmployeePage (ID 50103).
/// </summary>
page 50103 EmployeePage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Employeee;
    Caption = 'Employee Table Intro';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Empcode; Rec.Empcode)
                {
                    ApplicationArea = All;

                }
                field(EmpName; Rec.EmpName)
                {
                    ApplicationArea = All;
                }
                field(Empdepartment; Rec.Empdepartment)
                {
                    ApplicationArea = All;
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

    var
        myInt: Integer;
}