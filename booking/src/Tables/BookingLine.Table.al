/// <summary>
/// Table Booking Line (ID 50001).
/// </summary>
table 50001 "Booking Line"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Line No"; Integer)
        {
            Caption = 'Line No';
            Editable = false;
        }
        field(2; "Booking No"; Code[10])
        {
            Caption = 'Booking No';
            Editable = false;
        }
        field(3; "House No"; Code[10])
        {
            Caption = 'House No';
            TableRelation = Resource where(Type = const(Room));
            ValidateTableRelation = true;

            trigger OnValidate()
            var
                Room: Record Resource;
            begin
                Room.Get("House No");
                Room.TestField(Name);
                Room.TestField("Unit Price");
                "House Name" := Room.Name;
                "Cost Per Unit" := Room."Unit Price";
            end;
        }
        field(4; "House Name"; Text[100])
        {
            Caption = 'House Name';
            Editable = false;

        }
        field(5; "Cost Per Unit"; Decimal)
        {
            Caption = 'Cost Per Unit';
            Editable = false;
        }
        field(6; "No of Nights"; Integer)
        {
            Caption = 'No of Nights';
            MinValue = 0;
            trigger OnValidate()
            begin
                "Line Total" := "No of Nights" * "Cost Per Unit"
            end;
        }
        field(7; "Line Total"; Decimal)
        {
            Caption = 'Line Total';
            Editable = false;
        }


    }

    keys
    {
        key(PK; "Booking No", "Line No")
        {
            Clustered = true;
        }
    }

}