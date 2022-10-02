pageextension 70351 BSSCustomerCard extends "Customer Card"
{
    layout
    {
        addafter("Post Code")
        {
            field(BSSCounty; Rec.County)
            {
                ApplicationArea = All;
            }
        }
    }
}