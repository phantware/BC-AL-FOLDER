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
                if "Booking No." <> xRec."Booking No." then begin
                    SalesSetup.Get();
                    NoSeriesMgt.TestManual(SalesSetup."Booking Nos.");
                    "No. Series" := '';
                end;
            end;
        }
        field(2; Customer; Code[10])
        {
            Caption = 'Customer';
            TableRelation = Customer;

            trigger OnValidate()
            var
                Cust: Record Customer;
            begin
                Cust.Get(Customer);
                "Customer Name" := Cust.Name
            end;
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
        field(8; "Total Amount"; Decimal)
        {
            Caption = 'Total Amount';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("Booking Line"."Line Total" where("Booking No" = field("Booking No.")));
        }
        field(9; Status; Option)
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

    var
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if "Booking No." = '' then begin
            SalesSetup.Get();
            SalesSetup.TestField("Booking Nos.");
            NoSeriesMgt.InitSeries(SalesSetup."Booking Nos.", xRec."No. Series", 0D, "Booking No.", "No. Series");
        end;
        "Created By" := UserId;
        "DateTime Created" := CurrentDateTime;
    end;

}