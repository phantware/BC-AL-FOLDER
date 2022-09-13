/// <summary>
/// Table Publisher (ID 50007).
/// </summary>
table 50007 Publisher
{
    DataClassification = ToBeClassified;
    Caption = 'Publisher';

    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
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