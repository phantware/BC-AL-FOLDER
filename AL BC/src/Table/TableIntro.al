/// <summary>
/// Table MyTable (ID 50100).
/// </summary>
table 50100 Employeee
{
    DataClassification = ToBeClassified;
    Caption = 'Employee Table';

    fields
    {
        field(1; Empcode; Code[20])
        {
            NotBlank = true;
        }
        field(2; EmpName; Text[50])
        {
        }
        field(3; Empdepartment; Text[50])
        {
        }
    }

    keys
    {
        key(PK; Empcode)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}