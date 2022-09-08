/// <summary>
/// Table Radio Show Type (ID 50001).
/// </summary>
table 50001 "Radio Show Type"
{
 LookupPageId = "Radio Show Type";
 DrillDownPageId = "Radio Show Type";
 DataClassification = ToBeClassified;
 
 fields
 {
  field(1;Code; Code[20])
  {
   Caption = 'Code';
   DataClassification = ToBeClassified;
  }
   field(10;Description; Text[50])
  {
   Caption = 'Description';
   DataClassification = ToBeClassified;
  }
 }
 
 keys
 {
  key(PK; Code){}
 }
 
}