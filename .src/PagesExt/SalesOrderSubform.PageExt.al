pageextension 70353 "BSS Sales Order Subform" extends "Sales Order Subform"
{
    layout
    {
        addbefore("Total Amount Excl. VAT")
        {
            field("BSS Total Quantity"; TotalSalesLine.Quantity)
            {
                ApplicationArea = Basic, Suite;
                DecimalPlaces = 0 : 5;
                Caption = 'Cantidad Total';
                Editable = false;
                ToolTip = 'Specifies the sum of the quantity on all lines in the document.';
            }
        }
    }
}