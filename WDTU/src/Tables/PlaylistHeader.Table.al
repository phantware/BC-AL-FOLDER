/// <summary>
/// Table Playlist Header (ID 50002).
/// </summary>
table 50002 "Playlist Header"
{
    DataClassification = ToBeClassified;
    Caption = 'Playlist Header';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(10; "Radio Show No."; Code[20])
        {
            Caption = 'Radio Show No.';
            DataClassification = ToBeClassified;
        }
        field(20; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(30; "Broadcast Date"; Date)
        {
            Caption = 'Broadcast Date';
            DataClassification = ToBeClassified;
        }
        field(40; Duration; Duration)
        {
            Caption = 'Duration';
            DataClassification = ToBeClassified;
        }
        field(50; "Start Time"; Time)
        {
            Caption = 'Start Time';
            DataClassification = ToBeClassified;
        }
        field(60; "End Time"; Time)
        {
            Caption = 'End Time';
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

}