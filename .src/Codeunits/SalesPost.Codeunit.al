codeunit 70351 SalesPostWarning
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostSalesDoc', '', false, false)]
    local procedure SalesWarning(var SalesHeader: Record "Sales Header")
    begin
        if not Confirm('La fecha de registro es: %1, Confirma que desea continuar?', false, SalesHeader."Posting Date") then
            Error('Fecha de registro no confirmada');
    end;
}