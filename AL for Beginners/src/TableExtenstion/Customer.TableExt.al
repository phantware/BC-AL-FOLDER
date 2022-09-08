/// <summary>
/// TableExtension MNB Customer (ID 50000) extends Record Customer.
/// </summary>
tableextension 50000 "MNB Customer" extends Customer
{
 fields
 {
  field(50000; "MNB Bonuses"; Integer)
  {
   Caption = 'Bonuses';
   FieldClass = FlowField;
   CalcFormula = count("MNB Bonus Header" where ("Customer No." = field("No.")));
   Editable = false;
  }
  
 }
 var
  BonusExitsErr: Label 'You cannot delete Customer %1 because there is at least one Bonus assisgned.';

 trigger OnBeforeDelete()
 var
  MNBBonusHeader: Record "MNB Bonus Header";
  begin
   MNBBonusHeader.SetRange("Customer No.","No.");
   if not MNBBonusHeader.IsEmpty() then
    Error(BonusExitsErr,"No.");
  end;

}