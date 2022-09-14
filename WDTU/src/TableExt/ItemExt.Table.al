/// <summary>
/// TableExtension Item (ID 50000) extends Record Item.
/// </summary>
tableextension 50000 Item extends Item
{
    fields
    {
        field(50000; "Publisher Code"; code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(50101; "ACSAP ID"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50102; Duration; Duration)
        {
            DataClassification = ToBeClassified;
        }
        field(50103; "Data Format"; Option)
        {
            OptionMembers = ,Vinyl,CD,MP3,PSA,Advertisement;
            DataClassification = ToBeClassified;
        }
        field(50104; "MP3 Location"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
    }

}