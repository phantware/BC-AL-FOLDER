/// <summary>
/// Table Booking (ID 50000).
/// </summary>
table 50000 Booking
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Booking No."; Code[10])
        {
            Caption = 'Booking No.';
            Editable = false;
            trigger OnValidate()
            begin
                if "No." <> xRec."No." then begin
                    SalesSetup.Get();
                    NoSeriesMgt.TesManual(SalesSetup."Booking Nos.");
                    "No. Series" := '';
                end;
            end;
        }
        field(2; Customer; Code[10])
        {
            Caption = 'Customer';
            TableRelation = Customer;
        }
        field(3; "Customer Name"; Text[100])
        {
            Caption = 'Customer Name';
            Editable = false;
        }
        field(4; "DateTime Created"; DateTime)
        {
            Caption = 'DateTime Created';
            Editable = false;
        }
        field(5; "Created By"; Code[30])
        {
            Caption = 'Created By';
            Editable = false;
        }
        field(6; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(7; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = ToBeClassified;
        }
        field(8; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = Open,Pending,Approved,Rejected,Posted;
        }

    }

    keys
    {
        key(PK; "Booking No.")
        {
            Clustered = true;
        }
    }

}