/// <summary>
/// Page Radio Show Type (ID 50002).
/// </summary>
page 50002 "Radio Show Type"
{
 Caption = 'Radio Show Type';
 PageType = List;
 UsageCategory = Lists;
 ApplicationArea = All;
 SourceTable = "Radio Show Type";
 
 layout
 {
  area(Content)
  {
   repeater(Group)
   {
    field(Code;Rec.Code)
    {
     ApplicationArea = Basic;
    }
    field(Description;Rec.Description)
    {
     ApplicationArea = Basic;
    }
    
   }
  }
  area(Factboxes)
  {
   
  }
 }
 
 actions
 {
  area(Processing)
  {
   action(ActionName)
   {
    ApplicationArea = All;
    
    trigger OnAction();
    begin
     
    end;
   }
  }
 }
}