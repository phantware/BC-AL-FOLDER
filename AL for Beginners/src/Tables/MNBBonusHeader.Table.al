/// <summary>
/// Table MNB Bonus Header (ID 50100).
/// </summary>
table 50100 "MNB Bonus Header"
{
    Caption = 'Bonus';
    DataClassification = CustomerContent;
    DrillDownPageId = "MNB Bonus List";
    LookupPageId = "MNB Bonus List";

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
            
            //Add number fron the setup we made for number series
            trigger OnValidate()
            begin
            if "No." <> xRec."No." then begin
                BonusSetup.Get();
                NoSeriesMgmt.TestManual(BonusSetup."Bonus Nos.");
                "No Series" := '';
            end;
            end;
        }
        field(2; "Customer No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer No.';
            TableRelation = "Customer";

        }
        field(3; "Starting Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Starting Date';
        }
        field(4; "Ending Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Ending Date';
        }
        field(5; Status; Enum "MNB Bonus Status")
        {
            DataClassification = CustomerContent;
            Caption = 'Status';
        }

        // Creating field for number series
        field(100; "No Series"; Code[20])
        {
            Caption = 'No Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    // Variables to start working with the No. Series
    var
        BonusSetup: Record "MNB Bonus Setup";
        NoSeriesMgmt: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if "No." = '' then begin
            BonusSetup.Get();
            BonusSetup.TestField("Bonus Nos.");
            NoSeriesMgmt.InitSeries(BonusSetup."Bonus Nos.",xRec."No Series",0D,Rec."No.",Rec."No Series");
        end;
    end;
}