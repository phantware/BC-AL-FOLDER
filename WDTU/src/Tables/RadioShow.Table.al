/// <summary>
/// Table Radio Show (ID 50000).
/// </summary>
table 50000 "Radio Show"
{
    DataClassification = CustomerContent;
    Caption = 'Radio Show';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(10; "Radio Show Type"; Code[10])
        {
            Caption = 'Radio Show Type';
            DataClassification = CustomerContent;
            TableRelation = "Radio Show Type";
        }
        field(20; "Name"; Text[50])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(40; "Run Time"; Duration)
        {
            Caption = 'Run Time';
            DataClassification = CustomerContent;
        }
        field(50; "Host Code"; Code[20])
        {
            Caption = 'Host Code';
            DataClassification = CustomerContent;
        }
        field(6; "Host Name"; Text[50])
        {
            Caption = 'Host Name';
            DataClassification = CustomerContent;
        }
        field(100; "Average Listeners"; Decimal)
        {
            Caption = 'Average Listeners';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average("Listenership Entry"."Listener Count" where("Radio Show No." = field("No."), Date = field("Date Filter")));

        }
        field(110; "Audience Share"; Decimal)
        {
            Caption = 'Audience Share';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average("Listenership Entry"."Audience Share" where("Radio Show No." = field("No."), Date = field("Date Filter")));
        }
        field(120; "Advertising Revenue"; Decimal)
        {
            Caption = 'Advertising Revenue';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("Radio Show Entry"."Fee Amount" where("Radio Show No." = field("No."), "Date Format" = filter(Advertisement)));
        }
        field(130; "Royalty Cost"; Decimal)
        {
            Caption = 'Royalty Cost';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum("Radio Show Entry"."Fee Amount" where("Radio Show No." = field("No."), "Date Format" = filter(Vinyl | CD | MP3)));
        }
        field(1000; Frequency; Option)
        {
            Caption = 'Frequency';
            OptionMembers = Hourly,Daily,Weekly,Monthly;
            DataClassification = CustomerContent;
        }
        field(1010; "PSA Frequency Quantity"; Integer)
        {
            Caption = 'PSA Frequency Quantity';
            DataClassification = CustomerContent;
        }
        field(1020; "Ads Planned Quantity"; Integer)
        {
            Caption = 'Ads Planned Quantity';
            DataClassification = CustomerContent;
        }
        field(1030; "New Required"; Boolean)
        {
            Caption = 'New Required';
            DataClassification = CustomerContent;
            InitValue = true;
        }
        field(1040; "New Duration"; Duration)
        {
            Caption = 'New Duration';
            DataClassification = CustomerContent;
        }
        field(1050; "Sports Required"; Boolean)
        {
            Caption = 'Sports Required';
            DataClassification = CustomerContent;
            InitValue = true;
        }
        field(1060; "Sports Duration"; Duration)
        {
            Caption = 'Sports Duration';
            DataClassification = CustomerContent;
        }
        field(1070; "Weather Required"; Boolean)
        {
            Caption = 'Weather Required';
            DataClassification = CustomerContent;
            InitValue = true;
        }
        field(1080; "Weather Duration"; Duration)
        {
            Caption = 'Weather Duration';
            DataClassification = CustomerContent;
        }
        field(1090; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(PK; "No.") { }
        key(Name; Name) { }
        key(HostName; "Host Name") { }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Name, "Host Name") { }
        fieldgroup(Brick; "No.", Name, "Host Name") { }

    }

}