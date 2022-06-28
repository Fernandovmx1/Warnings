pageextension 70350 BSSCustomerList extends "Customer List"
{
    layout
    {
        addafter("Phone No.")
        {
            field("E-Mail"; Rec."E-Mail")
            {
                ApplicationArea = All;
            }
        }
    }
}