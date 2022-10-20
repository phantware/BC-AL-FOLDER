/// <summary>
/// Page System Admin Headline (ID 50004).
/// </summary>
page 50004 "Headline RC System Admin"
{
    PageType = HeadlinePart;
    RefreshOnActivate = true; // This will refresh whe the user back from another page
    Caption = 'System Admin Headline';

    layout
    {
        area(content)
        {
            group(Greeting)
            {
                Visible = isGreetingTextVisible;
                ShowCaption = false;
                Editable = false;

                field(GreetingText; RCHeadlinePageCommon.GetGreetingText() + UserId)
                {
                    ApplicationArea = Basic, Suite;
                    Editable = false;
                }
            }
            group(Group2)
            {
                Visible = true;
                ShowCaption = false;
                field(LoggedOnUsers; StrSubstNo(LoggedOnUsers, GetNoOfActiveUsers()))
                {
                    ApplicationArea = Basic, Suite;
                    Editable = false;
                    DrillDown = true;

                    trigger OnDrillDown();
                    var
                    begin
                        Page.Run(Page::"Concurrent Session List");
                    end;
                }
                field(PTech; SiteLbl)
                {
                    ApplicationArea = Basic, Suite;
                    Editable = false;
                    DrillDown = true;
                    trigger OnDrillDown()
                    begin
                        Hyperlink('https://www.phantware.tech');
                    end;
                }

            }
        }
    }
    trigger OnOpenPage()
    begin
        RCHeadlinePageCommon.HeadlineOnOpenPage(Page::"Headline RC Security Admin");
        isGreetingTextVisible := RCHeadlinePageCommon.IsUserGreetingVisible()
    end;

    local procedure GetNoOfActiveUsers(): Integer
    var
        ActiveSession: Record "Active Session";
    begin
        ActiveSession.Reset();
        ActiveSession.SetRange("Client Type", ActiveSession."Client Type"::"Web Client");
        exit(ActiveSession.Count())
    end;

    var
        RCHeadlinePageCommon: Codeunit "RC Headlines Page Common";
        [InDataSet]
        isGreetingTextVisible: Boolean;

        SiteLbl: Label '<qualifier>The Site,</qualifier><payload>Visite the site.<emphasize>Phantware Technology</emphasize></payload>';

        LoggedOnUsers: Label '<qualifier>Users,</qualifier><payload>The number of logged on users <emphasize> %1 </emphasize></payload>';
}