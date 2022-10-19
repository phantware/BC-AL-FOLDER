/// <summary>
/// Page System Admin Role Center (ID 50003).
/// </summary>
page 50003 "System Admin Role Center"
{
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {

        }
    }

    actions
    {
        area(Creation)
        {
            action(ActionBarAction)
            {
                // RunObject = Page ObjectName;
            }
        }
        area(Sections) // We have Navigation Bat
        {
            group("Group1")
            {
                Caption = 'Users';
                action(User)
                {
                    RunObject = Page Users;
                    ApplicationArea = Basic, Suite;
                }
                action("User Time Register")
                {
                    RunObject = Page "User Time Registers";
                    ApplicationArea = Basic, Suite;
                }
                action(Permissions)
                {
                    RunObject = Page "Permission Sets";
                    ApplicationArea = Basic, Suite;
                }
                action("User Groups")
                {
                    RunObject = Page "User Groups";
                    ApplicationArea = Basic, Suite;
                }
            }
            group("Group 2")
            {
                Caption = 'Workflows';
                group(Workflow)
                {
                    action(Workflows)
                    {
                        RunObject = page Workflows;
                        ApplicationArea = Basic, Suite;
                    }
                    action("Approval User Setup")
                    {
                        RunObject = page "Approval User Setup";
                        ApplicationArea = Basic, Suite;
                    }
                    action("Workflow User Group")
                    {

                        RunObject = page "Workflow User Group";
                        ApplicationArea = Basic, Suite;
                    }
                    action("Workflow Table Relations")
                    {
                        RunObject = page "Workflow - Table Relations";
                        ApplicationArea = Basic, Suite;
                    }
                }
            }
        }
        area(Embedding) // We have Navigation Menu
        {
            action("User Setup")
            {
                RunObject = Page "User Setup";
                ApplicationArea = Basic, Suite;
            }
            action(Sessios)
            {
                RunObject = page "Concurrent Session List";
                ApplicationArea = Basic, Suite;
            }
            action("Change Log Entries")
            {
                RunObject = page "Change Log Entries";
                ApplicationArea = Basic, Suite;
            }
        }
    }
}

profile "System Administrator"
{
    Caption = 'System Administrator';
    RoleCenter = "System Admin Role Center";
}