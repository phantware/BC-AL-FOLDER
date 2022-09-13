/// <summary>
/// Page Arithmetic (ID 50101).
/// </summary>
page 50101 Arithmetic
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Arithmetic Operation';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Enter the values';
                field(Value1; Value1)
                {
                    ApplicationArea = All;

                }
                field(Value2; Value2)
                {
                    ApplicationArea = All;
                }
            }

            group(Output)
            {
                Caption = 'Result of the operation';
                field(addition; addition)
                {
                    ApplicationArea = All;
                }
                field(subtraction; subtraction)
                {
                    ApplicationArea = All;
                }
                field(multiplication; multiplication)
                {
                    ApplicationArea = All;
                }
                field(division; division)
                {
                    ApplicationArea = All;
                }
                field(divint; divint)
                {
                    ApplicationArea = All;
                }
                field(modulus; modulus)
                {
                    ApplicationArea = All;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Add)
            {
                ApplicationArea = All;
                Caption = 'Addition';
                ToolTip = 'Click to execute the code';
                Image = ExecuteBatch;

                trigger OnAction()
                begin
                    addition := Value1 + Value2;
                    // subtraction := Value1 - Value2;
                    // multiplication := Value1 * Value2;
                    // division := Value1 / Value2;
                    // modulus := Value1 MOD Value2;
                    // divint := Value1 DIV Value2;

                end;
            }
            action(Subtract)
            {
                ApplicationArea = All;
                Caption = 'Subtraction';
                ToolTip = 'Click to execute the code';
                Image = ExecuteBatch;

                trigger OnAction()
                begin
                    // addition := Value1 + Value2;
                    subtraction := Value1 - Value2;
                    // multiplication := Value1 * Value2;
                    // division := Value1 / Value2;
                    // modulus := Value1 MOD Value2;
                    // divint := Value1 DIV Value2;

                end;
            }
            action(Multiply)
            {
                ApplicationArea = All;
                Caption = 'Multiplication';
                ToolTip = 'Click to execute the code';
                Image = ExecuteBatch;

                trigger OnAction()
                begin
                    // addition := Value1 + Value2;
                    // subtraction := Value1 - Value2;
                    multiplication := Value1 * Value2;
                    // division := Value1 / Value2;
                    // modulus := Value1 MOD Value2;
                    // divint := Value1 DIV Value2;

                end;
            }
            action(Divide)
            {
                ApplicationArea = All;
                Caption = 'Division';
                ToolTip = 'Click to execute the code';
                Image = ExecuteBatch;

                trigger OnAction()
                begin
                    // addition := Value1 + Value2;
                    // subtraction := Value1 - Value2;
                    // multiplication := Value1 * Value2;
                    division := Value1 / Value2;
                    // modulus := Value1 MOD Value2;
                    // divint := Value1 DIV Value2;

                end;
            }
            action(Mod)
            {
                ApplicationArea = All;
                Caption = 'Modulus';
                ToolTip = 'Click to execute the code';
                Image = ExecuteBatch;

                trigger OnAction()
                begin
                    // addition := Value1 + Value2;
                    // subtraction := Value1 - Value2;
                    // multiplication := Value1 * Value2;
                    // division := Value1 / Value2;
                    modulus := Value1 MOD Value2;
                    // divint := Value1 DIV Value2;

                end;
            }
            action(Div)
            {
                ApplicationArea = All;
                Caption = 'Divint';
                ToolTip = 'Click to execute the code';
                Image = ExecuteBatch;

                trigger OnAction()
                begin
                    // addition := Value1 + Value2;
                    // subtraction := Value1 - Value2;
                    // multiplication := Value1 * Value2;
                    // division := Value1 / Value2;
                    // modulus := Value1 MOD Value2;
                    divint := Value1 DIV Value2;

                end;
            }
        }
    }

    var
        Value1: Integer;
        Value2: Integer;
        addition: Integer;
        subtraction: Integer;
        multiplication: Integer;
        division: Decimal;
        divint: Integer;
        modulus: Integer;



}