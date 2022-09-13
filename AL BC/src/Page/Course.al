/// <summary>
/// Table MyTable (ID 50110).
/// </summary>
table 50110 Course
{
    DataClassification = ToBeClassified;
    Caption = 'Course';

    fields
    {
        field(1; Code; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Name; Text[20])
        {
            DataClassification = ToBeClassified;

        }

        field(3; Description; Text[25])
        {
            DataClassification = ToBeClassified;

        }

        field(4; Type; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "instruction-led","e-learning","remote";

        }

        field(5; Duration; Decimal)
        {
            DataClassification = ToBeClassified;

        }

        field(6; Price; Decimal)
        {
            DataClassification = ToBeClassified;

        }


        field(7; Active; Boolean)
        {
            DataClassification = ToBeClassified;

        }

        field(8; Difficulty; Integer)
        {
            DataClassification = ToBeClassified;

        }

        field(9; Passingrate; Integer)
        {
            DataClassification = ToBeClassified;

        }


        field(10; InstructorCode; Code[25])
        {
            DataClassification = ToBeClassified;
            TableRelation = Resource where(Type = const(Person));

        }
#pragma warning disable AL0685
        field(11; InstructorName; Text[25])
#pragma warning restore AL0685
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Resource.Name where("No." = field(InstructorCode)));

        }
    }

    keys
    {
        key(Key1; Code)
        {
        }
        key("secondary key1"; Instructorcode)
        {
        }

        key("secondary key2"; Type)
        {
        }
    }
}