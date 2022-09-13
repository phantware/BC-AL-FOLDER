/// <summary>
/// Codeunit MyCodeunit (ID 50100).
/// </summary>
codeunit 50100 TestCodeUnit
{
    trigger OnRun()
    begin
        numb1 := 12;
        numb2 := 13;
        add(numb1, numb2);
    end;

    /// <summary>
    /// add.
    /// </summary>
    /// <param name="numb1">Integer.</param>
    /// <param name="numb2">Integer.</param>
    procedure add(numb1: Integer; numb2: Integer)
    var
        tot: Integer;
    begin
        tot := numb1 + numb2;
        Message('Sum of two numbers is %1, %2, %3', numb1, numb2, tot);
    end;

    var
        numb1: Integer;
        numb2: Integer;

}