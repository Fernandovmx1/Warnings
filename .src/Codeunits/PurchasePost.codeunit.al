codeunit 70350 PurchasePostWarning
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", 'OnBeforePostPurchaseDoc', '', false, false)]
    local procedure SalesWarning(var PurchaseHeader: Record "Purchase Header")
    begin
        //If NOT PurchaseHeader.ValidateWarning then
        if not Confirm('La fecha de registro es: %1, Confirma que desea continuar?', false, PurchaseHeader."Posting Date") then
            Error('Fecha de registro no confirmada');
    end;
}