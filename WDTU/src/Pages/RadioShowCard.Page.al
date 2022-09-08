/// <summary>
/// Page Radio Show Card (ID 50001).
/// </summary>
page 50001 "Radio Show Card"
{
 Caption = 'Radio Show Card';
 PageType = Card;
 ApplicationArea = All;
 UsageCategory = Administration;
 SourceTable = "Radio Show";
 
 layout
 {
  area(Content)
  {
   group(General)
   {
    field("No."; Rec."No.")
    {
     ApplicationArea = All;
    }
    field("Radio Show Type"; Rec."Radio Show Type")
    {
     ApplicationArea = All;
    }
    field("Name"; Rec."Name")
    {
     ApplicationArea = All;
    }
   field("Run Time"; Rec."Run Time")
    {
     ApplicationArea = All;
    }
    field("Host Code"; Rec."Host Code")
    {
     ApplicationArea = All;
    }
    field("Host Name"; Rec."Host Name")
    {
     ApplicationArea = All;
    }
    field("Average Listeners"; Rec."Average Listeners")
    {
     ApplicationArea = All;
    }
    field("Audience Share"; Rec."Audience Share")
    {
     ApplicationArea = All;
    }
    field("Advertising Revenue"; Rec."Advertising Revenue")
    {
     ApplicationArea = All;
    }
    field("Royalty Cost"; Rec."Royalty Cost")
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
   action(ActionName)
   {
    ApplicationArea = All;
    
    trigger OnAction()
    begin
     
    end;
   }
  }
 }
}