/// <summary>
/// Table Playlist Item Rate (ID 50004).
/// </summary>
table 50004 "Playlist Item Rate"
{
    DataClassification = ToBeClassified;
    Caption = 'Playlist Item Rate';

    fields
    {
        field(1; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionMembers = Vendor,Customer;
            DataClassification = ToBeClassified;
        }
        field(2; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            DataClassification = ToBeClassified;
            TableRelation = IF ("Source Type" = const(Vendor)) Vendor."No."
            else
            IF ("Source Type" = const(Customer)) Customer."No.";
        }
        field(30; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = ToBeClassified;
        }
        field(40; "Start Time"; Time)
        {
            Caption = 'Start Time';
            DataClassification = ToBeClassified;
        }
        field(50; "End Time"; Time)
        {
            Caption = 'End Time';
            DataClassification = ToBeClassified;
        }
        field(60; "Rate Amount"; Decimal)
        {
            Caption = 'Rate Amount';
            DataClassification = ToBeClassified;
        }
        field(70; "Publisher Code"; Code[10])
        {
            Caption = 'Publisher Code';
            DataClassification = ToBeClassified;
        }

    }

    // keys
    // {
    //     key(PK; "MyField")
    //     {
    //         Clustered = true;
    //     }
    // }

}