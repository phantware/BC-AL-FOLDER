/// <summary>
/// Table MNB Bonus Line (ID 50110).
/// </summary>
table 50110 "MNB Bonus Line"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'MyField';
            DataClassification = CustomerContent;

        }
        field(2; "Type"; Enum "MNB Bonus Type")

        {
            Caption = 'Type';
            DataClassification = CustomerContent;
        }
        field(3; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = CustomerContent;
            TableRelation = if (Type = filter(Item)) Item;
        }
        field(4; "Bonus Perc."; Integer)
        {
            Caption = 'Bonus Perc.';
            DataClassification = CustomerContent;
            MinValue = 0;
            MaxValue = 100;
        }
    }

    keys
    {
        key(PK; "Document No.", Type, "Item No.")
        {
            Clustered = true;
        }
    }
    
}