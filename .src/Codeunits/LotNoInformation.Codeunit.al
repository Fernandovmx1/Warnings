codeunit 70352 "BSS Lot No. Information"
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::"Lot No. Information", 'OnAfterInsertEvent', '', false, false)]
    local procedure CompleteInformation(var Rec: Record "Lot No. Information"; RunTrigger: Boolean)
    var
        TrackingSpecificationL: Record "Tracking Specification";
        ItemL: Record Item;
    begin
        TrackingSpecificationL.SetRange("Lot No.", Rec."Lot No.");
        TrackingSpecificationL.SetRange("Item No.", Rec."Item No.");
        If TrackingSpecificationL.FindFirst() then
            Rec."CCS Expiration Date" := TrackingSpecificationL."Expiration Date";
        If ItemL.get(Rec."Item No.") then
            Rec.Description := ItemL.Description;
        Rec.Modify();
    end;
}