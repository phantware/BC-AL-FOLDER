/// <summary>
/// Page TestPage (ID 50106).
/// </summary>
page 50106 TestPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    actions
    {
        area(Processing)
        {
            action(Addition)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    MyCodeUnit.run();
                end;
            }
        }
    }

    var
        MyCodeUnit: Codeunit TestCodeUnit;
}