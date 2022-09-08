/// <summary>
/// s
/// </summary>
page 50000 "MNB Bonus Setup"
{
    Caption = 'Bonus Setup';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "MNB Bonus Setup";
    DeleteAllowed = false;
    InsertAllowed = false;

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                Caption = 'Numbering';
                field("Bonus Nos. "; Rec."Bonus Nos.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specify number series that will be used for bc';

                }
            }
        }
    }

    trigger OnOpenPage()

    begin

        Rec.Reset();

        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert()
        end;
    end;

}