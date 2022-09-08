/// <summary>
/// PageExtension MNB Customer List (ID 50000) extends Record Customer List.
/// </summary>
pageextension 50000 "MNB Customer List" extends "Customer List"
{
 layout
 {
  addlast(Control1){
   field("MNB Bonuses"; Rec."MNB Bonuses")
   {
    ApplicationArea = All;
    ToolTip = 'Shows number of assigned bonuses to customer.';
   }
   
  }
 }
 actions{
  addlast(navigation){
   action(MNBBonueses){
    Caption = 'Bonuses';
    ApplicationArea =  All;
    Image = Discount;
    Promoted = true;
    PromotedCategory = Process;
    RunObject = page "MNB Bonus List";
    RunPageLink = "Customer No." = field("No.");
   }
  }
 }
}