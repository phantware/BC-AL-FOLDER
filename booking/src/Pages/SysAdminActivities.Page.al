/// <summary>
/// Page System Admin Activities (ID 50005).
/// </summary>
page 50005 "System Admin Activities"
{
    Caption = 'Activities';
    PageType = CardPart;
    SourceTable = "System Admin Cue";
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            cuegroup(Group1)
            {

                CuegroupLayout = Wide;
                ShowCaption = false;
                field("Sales This Month"; Rec."Sales This Month")
                {
                    ToolTip = 'Specifies the field for the sales done this month';
                    ApplicationArea = Suite;
                    DrillDownPageId = "Customer Ledger Entries";
                }
                field("Total No of Minutes Logged On"; Rec."Total No of Minutes Logged On")
                {
                    ToolTip = 'Specifies the field for total number of minutes logged on';
                    ApplicationArea = Suite;
                    DrillDownPageId = "User Time Registers";
                }
                field("Total No of Minutes This Month"; Rec."Total No of Minutes This Month")
                {
                    ToolTip = 'Specifies the field for the total no of minutes this month';
                    ApplicationArea = Suite;
                    DrillDownPageId = "Customer Ledger Entries";
                }
            }
            cuegroup(UsersInfo)
            {
                field("No of Users Logged On"; Rec."No of Users Logged On")
                {
                    ToolTip = 'No of users logged on';
                    ApplicationArea = Suite;
                    DrillDownPageId = "Concurrent Session List";
                }
                field("No of Entries Posted Today"; Rec."No of Entries Posted Today")
                {
                    ToolTip = 'Specifies the field for number of entries posted';
                    ApplicationArea = Suite;
                    DrillDownPageId = "General Ledger Entries";
                }
                field("No of Approved Entries"; Rec."No of Approved Entries")
                {
                    ToolTip = 'Specifies the field for the total number of approved entries';
                    ApplicationArea = Suite;
                    DrillDownPageId = "Approval Entries";
                }
            }
            cuegroup(Phantware)
            {
                actions
                {
                    action(HomePage)
                    {
                        ApplicationArea = Basic, Suite;
                        Image = TileViolet;

                        trigger OnAction()
                        begin
                            Hyperlink('https://www.phantware.tech');
                        end;
                    }
                }
            }
        }
    }
    actions
    {

        area(Processing)
        {
            action("Set Up Cues")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Set Up Cues';
                Image = Setup;
                ToolTip = 'Set up the cues (status tiles) related to the role.';

                trigger OnAction()
                var
                    CuesAndKpis: Codeunit "Cues And KPIs";
                    CuesRecordRef: RecordRef;
                begin
                    CuesRecordRef.GetTable(Rec);
                    CuesAndKpis.OpenCustomizePageForCurrentUser(CuesRecordRef.Number);
                end;
            }
        }
    }


    trigger OnOpenPage()
    begin
        if not rec.get then begin
            rec.Init();
            rec.Insert()
        end;
    end;

    trigger OnAfterGetCurrRecord()
    begin
        rec."Total No of Minutes This Month" := rec.GetLoggedOnMinutesThisMonth();
        rec."No of Entries Posted Today" := rec.GetTheNoOfPostedEntries();
        rec."Sales This Month" := rec.CalcSalesThisMonth();
    end;
}