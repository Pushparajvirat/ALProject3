report 50100 "Tax Invoice"
{
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Source/Layouts/SalesInvoiceNew1.rdl';
    Caption = 'Tax Invoice';
    UsageCategory = Administration;
    dataset
    {
        dataitem(salesheader; "Sales Invoice Header")
        {
            // DataItemTableView = SORTING("Document Type", "No.") WHERE("Document Type" = CONST(Quote));
            DataItemTableView = sorting("No.");
            RequestFilterFields = "No.";
            CalcFields = Amount, "Amount Including VAT";
            column(No_Header; "No.") { }
            column(LineCount; LineCount)
            {
            }
            column(ProformaLbl; ProformaLbl) { }
            column(ItemDes; ItemDes) { }
            column(Sales_Person_Name; "Salesperson Code") { }
            column(Invoice_Discount_Amount; "Invoice Discount Amount") { }
            column(Invoice_Discount_Value; "Invoice Discount Value") { }
            column(Sell_to_Contact; "Sell-to Contact") { }
            column(PaymntDelivryTerms; PaymntDelivryTerms) { }
            column(DeliveryVia; DeliveryVia) { }
            column(Location_Code; "Location Code") { }
            column(currencycode; currencycode) { }
            column(Currency_Code; "Currency Code") { }
            column(VAT_Registration_No_; CompanyInfo."Federal ID No.") { }
            column(CompanyInfoQST; CompanyInfo."QST Registration No.") { }
            column(Your_Reference; "Your Reference") { }
            column(Ship_to_Name; "Ship-to Name") { }
            column(Ship_to_Contact; "Ship-to Contact") { }
            column(Shipment_Date; format("Shipment Date", 0, '<Day,2>/<Month,2>/<Year4>')) { }
            column(CompanyInfoName; CompanyInfo.Name) { }
            column(CompanyInfoAddress; CompanyInfo.Address) { }
            column(CompanyInfoCity; CompanyInfo.City) { }
            column(CompanyInfoCountry; CompanyInfo."Country/Region Code") { }
            column(CompanyInfoPostCode; CompanyInfo."Post Code") { }
            column(CompanyInfoPhoneNo; CompanyInfo."Phone No.") { }
            column(CompanyInfoEmail; CompanyInfo."E-Mail") { }
            column(CompanyInfoFax; CompanyInfo."Fax No.") { }
            column(CompanyInfoHomePage; CompanyInfo."Home Page") { }
            column(CompanyInfoVATReg; CompanyInfo."VAT Registration No.") { }
            column(CompanyInfoPicture; CompanyInfo.Picture) { }
            column(Company_Bank_Account_Code; "Company Bank Account Code") { }
            column(Document_Date; format("Document Date", 0, '<Month Text,3> <Closing><Day,2>, <Year4>')) { }
            column(Sell_to_Customer_No_; "Sell-to Customer No.") { }
            column(Sell_to_Customer_Name; "Sell-to Customer Name") { }
            column(Sell_to_Address; "Sell-to Address") { }
            column(Sell_to_Address_2; "Sell-to Address 2") { }
            column(Sell_to_City; "Sell-to City") { }
            column(Sell_to_Country_Region_Code; "Sell-to Country/Region Code") { }
            column(Sell_to_Contact_No_; "Sell-to Contact No.") { }
            column(Sell_to_Phone_No_; "Sell-to Phone No.") { }
            column(Sell_to_Post_Code; "Sell-to Post Code") { }
            // column(Quote_Valid_Until_Date; format("Quote Valid Until Date", 0, '<Day,2>/<Month,2>/<Year4>')) { }
            column(Due_Date; format("Due Date", 0, '<Day,2>/<Month,2>/<Year4>')) { }
            // column(Promised_Delivery_Date; "Promised Delivery Date") { }
            // column(Requested_Delivery_Date; "Requested Delivery Date") { }
            column(Amount; Amount) { }
            column(Amount_Including_VAT; "Amount Including VAT") { }
            column(Work_Description; GetWorkDescription()) { }
            column(Order_No_; "Order No.") { }
            column(Quote_No_; "Quote No.") { }
            column(CompanyInfoHeaderImage; CompanyInfo.Picture) { }
            column(BankAccountNo; BankAccountNo) { }
            column(BankBranchNo; BankBranchNo) { }
            column(Subtotal_Lbl; SubtotalLbl)
            {
            }
            column(Total_Lbl; TotalLbl)
            {
            }
            column(InvoiceDiscountAmount_Lbl; InvDiscountAmtLbl)
            {
            }
            column(VATAmount_Lbl; VATAmtLbl)
            {
            }
            column(TotalAmountIncludingVAT; Format(TotalAmountInclVAT, 0, AutoFormat.ResolveAutoFormat("Auto Format"::AmountFormat, salesheader."Currency Code")))
            {
            }
            column(TotalIncludingVATText; TotalInclVATText)
            {
            }
            column(Posting_Date; "Posting Date") { }
            column(CompanyInfoBankAccount; CompanyInfo."Bank Account No.") { }
            column(CompanyInfoBrankNumber; CompanyInfo."Bank Branch No.") { }
            column(CompanyInfoBankName; CompanyInfo."Bank Name") { }

            dataitem("Sales Line"; "Sales Invoice Line")
            {
                DataItemLinkReference = salesheader;
                DataItemLink = "Document No." = field("No.");
                column(No_Line; "No.") { }
                column(Type; Type) { }
                column(Quantity; Quantity) { }
                column(Unit_of_Measure_Code; "Unit of Measure Code") { }
                column(Description; Description) { }
                column(Unit_Price; "Unit Price") { }
                column(Document_No_; "Document No.")
                {
                }

                column(Unit_Cost; "Unit Cost") { }
                column(VAT__; Vatpercent) { }
                column(Line_Discount_Amount; "Line Discount Amount") { }
                column(VAT_Base_Amount; "VAT Base Amount") { }
                column(TotalAmt; TotalAmt) { }
                column(VATAmt; VATAmt) { }
                column(Amt; Amt) { }
                column(LineDis; LineDis) { }
                column(LastAmt; LastAmt) { }
                column(Counter; Counter)
                {
                }
                column(Shipment_No_; ShippingNo) { }
                column(Inv__Discount_Amount; "Inv. Discount Amount") { }
                column(TotalInvoiceDiscountAmount; Format(TotalInvDiscAmount, 0, AutoFormat.ResolveAutoFormat("Auto Format"::AmountFormat, salesheader."Currency Code")))
                {
                }
                column(TotalSubTotalMinusInvoiceDiscount; Format(TotalSubTotal + TotalInvDiscAmount, 0, AutoFormat.ResolveAutoFormat("Auto Format"::AmountFormat, salesheader."Currency Code")))
                {
                }
                column(TotalVATAmount; Format(TotalAmountVAT, 0, AutoFormat.ResolveAutoFormat("Auto Format"::AmountFormat, salesheader."Currency Code")))
                {
                }
                column(TotalSubTotal; Format(TotalSubTotal, 0, AutoFormat.ResolveAutoFormat("Auto Format"::AmountFormat, salesheader."Currency Code")))
                {
                }

                column(TotalAmountExclInclVAT; Format(TotalAmountExclInclVATValue, 0, AutoFormat.ResolveAutoFormat("Auto Format"::AmountFormat, salesheader."Currency Code")))
                {
                }

                column(TotalExcludingVATText; TotalExclVATText)
                {
                }
                column(TotalText; TotalText)
                {
                }
                column(TotalNetAmount; Format(TotalAmount, 0, AutoFormat.ResolveAutoFormat("Auto Format"::AmountFormat, salesheader."Currency Code")))
                {
                }

                trigger OnAfterGetRecord()
                begin
                    VATAmt := 0;
                    Amt := 0;
                    TotalAmt := 0;
                    LineDis := 0;

                    Amt := (("Unit Price" * Quantity) - "Line Discount Amount");
                    // VATAmt := (Amt * "VAT %") / 100;
                    VATAmt := "Amount Including VAT" - Amount;
                    TotalAmt := Amt + VATAmt;
                    LineDis := "Inv. Discount Amount";
                    if (Type = Type::Item) Or (Type = Type::"Charge (Item)") Or (Type = Type::"G/L Account") Or (Type = Type::"Fixed Asset") then
                        Vatpercent := "VAT %";

                    LastAmt += Amt;
                    Rec_Item.Reset();
                    Rec_Item.SetRange("No.", "No.");
                    if Rec_Item.FindFirst() then begin
                        ItemDes := Rec_Item.Description + ' ' + Rec_Item."Description 2";
                    end;

                    // SalesShipmentLine.Reset();
                    // SalesShipmentLine.SetRange("Order No.", "Order No.");
                    // SalesShipmentLine.SetRange(Quantity, Quantity);
                    // SalesShipmentLine.SetRange("Unit Price", "Unit Price");
                    // // SalesShipmentLine.SetRange("VAT Base Amount", "VAT Base Amount");
                    // SalesShipmentLine.SetRange("Posting Date", "Posting Date");
                    // SalesShipmentLine.SetRange("Dimension Set ID", "Dimension Set ID");
                    // if SalesShipmentLine.FindFirst() then
                    //     ShippingNo := SalesShipmentLine."Document No.";

                    ValueEntries.Reset();
                    ValueEntries.SetRange("Document No.", "Document No.");
                    if ValueEntries.FindFirst() then
                        ILEENtryNO := ValueEntries."Item Ledger Entry No.";

                    ILE.Reset();
                    ILE.SetRange("Entry No.", ILEENtryNO);
                    if ILE.FindFirst() then
                        ShippingNo := ILE."Document No.";



                    //  Counter += 1;

                    DescriptionCount += StrLen(Description);
                    Counter += DescriptionCount div 45;
                    RemainingCount := DescriptionCount mod 45;
                    if RemainingCount > 1 then
                        Counter += 1;

                    TransHeaderAmount += PrevLineAmount;
                    PrevLineAmount := "Line Amount";
                    TotalSubTotal += "Line Amount";
                    TotalInvDiscAmount -= "Inv. Discount Amount";
                    TotalAmount += Amount;
                    TotalAmountVAT += "Amount Including VAT" - Amount;
                    TotalAmountInclVAT += "Amount Including VAT";
                    TotalPaymentDiscOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT");
                end;

                trigger OnPreDataItem()
                begin
                    if salesheader."Prices Including VAT" then begin
                        TotalAmountExclInclVATTextValue := TotalExclVATText;
                        TotalAmountExclInclVATValue := TotalAmount;
                    end else begin
                        TotalAmountExclInclVATTextValue := TotalInclVATText;
                        TotalAmountExclInclVATValue := TotalAmountInclVAT;
                    end;
                end;
            }
            dataitem(Integer; Integer)
            {
                DataItemTableView = sorting(Number);
                column(BlankLines; 1) { }
                trigger OnPreDataItem()
                begin

                    Setrange(Number, 1, (10 - Counter));

                end;
            }
            dataitem(ReportTotalsLine; "Report Totals Buffer")
            {
                DataItemTableView = sorting("Line No.");
                UseTemporary = true;
                column(Description_ReportTotalsLine; Description)
                {
                }
                column(Amount_ReportTotalsLine; Amount)
                {
                    AutoFormatExpression = salesheader."Currency Code";
                    AutoFormatType = 1;
                }
                column(AmountFormatted_ReportTotalsLine; "Amount Formatted")
                {
                    AutoFormatExpression = salesheader."Currency Code";
                    AutoFormatType = 1;
                }
                column(FontBold_ReportTotalsLine; "Font Bold")
                {
                }
                column(FontUnderline_ReportTotalsLine; "Font Underline")
                {
                }

                trigger OnPreDataItem()
                begin
                    CreateReportTotalLines();
                end;
            }
            dataitem(USReportTotalsLine; "Report Totals Buffer")
            {
                DataItemTableView = sorting("Line No.");
                UseTemporary = true;
                column(Description_USReportTotalsLine; Description)
                {
                }
                column(Amount_USReportTotalsLine; Amount)
                {
                }
                column(AmountFormatted_USReportTotalsLine; "Amount Formatted")
                {
                }
                column(FontBold_USReportTotalsLine; "Font Bold")
                {
                }
                column(FontUnderline_USReportTotalsLine; "Font Underline")
                {
                }

                trigger OnPreDataItem()
                begin
                    CreateUSReportTotalLines();
                end;
            }

            trigger OnAfterGetRecord()
            var
                Bank: Record "Bank Account";
            begin
                FormatDocumentFields(salesheader);
                PaymentTerms.Reset();
                PaymentTerms.SetRange(Code, "Payment Terms Code");
                if PaymentTerms.FindFirst() then begin
                    PaymntDelivryTerms := PaymentTerms.Description;
                end;
                RecShipmentMethod.Reset();
                RecShipmentMethod.SetRange(Code, "Shipment Method Code");
                if RecShipmentMethod.FindFirst() then begin
                    DeliveryVia := RecShipmentMethod.Description;
                end;

                GenerlLedgsetup.Get();
                if salesheader."Currency Code" <> '' then
                    currencycode := salesheader."Currency Code"
                else
                    currencycode := GenerlLedgsetup."LCY Code";
                // Message("CurrencyCode");

                CalcFields("Work Description"); //Added by NS
                "Work Description".CreateInStream(workdescStream);
                workdescStream.ReadText(WorkdescText);
                Counter := 0;
                DescriptionCount += strlen(WorkdescText);
                Counter += DescriptionCount div 45;
                RemainingCount := DescriptionCount mod 45;
                if RemainingCount > 1 then
                    Counter += 1;

                Clear(LineCount);
                SalesLine.Reset();
                // SalesLine.SetRange("Document Type", "Document Type");
                SalesLine.SetRange("Document No.", "No.");
                if SalesLine.FindSet() then
                    LineCount := SalesLine.Count;

                Clear(BankAccountNo);
                Clear(BankBranchNo);
                if Bank.get("Company Bank Account Code") then begin
                    BankAccountNo := Bank."Bank Account No.";
                    BankBranchNo := Bank."Bank Branch No.";
                end;

            end;

            trigger OnPreDataItem()
            begin
                TotalSubTotal := 0;
                TotalInvDiscAmount := 0;
                TotalAmount := 0;
                TotalAmountVAT := 0;
                TotalAmountInclVAT := 0;
                TotalPaymentDiscOnVAT := 0;

            end;

        }
    }
    requestpage
    {

        layout
        {
            area(content)
            {
                field(ProformaLbl; ProformaLbl)
                {
                    ApplicationArea = all;
                    Caption = 'Proforma Invoice';
                }
            }
        }
        actions
        {
        }
    }
    trigger OnPreReport()
    begin
        CompanyInfo.Get;
        CompanyInfo.CalcFields(Picture)
    end;

    var
        GenerlLedgsetup: Record "General Ledger Setup";
        SalesLine: Record "Sales Invoice Line";
        ShippingNo: Code[20];
        SalesShipmentLine: Record "Sales Shipment Line";
        workdescStream: InStream;
        WorkdescText: Text;
        CompanyInfo: Record "Company Information";
        PaymentTerms: Record "Payment Terms";
        PaymntDelivryTerms: Text[100];
        RecShipmentMethod: Record "Shipment Method";
        DeliveryVia: Text[100];
        DescriptionCount: Integer;
        RemainingCount: Integer;
        TotalAmt: Decimal;
        VATAmt: Decimal;
        Amt: Decimal;
        currencycode: Code[10];
        Rec_Item: Record Item;
        ItemDes: Text[100];
        ProformaLbl: Boolean;
        LastAmt: Decimal;
        Counter: Integer;
        LineCount: Integer;
        LineDis: Decimal;
        Vatpercent: Decimal;

        ValueEntries: Record "Value Entry";
        ILE: Record "Item Ledger Entry";

        ILEENtryNO: integer;
        BankAccountNo: Code[20];
        BankBranchNo: Code[20];
        TotalInvDiscAmount: Decimal;
        TotalAmountVAT: Decimal;
        SubtotalLbl: Label 'Subtotal';
        TotalSubTotal: Decimal;
        InvDiscountAmtLbl: Label 'Invoice Discount';
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        TotalAmountInclVAT: Decimal;
        TotalAmount: Decimal;
        TotalLbl: Label 'Total';
        TaxLbl: Label 'Tax';
        PrevLineAmount: Decimal;
        TransHeaderAmount: Decimal;
        TotalPaymentDiscOnVAT: Decimal;
        AutoFormat: Codeunit "Auto Format";
        TotalAmountExclInclVATTextValue: Text;
        TotalAmountExclInclVATValue: Decimal;
        FormatDocument: Codeunit "Format Document";
        TotalText: Text[50];
        VATAmtLbl: Label 'VAT Amount';


    local procedure CreateReportTotalLines()
    var
        TempSalesTaxAmountLine: Record "Sales Tax Amount Line" temporary;
        TaxArea: Record "Tax Area";
    begin
        ReportTotalsLine.DeleteAll();
        if salesheader."Tax Area Code" <> '' then
            if TaxArea.Get(salesheader."Tax Area Code") then;
        if (salesheader."Tax Area Code" = '') or (TaxArea."Country/Region" = TaxArea."Country/Region"::US) then begin
            CreateUSReportTotalLines();
            exit;
        end;

        if (TotalInvDiscAmount <> 0) or (TotalAmountVAT <> 0) then
            ReportTotalsLine.Add(SubtotalLbl, TotalSubTotal, true, false, false, salesheader."Currency Code");
        if TotalInvDiscAmount <> 0 then begin
            ReportTotalsLine.Add(InvDiscountAmtLbl, TotalInvDiscAmount, false, false, false, salesheader."Currency Code");
            if TotalAmountVAT <> 0 then
                if salesheader."Prices Including VAT" then
                    ReportTotalsLine.Add(TotalInclVATText, TotalAmountInclVAT, true, false, false, salesheader."Currency Code")
                else
                    ReportTotalsLine.Add(TotalExclVATText, TotalAmount, true, false, false, salesheader."Currency Code");
        end;

        if TotalAmountVAT <> 0 then begin
            GetTaxSummarizedLines(TempSalesTaxAmountLine);
            TempSalesTaxAmountLine.SetCurrentKey("Print Order");
            TempSalesTaxAmountLine.Ascending(true);
            if TempSalesTaxAmountLine.FindSet() then
                repeat
                    ReportTotalsLine.Add(TempSalesTaxAmountLine."Print Description", TempSalesTaxAmountLine."Tax Amount", false, true, false, salesheader."Currency Code");
                until TempSalesTaxAmountLine.Next() = 0;
        end;
    end;

    local procedure CreateUSReportTotalLines()
    begin
        ReportTotalsLine.DeleteAll();
        ReportTotalsLine.Add(SubtotalLbl, TotalSubTotal, true, false, false);
        if TotalInvDiscAmount <> 0 then
            ReportTotalsLine.Add(InvDiscountAmtLbl, TotalInvDiscAmount, false, false, false, salesheader."Currency Code");
        ReportTotalsLine.Add(StrSubstNo('%1 %2', TotalLbl, TaxLbl), TotalAmountVAT, false, true, false);
    end;

    local procedure GetTaxSummarizedLines(var TempSalesTaxAmountLine: Record "Sales Tax Amount Line" temporary)
    var
        TaxArea: Record "Tax Area";
        SalesTaxCalculate: Codeunit "Sales Tax Calculate";
    begin
        if not TaxArea.Get(salesheader."Tax Area Code") then
            exit;
        TempSalesTaxAmountLine.DeleteAll();
        SalesTaxCalculate.StartSalesTaxCalculation();
        if TaxArea."Use External Tax Engine" then
            SalesTaxCalculate.CallExternalTaxEngineForDoc(DATABASE::"Sales Invoice Header", 0, salesheader."No.")
        else begin
            SalesTaxCalculate.AddSalesInvoiceLines(salesheader."No.");
            SalesTaxCalculate.EndSalesTaxCalculation(salesheader."Posting Date");
        end;
        SalesTaxCalculate.GetSalesTaxAmountLineTable(TempSalesTaxAmountLine);
        SalesTaxCalculate.GetSummarizedSalesTaxTable(TempSalesTaxAmountLine);
    end;

    local procedure FormatDocumentFields(SalesInvoiceHeader: Record "Sales Invoice Header")
    begin
        FormatDocument.SetTotalLabels(SalesInvoiceHeader.GetCurrencySymbol(), TotalText, TotalInclVATText, TotalExclVATText);
    end;


}
