/// <summary>
/// Table System Admin Cue (ID 50002).
/// </summary>
table 50002 "System Admin Cue"
{
    Caption = 'System Admin Cue';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = ToBeClassified;
        }
        field(2; "No of Users Logged On"; Integer)
        {
            Caption = 'No of Users Logged On';
            FieldClass = FlowField;
            CalcFormula = count("Active Session" where("Client Type" = const("Web Client")));
        }
        field(3; "Total No of Minutes Logged On"; Decimal)
        {
            Caption = 'Total No of Minutes Logged On';
            FieldClass = FlowField;
            CalcFormula = sum("User Time Register".Minutes);
        }
        field(4; "Total No of Minutes This Month"; Decimal)
        {
            Caption = 'Total No of Minutes This Month';
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
    /// <summary>
    /// GetLoggedOnMinutesThisMonth.
    /// </summary>
    /// <returns>Return variable MonthlyMinutes of type Decimal.</returns>
    procedure GetLoggedOnMinutesThisMonth() MonthlyMinutes: Decimal
    var
        UserTimeReg: Record "User Time Register";
    begin
        UserTimeReg.Reset();
        UserTimeReg.SetRange(Date, CalcDate('-CM', Today), CalcDate('CM', Today));
        if UserTimeReg.FindFirst() then begin
            UserTimeReg.CalcSums(Minutes);
            MonthlyMinutes := UserTimeReg.Minutes
        end;
    end;
}