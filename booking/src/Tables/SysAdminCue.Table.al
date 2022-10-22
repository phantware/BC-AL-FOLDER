/// <summary>
/// Table System Admin Cue (ID 50002).
/// </summary>
table 50002 "System Admin Cue"
{
    Caption = 'System Admin Cue';
    DataClassification = CustomerContent;

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
        field(5; "No of Entries Posted Today"; Integer)
        {
            Caption = 'No of EEntries Posted Today';
            DataClassification = ToBeClassified;
        }
        field(6; "No of Approved Entries"; Integer)
        {
            Caption = 'No of Approved Entries';
            FieldClass = FlowField;
            CalcFormula = count("Approval Entry" where(Status = const(Approved)));
        }
        field(7; "Sales This Month"; Decimal)
        {
            Caption = 'Sales This Month';
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

    /// <summary>
    /// GetTheNoOfPostedEntries.
    /// </summary>
    /// <returns>Return variable PostedEntriesToday of type Integer.</returns>
    procedure GetTheNoOfPostedEntries() PostedEntriesToday: Integer
    var
        GLEntry: Record "G/L Entry";
    begin
        GLEntry.Reset();
        GLEntry.SetRange("Posting Date", Today);
        PostedEntriesToday := GLEntry.Count()
    end;

    /// <summary>
    /// CalcSalesThisMonth.
    /// </summary>
    /// <returns>Return variable Amount of type Decimal.</returns>
    procedure CalcSalesThisMonth() Amount: Decimal
    var
        CustLedgEntry: Record "Cust. Ledger Entry";
        CustLedgEntrySales: Query "Cust. Ledg. Entry Sales";
    begin
        // CustLedgEntrySales.SetRange(DocumentTypeFilter, CustLedgEntry."Document Type"::Invoice);
        // CustLedgEntrySales.SetRange(PostingDateFilter, CalcDate('<-CM>', WorkDate()));
        CustLedgEntrySales.Open();
        if CustLedgEntrySales.Read() then
            // Amount := CustLedgEntrySales.SumSalesLcy;
        CustLedgEntrySales.Close();

    end;
}