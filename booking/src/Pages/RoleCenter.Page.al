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
            part(SystemAdminHeadline; "Headline RC System Admin")
            {
                Caption = 'System Admin Headline';
                ApplicationArea = Basic, Suite;
            }
            part(SystemAdminActivities; "System Admin Activities")
            {
                ApplicationArea = Basic, Suite;
            }
            part("User Task Activities"; "User Tasks Activities")
            {
                ApplicationArea = Basic, Suite;
            }
            part("Emails"; "Email Activities")
            {
                ApplicationArea = Basic, Suite;
            }
            part(ApprovalActivities; "Approvals Activities")
            {
                ApplicationArea = Basic, Suite;
            }
            part(MyAccounts; "My Accounts")
            {
                ApplicationArea = Basic, Suite;
            }
            part(Customers; "My Customers")
            {
                ApplicationArea = Basic, Suite;
            }
            part(Vendors; "My Vendors")
            {
                ApplicationArea = Basic, Suite;
            }
            part(Items; "My Items")
            {
                ApplicationArea = Basic, Suite;
            }
            group(Control1900724708)
            {
                ShowCaption = false;
            }
            part(Control1020027; "Finance Performance")
            {
                ApplicationArea = Basic, Suite;
            }
            part(Control9; "Help And Chart Wrapper")
            {
                ApplicationArea = Basic, Suite;
            }
            part(Control100; "Cash Flow Forecast Chart")
            {
                ApplicationArea = Basic, Suite;
            }
            part(Control108; "Report Inbox Part")
            {
                AccessByPermission = TableData "Report Inbox" = IMD;
                ApplicationArea = Basic, Suite;
            }
            part(Control122; "Power BI Embedded Report Part")
            {
                ApplicationArea = Basic, Suite;
            }
            // part(Control1901377608; MyNotes)
            // {
            //     ApplicationArea = Basic, Suite;
            // }

        }
    }

    actions
    {
        area(Creation)  // Area of creation appears on the righ side of the page and enable you 
                        // to create new items, it opens a card page
        {
            action(NewUser)
            {
                Caption = 'User';
                RunObject = page "User Card";
                ApplicationArea = Basic, Suite;
                // RunObject = Page ObjectName;
            }
            action(NewWorkflow)
            {
                Caption = 'Workflow';
                RunObject = page Workflow;
                ApplicationArea = Basic, Suite;
            }
        }
        area(Processing) // It enables you to open something like a journal etc
        {
            action(NewJoural)
            {
                Caption = 'Payment Recon Journal';
                RunObject = page "Payment Reconciliation Journal";
                ApplicationArea = Basic, Suite;
            }
        }
        area(Reporting) // This is used for reporting purpose
        {
            action(GLRegisters)
            {
                Caption = 'GL Registers';
                RunObject = report "Delete Empty G/L Registers";
                ApplicationArea = Basic, Suite;
            }
        }
        area(Sections) // We have Navigation Bar
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
            action(Sessions)
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