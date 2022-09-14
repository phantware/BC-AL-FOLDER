/// <summary>
/// Table Radio Show Entry (ID 50005).
/// </summary>
table 50005 "Radio Show Entry"
{
    DataClassification = ToBeClassified;
    Caption = 'Radio Show Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = ToBeClassified;
        }
        field(10; "Radio Show No."; Code[20])
        {
            Caption = 'Radio Show No.';
            DataClassification = ToBeClassified;
        }
        field(20; Type; Option)
        {
            Caption = 'Type';
            OptionMembers = ,Resource,Show,Item;
            DataClassification = ToBeClassified;
        }
        field(30; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(40; "Date Format"; Option)
        {
            Caption = 'Date Format';
            OptionMembers = ,Vinyl,CD,MP3,PSA,Advertisement;
            DataClassification = ToBeClassified;
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(60; Date; Date)
        {
            Caption = 'Date';
            DataClassification = ToBeClassified;
        }
        field(70; Time; Time)
        {
            Caption = 'Time';
            DataClassification = ToBeClassified;
        }
        field(80; Duration; Duration)
        {
            Caption = 'Duration';
            DataClassification = ToBeClassified;
        }
        field(90; "Fee Amount"; Decimal)
        {
            Caption = 'Fee Amount';
            DataClassification = ToBeClassified;
        }
        field(100; "ACSAP ID"; Integer)
        {
            Caption = 'ACSAP ID';
            DataClassification = ToBeClassified;
        }
        field(120; "Publisher Code"; Code[10])
        {
            Caption = 'Publisher Code';
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key(Reporting; "Radio Show No.", Date)
        {
            SumIndexFields = "Fee Amount";
        }
        key(Reporting2; Type, "No.", Date)
        {
            SumIndexFields = "Fee Amount";
        }
    }

}