/// <summary>
/// Table Playlist Line (ID 50003).
/// </summary>
table 50003 "Playlist Line"
{
    DataClassification = ToBeClassified;
    Caption = 'Playlist Line';

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = ToBeClassified;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }
        field(10; Type; Option)
        {
            Caption = 'Type';
            OptionMembers = ,Resource,Show,Item;
            DataClassification = ToBeClassified;
        }
        field(20; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(30; "Data Format"; Option)
        {
            Caption = 'Data Format';
            OptionMembers = ,Vinyl,CD,MP3,PSA,Advertisement;
            DataClassification = ToBeClassified;
        }
        field(40; Publisher; Code[10])
        {
            Caption = 'Publisher';
            DataClassification = ToBeClassified;
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(60; Duration; Duration)
        {
            Caption = 'Duration';
            DataClassification = ToBeClassified;
        }
        field(70; "Start Time"; Time)
        {
            Caption = 'Start Time';
            DataClassification = ToBeClassified;
        }
        field(80; "End Time"; Time)
        {
            Caption = 'End Time';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Document No.")
        {
            Clustered = true;
        }
    }

}