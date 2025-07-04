report 52078 "Sales Invoice - Inforpress New"
{
    // 148 OS.RM  07/06/2017  VEN.003   Informe factura venta
    // EX-OMI 180319 incluir moneda
    DefaultLayout = RDLC;
    RDLCLayout = './src/report/layouts/Sales Invoice - Inforpress New.rdlc';
    Caption = 'Factura - Venta';
    Permissions = TableData 7190=rimd,
        TableData "Posted Assembly Line"=rimd,
        tabledata "MemIntAcumulados Inv"=rimd,
        tabledata "Line Fee Note on Report Hist."=rimd,
        tabledata "Sales Invoice Header"=rimd; //EX-SGG 210322
    PreviewMode = PrintLayout;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;

    dataset
    {
        dataitem("Sales Invoice Header";112)
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeading = 'Posted Sales Invoice';

            column(No_SalesInvHdr; "No.")
            {
            }
            column(PaymentTermsDescription; PaymentTerms.Description)
            {
            }
            column(ShipmentMethodDescription; ShipmentMethod.Description)
            {
            }
            column(PaymentMethodDescription; PaymentMethod.Description)
            {
            }
            column(PmtTermsDescCaption; PmtTermsDescCaptionLbl)
            {
            }
            column(ShpMethodDescCaption; ShpMethodDescCaptionLbl)
            {
            }
            column(PmtMethodDescCaption; PmtMethodDescCaptionLbl)
            {
            }
            column(DocDateCaption; DocDateCaptionLbl)
            {
            }
            column(HomePageCaption; HomePageCaptionCap)
            {
            }
            column(EmailCaption; EmailCaptionLbl)
            {
            }
            column(DisplayAdditionalFeeNote; DisplayAdditionalFeeNote)
            {
            }
            column(paisVATText; pais."VAT Text PT")
            {
            }
            column(TxtBank1; TxtBank[1])
            {
            }
            column(TxtBank2; TxtBank[2])
            {
            }
            column(mTxt1; mTxt[1])
            {
            }
            column(mTxt2; mTxt[2])
            {
            }
            column(mTxt6; mTxt[6])
            {
            }
            column(TXTSeminario; TXTSeminario)
            {
            }
            column(CompanyInfoDownPicture; CompanyInfo."Invoice Down Picture")
            {
            }
            column(CompanyInfoRightPicture; CompanyInfo."Invoice Right Picture")
            {
            }
            column(CompanyInfoPicture; CompanyInfo.Picture)
            {
            }
            column(Description_SalesInvLineText; Description_SalesInvLineTextLbl)
            {
            }
            column(Amount_SalesInvLineText; Amount_SalesInvLineTextLbl)
            {
            }
            column(ContinuedTxt; ContinuedTxt)
            {
            }
            column(AssistantTxt; AssistantTxt)
            {
            }
            column(isAssistant; isAssistant)
            {
            }
            column(Signature; Signature)
            {
            }
            column(Hash; HashText)
            {
            }
            column(bShowFirstLine; bShowFirstLine)
            {
            }
            column(Agrupar; Agrupar)
            {
            }
            column(DescripcionAgrupar; DescripcionAgrupar)
            {
            }
            column(Valor; "Sales Invoice Header".Amount)
            {
            }
            column(code_moneda; code_moneda)
            {
            }
            column(QR_Image; "QR Image")
            {
            } //EX-SGG 210322
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = SORTING(Number);

                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = SORTING(Number)WHERE(Number=CONST(1));

                    column(CompanyInfo2Picture; CompanyInfo2.Picture)
                    {
                    }
                    column(CompanyInfo1Picture; CompanyInfo1.Picture)
                    {
                    }
                    column(CompanyInfo3Picture; CompanyInfo3.Picture)
                    {
                    }
                    column(DocumentCaption; STRSUBSTNO(CopyText))
                    {
                    }
                    column(CustAddr1; CustAddr[1])
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(CustAddr2; CustAddr[2])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(CustAddr3; CustAddr[3])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(CustAddr4; CustAddr[4])
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(CustAddr5; CustAddr[5])
                    {
                    }
                    column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
                    {
                    }
                    column(CustAddr6; CustAddr[6])
                    {
                    }
                    column(CompanyInfoVATRegistrationNo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoHomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoEmail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoGiroNo; CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName; CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccountNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(BilltoCustNo_SalesInvHdr; "Sales Invoice Header"."Bill-to Customer No.")
                    {
                    }
                    column(PostingDate_SalesInvHdr; FORMAT("Sales Invoice Header"."Posting Date", 0, 4))
                    {
                    }
                    column(VATNoText; VATNoText)
                    {
                    }
                    column(VATRegNo_SalesInvHeader; "Sales Invoice Header"."VAT Registration No.")
                    {
                    }
                    column(DueDate_SalesInvHeader; FORMAT("Sales Invoice Header"."Due Date", 0, 4))
                    {
                    }
                    column(SalesPersonText; SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(No_SalesInvoiceHeader1; "Sales Invoice Header"."No.")
                    {
                    }
                    column(ReferenceText; ReferenceText)
                    {
                    }
                    column(YourReference_SalesInvHdr; "Sales Invoice Header"."Your Reference")
                    {
                    }
                    column(OrderNoText; OrderNoText)
                    {
                    }
                    column(OrderNo_SalesInvHeader; "Sales Invoice Header"."Order No.")
                    {
                    }
                    column(CustAddr7; CustAddr[7])
                    {
                    }
                    column(CustAddr8; CustAddr[8])
                    {
                    }
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(DocDate_SalesInvoiceHdr; FORMAT("Sales Invoice Header"."Document Date", 0, 4))
                    {
                    }
                    column(PricesInclVAT_SalesInvHdr; "Sales Invoice Header"."Prices Including VAT")
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(PricesInclVATYesNo; FORMAT("Sales Invoice Header"."Prices Including VAT"))
                    {
                    }
                    column(PageCaption; PageCaptionCap)
                    {
                    }
                    column(PhoneNoCaption; PhoneNoCaptionLbl)
                    {
                    }
                    column(VATRegNoCaption; VATRegNoCaptionLbl)
                    {
                    }
                    column(GiroNoCaption; GiroNoCaptionLbl)
                    {
                    }
                    column(BankNameCaption; BankNameCaptionLbl)
                    {
                    }
                    column(BankAccNoCaption; BankAccNoCaptionLbl)
                    {
                    }
                    column(DueDateCaption; DueDateCaptionLbl)
                    {
                    }
                    column(InvoiceNoCaption; InvoiceNoCaptionLbl)
                    {
                    }
                    column(PostingDateCaption; PostingDateCaptionLbl)
                    {
                    }
                    column(BilltoCustNo_SalesInvHdrCaption; "Sales Invoice Header".FIELDCAPTION("Bill-to Customer No."))
                    {
                    }
                    column(PricesInclVAT_SalesInvHdrCaption; "Sales Invoice Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    column(CACCaption; CACCaptionLbl)
                    {
                    }
                    column(ClientNoText; ClientNoTextLbl)
                    {
                    }
                    column(InvTitleText; InvTitleTextLbl)
                    {
                    }
                    column(PostingDateText; PostingDateTextLbl)
                    {
                    }
                    column(DueDateText; DueDateTextLbl)
                    {
                    }
                    column(TextoOpcCliente; Cust."Invoice Optional Text")
                    {
                    }
                    column(TxtCust; TxtCust)
                    {
                    }
                    column(VATRegNoText; VATRegNoLbl)
                    {
                    }
                    dataitem(DimensionLoop1; Integer)
                    {
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING(Number)WHERE(Number=FILTER(1..));

                        column(DimText; DimText)
                        {
                        }
                        column(Number_DimensionLoop1; Number)
                        {
                        }
                        column(HdrDimsCaption; HdrDimsCaptionLbl)
                        {
                        }
                        trigger OnAfterGetRecord()
                        var
                        begin
                            IF Number = 1 THEN BEGIN
                                IF NOT DimSetEntry1.FindSet()then CurrReport.Break();
                            END
                            ELSE IF NOT Continue THEN CurrReport.Break();
                            CLEAR(DimText);
                            Continue:=FALSE;
                            REPEAT OldDimText:=DimText;
                                IF DimText = '' THEN DimText:=STRSUBSTNO('%1 %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                ELSE
                                    DimText:=STRSUBSTNO('%1, %2 %3', DimText, DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
                                IF STRLEN(DimText) > MAXSTRLEN(OldDimText)THEN BEGIN
                                    DimText:=OldDimText;
                                    Continue:=TRUE;
                                    EXIT;
                                END;
                            UNTIL DimSetEntry1.Next() = 0;
                        end;
                        trigger OnPreDataItem()
                        begin
                            IF NOT ShowInternalInfo THEN CurrReport.Break();
                        end;
                    }
                    dataitem("Sales Invoice Line";113)
                    {
                        DataItemLink = "Document No."=FIELD("No.");
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");

                        column(GetCarteraInvoice; GetCarteraInvoice)
                        {
                        }
                        column(LineAmt_SalesInvoiceLine; "Line Amount")
                        {
                        AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode();
                        AutoFormatType = 1;
                        }
                        column(Description_SalesInvLine; Description)
                        {
                        }
                        column(No_SalesInvoiceLine; "No.")
                        {
                        }
                        column(Quantity_SalesInvoiceLine; Quantity)
                        {
                        }
                        column(UOM_SalesInvoiceLine; "Unit of Measure")
                        {
                        }
                        column(UnitPrice_SalesInvLine; "Unit Price")
                        {
                        AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode();
                        AutoFormatType = 2;
                        }
                        column(LineDisc_SalesInvoiceLine; "Line Discount %")
                        {
                        }
                        column(VATIdent_SalesInvLine; "VAT Identifier")
                        {
                        }
                        column(PostedShipmentDate; FORMAT(PostedShipmentDate))
                        {
                        }
                        column(Type_SalesInvoiceLine; FORMAT("Sales Invoice Line".Type))
                        {
                        }
                        column(InvDiscountAmount;-"Inv. Discount Amount")
                        {
                        AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode();
                        AutoFormatType = 1;
                        }
                        column(TotalSubTotal; TotalSubTotal)
                        {
                        AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                        AutoFormatType = 1;
                        }
                        column(TotalInvoiceDiscountAmount; TotalInvoiceDiscountAmount)
                        {
                        AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                        AutoFormatType = 1;
                        }
                        column(TotalAmount; TotalAmount)
                        {
                        AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                        AutoFormatType = 1;
                        }
                        column(TotalGivenAmount; TotalGivenAmount)
                        {
                        }
                        column(SalesInvoiceLineAmount; Amount)
                        {
                        AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode();
                        AutoFormatType = 1;
                        }
                        column(AmountIncludingVATAmount; "Amount Including VAT" - Amount)
                        {
                        AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode();
                        AutoFormatType = 1;
                        }
                        column(Amount_SalesInvoiceLineIncludingVAT; "Amount Including VAT")
                        {
                        AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode();
                        AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmtText; VATAmountLine.VATAmountText)
                        {
                        }
                        column(TotalExclVATText; TotalExclVATText)
                        {
                        }
                        column(TotalInclVATText; TotalInclVATText)
                        {
                        }
                        column(TotalAmountInclVAT; TotalAmountInclVAT)
                        {
                        AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                        AutoFormatType = 1;
                        }
                        column(TotalAmountVAT; TotalAmountVAT)
                        {
                        AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                        AutoFormatType = 1;
                        }
                        column(VATBaseDisc_SalesInvHdr; "Sales Invoice Header"."VAT Base Discount %")
                        {
                        AutoFormatType = 1;
                        }
                        column(TotalPaymentDiscountOnVAT; TotalPaymentDiscountOnVAT)
                        {
                        AutoFormatType = 1;
                        }
                        column(VATAmtLineVATCalcType; VATAmountLine."VAT Calculation Type")
                        {
                        }
                        column(LineNo_SalesInvoiceLine; "Line No.")
                        {
                        }
                        column(PmtinvfromdebtpaidtoFactCompCaption; PmtinvfromdebtpaidtoFactCompCaptionLbl)
                        {
                        }
                        column(UnitPriceCaption; UnitPriceCaptionLbl)
                        {
                        }
                        column(DiscountCaption; DiscountCaptionLbl)
                        {
                        }
                        column(AmtCaption; AmtCaptionLbl)
                        {
                        }
                        column(PostedShpDateCaption; PostedShpDateCaptionLbl)
                        {
                        }
                        column(InvDiscAmtCaption; InvDiscAmtCaptionLbl)
                        {
                        }
                        column(SubtotalCaption; SubtotalCaptionLbl)
                        {
                        }
                        column(PmtDiscGivenAmtCaption; PmtDiscGivenAmtCaptionLbl)
                        {
                        }
                        column(PmtDiscVATCaption; PmtDiscVATCaptionLbl)
                        {
                        }
                        column(Description_SalesInvLineCaption; FIELDCAPTION(Description))
                        {
                        }
                        column(No_SalesInvoiceLineCaption; FIELDCAPTION("No."))
                        {
                        }
                        column(Quantity_SalesInvoiceLineCaption; FIELDCAPTION(Quantity))
                        {
                        }
                        column(UOM_SalesInvoiceLineCaption; FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        column(VATIdent_SalesInvLineCaption; FIELDCAPTION("VAT Identifier"))
                        {
                        }
                        column(booleanMuestraLinea; MuestraLinea)
                        {
                        }
                        column(booleanGastos; bConGastos)
                        {
                        }
                        column(JobAssistant; "Sales Invoice Line"."Job Assistant")
                        {
                        }
                        dataitem("Sales Shipment Buffer"; Integer)
                        {
                            DataItemTableView = SORTING(Number);

                            column(PostingDate_SalesShipmentBuffer; FORMAT(SalesShipmentBuffer."Posting Date"))
                            {
                            }
                            column(Quantity_SalesShipmentBuffer; SalesShipmentBuffer.Quantity)
                            {
                            DecimalPlaces = 0: 5;
                            }
                            column(ShpCaption; ShpCaptionLbl)
                            {
                            }
                            trigger OnAfterGetRecord()
                            begin
                                IF Number = 1 THEN SalesShipmentBuffer.FIND('-')
                                ELSE
                                    SalesShipmentBuffer.NEXT;
                            end;
                            trigger OnPreDataItem()
                            begin
                                SalesShipmentBuffer.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
                                SalesShipmentBuffer.SETRANGE("Line No.", "Sales Invoice Line"."Line No.");
                                SETRANGE(Number, 1, SalesShipmentBuffer.COUNT);
                            end;
                        }
                        dataitem(DimensionLoop2; Integer)
                        {
                            DataItemTableView = SORTING(Number)WHERE(Number=FILTER(1..));

                            column(DimText1; DimText)
                            {
                            }
                            column(LineDimsCaption; LineDimsCaptionLbl)
                            {
                            }
                            trigger OnAfterGetRecord()
                            begin
                                IF Number = 1 THEN BEGIN
                                    IF NOT DimSetEntry2.FindSet()then CurrReport.Break();
                                END
                                ELSE IF NOT Continue THEN CurrReport.Break();
                                CLEAR(DimText);
                                Continue:=FALSE;
                                REPEAT OldDimText:=DimText;
                                    IF DimText = '' THEN DimText:=STRSUBSTNO('%1 %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    ELSE
                                        DimText:=STRSUBSTNO('%1, %2 %3', DimText, DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code");
                                    IF STRLEN(DimText) > MAXSTRLEN(OldDimText)THEN BEGIN
                                        DimText:=OldDimText;
                                        Continue:=TRUE;
                                        EXIT;
                                    END;
                                UNTIL DimSetEntry2.Next() = 0;
                            end;
                            trigger OnPreDataItem()
                            begin
                                IF NOT ShowInternalInfo THEN CurrReport.Break();
                                DimSetEntry2.SETRANGE("Dimension Set ID", "Sales Invoice Line"."Dimension Set ID");
                            end;
                        }
                        dataitem(AsmLoop; Integer)
                        {
                            DataItemTableView = SORTING(Number);

                            column(TempPostedAsmLineUOMCode; GetUOMText(TempPostedAsmLine."Unit of Measure Code"))
                            {
                            //DecimalPlaces = 0 : 5;
                            }
                            column(TempPostedAsmLineQuantity; TempPostedAsmLine.Quantity)
                            {
                            DecimalPlaces = 0: 5;
                            }
                            column(TempPostedAsmLineVariantCode; BlanksForIndent + TempPostedAsmLine."Variant Code")
                            {
                            //DecimalPlaces = 0 : 5;
                            }
                            column(TempPostedAsmLineDescrip; BlanksForIndent + TempPostedAsmLine.Description)
                            {
                            }
                            column(TempPostedAsmLineNo; BlanksForIndent + TempPostedAsmLine."No.")
                            {
                            }
                            trigger OnAfterGetRecord()
                            var
                                ItemTranslation: Record 30;
                            begin
                                IF Number = 1 THEN TempPostedAsmLine.FINDSET
                                ELSE
                                    TempPostedAsmLine.NEXT;
                                IF ItemTranslation.GET(TempPostedAsmLine."No.", TempPostedAsmLine."Variant Code", "Sales Invoice Header"."Language Code")THEN TempPostedAsmLine.Description:=ItemTranslation.Description;
                            end;
                            trigger OnPreDataItem()
                            begin
                                CLEAR(TempPostedAsmLine);
                                IF NOT DisplayAssemblyInformation THEN CurrReport.Break();
                                CollectAsmInformation;
                                CLEAR(TempPostedAsmLine);
                                SETRANGE(Number, 1, TempPostedAsmLine.COUNT);
                            end;
                        }
                        trigger OnAfterGetRecord()
                        begin
                            PostedShipmentDate:=0D;
                            IF Quantity <> 0 THEN PostedShipmentDate:=FindPostedShipmentDate;
                            IF(Type = Type::"G/L Account") AND (NOT ShowInternalInfo)THEN "No.":='';
                            IF VATPostingSetup.GET("Sales Invoice Line"."VAT Bus. Posting Group", "Sales Invoice Line"."VAT Prod. Posting Group")THEN BEGIN
                                VATAmountLine.Init();
                                //<148
                                //VATAmountLine."VAT Identifier" := "VAT Identifier";
                                VATAmountLine."VAT Identifier":=FORMAT("Sales Invoice Line"."VAT %" + "Sales Invoice Line"."EC %");
                                //148>
                                VATAmountLine."VAT Calculation Type":="VAT Calculation Type";
                                VATAmountLine."Tax Group Code":="Tax Group Code";
                                //<148
                                //VATAmountLine."VAT %" := VATPostingSetup."VAT %";
                                //VATAmountLine."EC %" := VATPostingSetup."EC %";
                                VATAmountLine."VAT %":="Sales Invoice Line"."VAT %";
                                VATAmountLine."EC %":="Sales Invoice Line"."EC %";
                                //148>
                                VATAmountLine."VAT Base":="Sales Invoice Line".Amount;
                                VATAmountLine."Amount Including VAT":="Sales Invoice Line"."Amount Including VAT";
                                VATAmountLine."Line Amount":="Line Amount";
                                VATAmountLine."Pmt. Discount Amount":="Pmt. Discount Amount";
                                IF "Allow Invoice Disc." THEN VATAmountLine."Inv. Disc. Base Amount":="Line Amount";
                                VATAmountLine."Invoice Discount Amount":="Inv. Discount Amount";
                                VATAmountLine.SetCurrencyCode("Sales Invoice Header"."Currency Code");
                                VATAmountLine."VAT Difference":="VAT Difference";
                                VATAmountLine."EC Difference":="EC Difference";
                                IF "Sales Invoice Header"."Prices Including VAT" THEN VATAmountLine."Prices Including VAT":=TRUE;
                                VATAmountLine."VAT Clause Code":="VAT Clause Code";
                                VATAmountLine.InsertLine;
                                TotalSubTotal+="Line Amount";
                                TotalInvoiceDiscountAmount-="Inv. Discount Amount";
                                TotalAmount+=Amount;
                                TotalAmountVAT+="Amount Including VAT" - Amount;
                                TotalAmountInclVAT+="Amount Including VAT";
                                TotalGivenAmount-="Pmt. Discount Amount";
                                TotalPaymentDiscountOnVAT+=-("Line Amount" - "Inv. Discount Amount" - "Pmt. Discount Amount" - "Amount Including VAT");
                            END;
                            //<148
                            IF bConGastos AND ("Sales Invoice Line"."Line Type" = "Sales Invoice Line"."Line Type"::Expense)THEN BEGIN
                                //Con la linea comentada arriba no funciona porque el tipo de linea siempre es " " y nunca rellena el memInt---------------------------------------------------
                                //IF bConGastos AND ("Sales Invoice Line"."Line Type" = "Sales Invoice Line"."Line Type"::" ") THEN BEGIN
                                //IF bConGastos THEN BEGIN
                                MemInt.Init();
                                MemInt."Cod 1":=FORMAT(-"Sales Invoice Line"."Line Discount %");
                                IF NOT MemInt.Find()then MemInt.Insert();
                                MemInt.Importe1+="Sales Invoice Line"."Line Amount";
                                MemInt.Importe2:="Sales Invoice Line"."Line Discount %";
                                MemInt.Importe3+=ROUND("Sales Invoice Line".Quantity * "Sales Invoice Line"."Unit Price");
                                MemInt.Importe4:=MemInt.Importe1 - MemInt.Importe3;
                                MemInt.Modify();
                            END;
                        //148>
                        end;
                        trigger OnPreDataItem()
                        begin
                            VATAmountLine.DeleteAll();
                            SalesShipmentBuffer.Reset();
                            SalesShipmentBuffer.DeleteAll();
                            FirstValueEntryNo:=0;
                            MoreLines:=FIND('+');
                            WHILE MoreLines AND (Description = '') AND ("No." = '') AND (Quantity = 0) AND (Amount = 0)DO MoreLines:=NEXT(-1) <> 0;
                            IF NOT MoreLines THEN CurrReport.Break();
                            SETRANGE("Line No.", 0, "Line No.");
                            CurrReport.CREATETOTALS("Line Amount", Amount, "Amount Including VAT", "Inv. Discount Amount", "Pmt. Discount Amount");
                            //<148
                            MemInt.DeleteAll();
                            SETRANGE("Sales Invoice Line"."Line Type", "Sales Invoice Line"."Line Type"::Expense);
                            bConGastos:=FIND('-');
                            //bConGastos := TRUE;
                            SETRANGE("Sales Invoice Line"."Line Type");
                        //148>
                        end;
                    }
                    dataitem(VATCounter; Integer)
                    {
                        DataItemTableView = SORTING(Number);

                        column(VATAmountLineVATBase; VATAmountLine."VAT Base")
                        {
                        AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode();
                        AutoFormatType = 1;
                        }
                        column(VATAmountLineVATAmount; VATAmountLine."VAT Amount")
                        {
                        AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                        AutoFormatType = 1;
                        }
                        column(VATAmountLineLineAmount; VATAmountLine."Line Amount")
                        {
                        AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                        AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt; VATAmountLine."Inv. Disc. Base Amount")
                        {
                        AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                        AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscountAmt; VATAmountLine."Invoice Discount Amount" + VATAmountLine."Pmt. Discount Amount")
                        {
                        AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                        AutoFormatType = 1;
                        }
                        column(VATAmtLineECAmount; VATAmountLine."EC Amount")
                        {
                        AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                        AutoFormatType = 1;
                        }
                        column(VATAmountLineVAT; VATAmountLine."VAT %")
                        {
                        DecimalPlaces = 0: 6;
                        }
                        column(VATAmtLineVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATAmountLineEC; VATAmountLine."EC %")
                        {
                        AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                        AutoFormatType = 1;
                        }
                        column(VATAmtLineVATCaption; VATAmtLineVATCaptionLbl)
                        {
                        }
                        column(VATECBaseCaption; VATECBaseCaptionLbl)
                        {
                        }
                        column(VATAmountCaption; VATAmountCaptionLbl)
                        {
                        }
                        column(VATAmtSpecCaption; VATAmtSpecCaptionLbl)
                        {
                        }
                        column(VATIdentCaption; VATIdentCaptionLbl)
                        {
                        }
                        column(InvDiscBaseAmtCaption; InvDiscBaseAmtCaptionLbl)
                        {
                        }
                        column(LineAmtCaption1; LineAmtCaption1Lbl)
                        {
                        }
                        column(InvPmtDiscCaption; InvPmtDiscCaptionLbl)
                        {
                        }
                        column(ECAmtCaption; ECAmtCaptionLbl)
                        {
                        }
                        column(ECCaption; ECCaptionLbl)
                        {
                        }
                        column(TotalCaption; TotalCaptionLbl)
                        {
                        }
                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                            IF VATAmountLine."VAT Amount" = 0 THEN VATAmountLine."VAT %":=0;
                            IF VATAmountLine."EC Amount" = 0 THEN VATAmountLine."EC %":=0;
                            //<148
                            i:=Number;
                            ImpPie[1, i]+=VATAmountLine."Line Amount";
                            ImpPie[2, i]+=VATAmountLine."Pmt. Discount Amount" + VATAmountLine."Line Discount Amount";
                            ImpPie[3, i]+=VATAmountLine."VAT Base";
                            ImpPie[4, i]:=VATAmountLine."VAT %";
                            ImpPie[5, i]+=VATAmountLine."VAT Amount";
                            ImpPie[6, i]:=VATAmountLine."EC %";
                            ImpPie[7, i]+=VATAmountLine."EC Amount";
                            ImpPie[8, i]+=VATAmountLine."VAT Amount" + VATAmountLine."EC Amount";
                            ImpPie[9, i]+=VATAmountLine."VAT Base" + VATAmountLine."VAT Amount" + VATAmountLine."EC Amount";
                        //CurrReport.Skip();
                        //148>
                        end;
                        trigger OnPreDataItem()
                        begin
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(VATAmountLine."Line Amount", VATAmountLine."Inv. Disc. Base Amount", VATAmountLine."Invoice Discount Amount", VATAmountLine."VAT Base", VATAmountLine."VAT Amount", VATAmountLine."EC Amount", VATAmountLine."Pmt. Discount Amount");
                        end;
                    }
                    dataitem(VATClauseEntryCounter; Integer)
                    {
                        DataItemTableView = SORTING(Number);

                        column(VATClauseVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATClauseCode; VATAmountLine."VAT Clause Code")
                        {
                        }
                        column(VATClauseDescription; VATClause.Description)
                        {
                        }
                        column(VATClauseDescription2; VATClause."Description 2")
                        {
                        }
                        column(VATClauseAmount; VATAmountLine."VAT Amount")
                        {
                        AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                        AutoFormatType = 1;
                        }
                        column(VATClausesCaption; VATClausesCap)
                        {
                        }
                        column(VATClauseVATIdentifierCaption; VATIdentifierCaptionLbl)
                        {
                        }
                        column(VATClauseVATAmtCaption; VATAmtCaptionLbl)
                        {
                        }
                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                            IF NOT VATClause.GET(VATAmountLine."VAT Clause Code")THEN CurrReport.Skip();
                            VATClause.TranslateDescription("Sales Invoice Header"."Language Code");
                            //AGRUPAR
                            SalesLines.RESET;
                            SalesLines.SetRange("Document No.", "Sales Invoice Header"."No.");
                            SalesLines.SetFilter("Job No.", '<>''''');
                            if SalesLines.FindSet()then if JobTable.get(SalesLines."Job No.")then;
                        end;
                        trigger OnPreDataItem()
                        begin
                            CLEAR(VATClause);
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(VatCounterLCY; Integer)
                    {
                        DataItemTableView = SORTING(Number);

                        column(VALSpecLCYHeader; VALSpecLCYHeader)
                        {
                        }
                        column(VALExchRate; VALExchRate)
                        {
                        }
                        column(VALVATBaseLCY; VALVATBaseLCY)
                        {
                        AutoFormatType = 1;
                        }
                        column(VALVATAmountLCY; VALVATAmountLCY)
                        {
                        AutoFormatType = 1;
                        }
                        column(VATAmountLineVAT1; VATAmountLine."VAT %")
                        {
                        DecimalPlaces = 0: 5;
                        }
                        column(VATAmtLineVATIdentifier1; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VALVATBaseLCYCaption1; VALVATBaseLCYCaption1Lbl)
                        {
                        }
                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                            VALVATBaseLCY:=VATAmountLine.GetBaseLCY("Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code", "Sales Invoice Header"."Currency Factor");
                            VALVATAmountLCY:=VATAmountLine.GetAmountLCY("Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code", "Sales Invoice Header"."Currency Factor");
                        end;
                        trigger OnPreDataItem()
                        begin
                            IF(NOT GLSetup."Print VAT specification in LCY") OR ("Sales Invoice Header"."Currency Code" = '')THEN CurrReport.Break();
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(VALVATBaseLCY, VALVATAmountLCY);
                            IF GLSetup."LCY Code" = '' THEN VALSpecLCYHeader:=Text007 + Text008
                            ELSE
                                VALSpecLCYHeader:=Text007 + FORMAT(GLSetup."LCY Code");
                            CurrExchRate.FindCurrency("Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code", 1);
                            CalculatedExchRate:=ROUND(1 / "Sales Invoice Header"."Currency Factor" * CurrExchRate."Exchange Rate Amount", 0.000001);
                            VALExchRate:=STRSUBSTNO(Text009, CalculatedExchRate, CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total; Integer)
                    {
                        DataItemTableView = SORTING(Number)WHERE(Number=CONST(1));
                    }
                    dataitem(Total2; Integer)
                    {
                        DataItemTableView = SORTING(Number)WHERE(Number=CONST(1));

                        column(SelltoCustNo_SalesInvHdr; "Sales Invoice Header"."Sell-to Customer No.")
                        {
                        }
                        column(ShipToAddr1; ShipToAddr[1])
                        {
                        }
                        column(ShipToAddr2; ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr3; ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr4; ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr5; ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr6; ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr7; ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr8; ShipToAddr[8])
                        {
                        }
                        column(ShiptoAddressCaption; ShiptoAddressCaptionLbl)
                        {
                        }
                        column(SelltoCustNo_SalesInvHdrCaption; "Sales Invoice Header".FIELDCAPTION("Sell-to Customer No."))
                        {
                        }
                        trigger OnPreDataItem()
                        begin
                            IF NOT ShowShippingAddr THEN CurrReport.Break();
                        end;
                    }
                    dataitem(LineFee; Integer)
                    {
                        DataItemTableView = SORTING(Number)ORDER(Ascending)WHERE(Number=FILTER(1..));

                        column(LineFeeCaptionLbl; TempLineFeeNoteOnReportHist.ReportText)
                        {
                        }
                        trigger OnAfterGetRecord()
                        begin
                            IF NOT DisplayAdditionalFeeNote THEN CurrReport.Break();
                            IF Number = 1 THEN BEGIN
                                IF NOT TempLineFeeNoteOnReportHist.FindSet()then CurrReport.Break()END
                            ELSE IF TempLineFeeNoteOnReportHist.Next() = 0 THEN CurrReport.Break();
                        end;
                    }
                    dataitem(VatAuxiliar; Integer)
                    {
                        DataItemTableView = SORTING(Number)ORDER(Ascending)WHERE(Number=CONST(1));

                        column(IdenVatAux;'1')
                        {
                        }
                        column(TaxAmountText; TaxAmountTextLbl)
                        {
                        }
                        column(PercentText; PercentTextLbl)
                        {
                        }
                        column(IVAText; IVATextLbl)
                        {
                        }
                        column(TotalAmountText; TotalAmountTextLbl)
                        {
                        }
                        column(ImpPie31; FormatNumber(ImpPie[3][1], 2))
                        {
                        }
                        column(ImpPie41; ImpPie[4][1])
                        {
                        }
                        column(ImpPie51; FormatNumber(ImpPie[5][1], 2))
                        {
                        }
                        column(ImpPie91; FormatNumber(ImpPie[9][1], 2))
                        {
                        }
                        column(ImpPie32; FormatNumber(ImpPie[3][2], 2))
                        {
                        }
                        column(ImpPie42; ImpPie[4][2])
                        {
                        }
                        column(ImpPie52; FormatNumber(ImpPie[5][2], 2))
                        {
                        }
                        column(ImpPie92; FormatNumber(ImpPie[9][2], 2))
                        {
                        }
                        column(ImpPie33; FormatNumber(ImpPie[3][3], 2))
                        {
                        }
                        column(ImpPie43; ImpPie[4][3])
                        {
                        }
                        column(ImpPie53; FormatNumber(ImpPie[5][3], 2))
                        {
                        }
                        column(ImpPie93; FormatNumber(ImpPie[9][3], 2))
                        {
                        }
                        column(GLSetupLCYCode; GLSetup."LCY Code")
                        {
                        }
                        column(PaymentMethodText; PaymentMethodTextLbl)
                        {
                        }
                        column(ShipmentMethodText; ShipmentMethodTextLbl)
                        {
                        }
                    }
                    dataitem(BucleMemInt; Integer)
                    {
                        DataItemTableView = SORTING(Number)ORDER(Ascending)WHERE(Number=FILTER(1..));

                        column(Txt1; Txt[1])
                        {
                        }
                        column(Txt2; Txt[2])
                        {
                        }
                        column(V1; V[1])
                        {
                        }
                        column(V2; V[2])
                        {
                        }
                        trigger OnAfterGetRecord()
                        var
                            //3661 - ED
                            CustomerLan: Record Customer;
                        //3661 - ED END
                        begin
                            //3661 - ED
                            CustomerLan.Get("Sales Invoice Header"."Sell-to Customer No.");
                            //3661 - ED END
                            //<148
                            IF Number > 1 THEN IF MemInt.Next() = 0 THEN CurrReport.Break();
                            MemInt.Find();
                            //3605 - ED
                            ConfigGasto.GET(MemInt.Importe2);
                            CLEAR(Txt);
                            //3661 - ED
                            Txt[1]:=ConfigGasto.GetTxt(TRUE, CustomerLan."Language Code");
                            Txt[2]:=STRSUBSTNO(ConfigGasto.GetTxt(FALSE, CustomerLan."Language Code"), MemInt.Importe2);
                            //3661 - ED END
                            //3605 - ED END
                            CLEAR(V);
                            V[1]:=MemInt.Importe3;
                            V[2]:=MemInt.Importe4;
                        //148>
                        end;
                        trigger OnPreDataItem()
                        begin
                            //<148
                            IF NOT bConGastos THEN CurrReport.Break();
                            IF NOT MemInt.FIND('-')THEN CurrReport.Break();
                        //148>
                        end;
                    }
                    dataitem(FraConGastosSinTipo;113)
                    {
                        DataItemLink = "Document No."=FIELD("No.");
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING("Document No.", "Line No.")WHERE("Line Type"=CONST(" "));

                        trigger OnPreDataItem()
                        begin
                            //<148
                            IF NOT bConGastos THEN CurrReport.Break();
                        //148>
                        end;
                    }
                }
                trigger OnAfterGetRecord()
                begin
                    IF Number > 1 THEN BEGIN
                        CopyText:=Text003;
                        OutputNo+=1;
                    END;
                    CurrReport.PAGENO:=1;
                    TotalSubTotal:=0;
                    TotalInvoiceDiscountAmount:=0;
                    TotalAmount:=0;
                    TotalAmountVAT:=0;
                    TotalAmountInclVAT:=0;
                    TotalGivenAmount:=0;
                    TotalPaymentDiscountOnVAT:=0;
                    CLEAR(ImpPie); //148
                end;
                trigger OnPostDataItem()
                begin
                    IF NOT CurrReport.PREVIEW THEN SalesInvCountPrinted.RUN("Sales Invoice Header");
                end;
                trigger OnPreDataItem()
                begin
                    NoOfLoops:=ABS(NoOfCopies) + Cust."Invoice Copies" + 1;
                    IF NoOfLoops <= 0 THEN NoOfLoops:=1;
                    CopyText:='';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo:=1;
                    //<148
                    IF bSoloCopia OR bConLogo THEN SETRANGE(Number, 1);
                //148>
                end;
            }
            trigger OnAfterGetRecord()
            var
                CustomerLan: Record Customer;
            begin
                CustomerLan.Get("Sales Invoice Header"."Sell-to Customer No.");
                if CustomerLan."Language Code" <> '' then CurrReport.LANGUAGE:=Language.GetLanguageID(CustomerLan."Language Code")
                else
                    CurrReport.LANGUAGE:=1034;
                //CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");
                //<148
                "Sales Invoice Header"."Bill-to Contact":='';
                IF NOT pais.GET("Sales Invoice Header"."Sell-to Country/Region Code")THEN CLEAR(pais);
                //148>
                IF RespCenter.GET("Responsibility Center")THEN BEGIN
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No.":=RespCenter."Phone No.";
                    CompanyInfo."Fax No.":=RespCenter."Fax No.";
                END
                ELSE
                    FormatAddr.Company(CompanyAddr, CompanyInfo);
                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");
                IF "Order No." = '' THEN OrderNoText:=''
                ELSE
                    OrderNoText:=FIELDCAPTION("Order No.");
                IF "Salesperson Code" = '' THEN BEGIN
                    SalesPurchPerson.Init();
                    SalesPersonText:='';
                END
                ELSE
                BEGIN
                    SalesPurchPerson.GET("Salesperson Code");
                    SalesPersonText:=Text000;
                END;
                IF "Your Reference" = '' THEN ReferenceText:=''
                ELSE
                    ReferenceText:=FIELDCAPTION("Your Reference") + ' ' + "Sales Invoice Header"."Your Reference";
                IF "VAT Registration No." = '' THEN VATNoText:=''
                ELSE
                    VATNoText:=FIELDCAPTION("VAT Registration No.");
                IF "Currency Code" = '' THEN BEGIN
                    GLSetup.TESTFIELD("LCY Code");
                    TotalText:=STRSUBSTNO(Text001, GLSetup."LCY Code");
                    TotalInclVATText:=STRSUBSTNO(Text1100000, GLSetup."LCY Code");
                    TotalExclVATText:=STRSUBSTNO(Text1100001, GLSetup."LCY Code");
                END
                ELSE
                BEGIN
                    TotalText:=STRSUBSTNO(Text001, "Currency Code");
                    TotalInclVATText:=STRSUBSTNO(Text1100000, "Currency Code");
                    TotalExclVATText:=STRSUBSTNO(Text1100001, "Currency Code");
                END;
                FormatAddr.SalesInvBillTo(CustAddr, "Sales Invoice Header");
                IF NOT Cust.GET("Bill-to Customer No.")THEN CLEAR(Cust);
                IF "Payment Terms Code" = '' THEN PaymentTerms.INIT
                ELSE
                BEGIN
                    PaymentTerms.GET("Payment Terms Code");
                    PaymentTerms.TranslateDescription(PaymentTerms, "Language Code");
                END;
                IF "Payment Method Code" = '' THEN PaymentMethod.INIT
                ELSE
                    PaymentMethod.GET("Payment Method Code");
                IF "Shipment Method Code" = '' THEN ShipmentMethod.INIT
                ELSE
                BEGIN
                    ShipmentMethod.GET("Shipment Method Code");
                    ShipmentMethod.TranslateDescription(ShipmentMethod, "Language Code");
                END;
                FormatAddr.SalesInvShipTo(ShipToAddr, CustAddr, "Sales Invoice Header");
                ShowShippingAddr:="Sell-to Customer No." <> "Bill-to Customer No.";
                FOR i:=1 TO ARRAYLEN(ShipToAddr)DO IF ShipToAddr[i] <> CustAddr[i]THEN ShowShippingAddr:=TRUE;
                ShowCashAccountingCriteria("Sales Invoice Header");
                GetLineFeeNoteOnReportHist("No.");
                IF LogInteraction THEN IF NOT CurrReport.PREVIEW THEN BEGIN
                        IF "Bill-to Contact No." <> '' THEN SegManagement.LogDocument(4, "No.", 0, 0, DATABASE::Contact, "Bill-to Contact No.", "Salesperson Code", "Campaign No.", "Posting Description", '')
                        ELSE
                            SegManagement.LogDocument(4, "No.", 0, 0, DATABASE::Customer, "Bill-to Customer No.", "Salesperson Code", "Campaign No.", "Posting Description", '');
                    END;
                //<148
                IF NOT PaymentMethod.GET("Sales Invoice Header"."Payment Method Code")THEN CLEAR(PaymentMethod);
                IF NOT Bank.GET(PaymentMethod."Collection Bank")THEN CLEAR(Bank);
                IF Bank.IBAN <> '' THEN TxtBank[1]:=STRSUBSTNO(Text50003, Bank."SWIFT Code", GetBankno)
                ELSE
                    TxtBank[1]:='';
                IF(PaymentMethod."Show Address") AND (Bank.Address <> '')THEN TxtBank[2]:=STRSUBSTNO(Text50000, Bank.Address + ' ' + Bank."Address 2" + ' ' + Bank.City)
                ELSE
                    TxtBank[2]:='';
                COMPRESSARRAY(TxtBank);
                VATAmountLine.SetCurrencyCode("Sales Invoice Header"."Currency Code");
                CLEAR(Vto);
                CustledgEntry.Reset();
                CustledgEntry.SETCURRENTKEY(CustledgEntry."Document No.");
                CustledgEntry.SETRANGE("Document No.", "Sales Invoice Header"."No.");
                CustledgEntry.SETRANGE("Document Type", CustledgEntry."Document Type"::Bill);
                CustledgEntry.SETRANGE("Posting Date", "Sales Invoice Header"."Posting Date");
                IF CustledgEntry.FindFirst()then Vto:=CustledgEntry."Due Date"
                ELSE
                BEGIN
                    CustledgEntry.SETRANGE("Document Type", CustledgEntry."Document Type"::Invoice);
                    IF CustledgEntry.FindFirst()then Vto:=CustledgEntry."Due Date";
                END;
                IF Cust."Our Account No." <> '' THEN TxtCust:=STRSUBSTNO(Text50002, Cust."Our Account No.")
                ELSE
                    TxtCust:='';
                TextoOpcCliente:=Cust."Invoice Optional Text";
                "Sales Invoice Header".CALCFIELDS("Sales Invoice Header"."Job No.");
                IF Job.GET("Sales Invoice Header"."Job No.")THEN CASE Job."Job Type AT" OF Job."Job Type AT"::Seminar: TXTSeminario:=SalesSetup."Seminar Foot Text";
                    Job."Job Type AT"::Salon: TXTSeminario:=SalesSetup."Salon Foot Text";
                    ELSE
                        TXTSeminario:='';
                    END;
                CLEAR(mTxt);
                IF bConLogo THEN BEGIN
                    CompanyInfo.CALCFIELDS(Picture, "Invoice Down Picture", "Invoice Right Picture");
                    CompanyInfo.CALCFIELDS(Picture);
                    mTxt[7]:=CompanyInfo."Home Page";
                    mTxt[6]:=CompanyInfo."Commercial Register Text";
                    mTxt[5]:=CompanyInfo."Invoice Text 1";
                    mTxt[4]:=CompanyInfo."Invoice Text 2";
                    mTxt[3]:=CompanyInfo."Invoice Text 3";
                    mTxt[2]:=CompanyInfo."Invoice Text 4";
                    mTxt[1]:=CompanyInfo."Invoice Text 5";
                END
                ELSE
                BEGIN
                    CLEAR(CompanyInfo.Picture);
                    CLEAR(CompanyInfo."Invoice Down Picture");
                    CLEAR(CompanyInfo."Invoice Right Picture");
                END;
                isAssistant:=FALSE;
                CLEAR(SalesLine);
                SalesLine.SETRANGE("Document No.", "Sales Invoice Header"."No.");
                IF SalesLine.FindFirst()then REPEAT IF SalesLine."Job Assistant" <> '' THEN isAssistant:=TRUE;
                    UNTIL(SalesLine.Next() = 0) OR (isAssistant = TRUE);
                //>>SOLO PARA PORTUGAL
                Signature:='';
                IF UseSAFT AND bConLogo THEN BEGIN
                    IF Hash <> '' THEN Signature:=CreateSignature.GetFourCharFromSignature("Sales Invoice Header".Hash);
                    //+EX-SGG EX-QR 210322
                    "Sales Invoice Header".CALCFIELDS("QR Image");
                    IF NOT "Sales Invoice Header"."QR Image".HASVALUE THEN BEGIN
                        CLEAR(IStream);
                        CLEAR(OStream);
                        CLEAR(CduQRFunc);
                        TxtImageQR:=CduQRFuncATREVIA.ReturnTextForQRPT("No.", 0);
                        TxtImageQR:=CduQRFunc.GetQRImageTextFromWebServiceInBASE64(TxtImageQR);
                        "Sales Invoice Header"."QR Image".CREATEOUTSTREAM(OStream);
                        CduConvert.FromBase64(TxtImageQR, OStream);
                        "Sales Invoice Header".MODIFY;
                    END;
                //-EX-SGG EX-QR 210322
                END;
                //<<SOLO PORTUGAL
                //148>
                //EX-OMI 180319
                IF "Sales Invoice Header"."Currency Code" <> '' THEN code_moneda:="Currency Code"
                ELSE
                    code_moneda:='EUR';
                //EX-OMI fin
                "Sales Invoice Header".CalcFields(Amount);
            end;
            trigger OnPreDataItem()
            begin
                IF SalesSetup."Print on PDF" THEN bConLogo:=TRUE;
            end;
        }
    }
    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';

                    field(NoOfCopies; NoOfCopies)
                    {
                        Caption = 'No. of Copies';
                        ToolTip = 'No. of Copies';
                        ApplicationArea = All;
                    }
                    field(bShowFirstLine; bShowFirstLine)
                    {
                        Caption = 'Show first line';
                        ToolTip = 'Show first line';
                        ApplicationArea = All;
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        Caption = 'Log Interaction';
                        ToolTip = 'Log Interaction';
                        ApplicationArea = All;
                        Enabled = LogInteractionEnable;
                    }
                    field(DisplayAsmInformation; DisplayAssemblyInformation)
                    {
                        Caption = 'Show Assembly Components';
                        ToolTip = 'Show Assembly Components';
                        ApplicationArea = All;
                    }
                    field(DisplayAdditionalFeeNote; DisplayAdditionalFeeNote)
                    {
                        Caption = 'Show Additional Fee Note';
                        ToolTip = 'Show Additional Fee Note';
                        ApplicationArea = All;
                    }
                    field(bConLogo; bConLogo)
                    {
                        Caption = 'With logo';
                        ToolTip = 'With logo';
                        ApplicationArea = All;
                    }
                    field(bSoloCopia; bSoloCopia)
                    {
                        Caption = 'Only 1 copy';
                        ToolTip = 'Only 1 copy';
                        ApplicationArea = All;
                    }
                    field(Agrupar; Agrupar)
                    {
                        Caption = 'Agrupar';
                        ToolTip = 'Agrupar';
                        ApplicationArea = All;

                        trigger OnValidate()
                        var
                            myInt: Integer;
                            NumeroFactura: code[50];
                            SalesInvHeader: Record "Sales Invoice Header";
                        begin
                            if Agrupar then begin
                                NumeroFactura:="Sales Invoice Header".GetFilter("No.");
                                SalesInvHeader.get(NumeroFactura);
                                SalesInvHeader.CalcFields(Amount);
                                Valor:=SalesInvHeader.Amount;
                                SalesLine.Reset();
                                SalesLine.SetRange("Document No.", NumeroFactura);
                                SalesLine.SetFilter("Job No.", '<>''''');
                                if SalesLine.FindSet()then begin
                                    job.Get(SalesLine."Job No.");
                                    DescripcionAgrupar:=job."Your Reference";
                                end;
                            end;
                        end;
                    }
                    field(DescripcionAgrupar; DescripcionAgrupar)
                    {
                        Caption = 'Descripcion Agrupacion';
                        ToolTip = 'Descripcion Agrupacion';
                        ApplicationArea = All;
                    }
                }
            }
        }
        trigger OnInit()
        begin
            LogInteractionEnable:=TRUE;
        end;
        trigger OnOpenPage()
        begin
            InitLogInteraction;
            LogInteractionEnable:=LogInteraction;
            bConLogo:=true;
        end;
    }
    labels
    {
    }
    trigger OnInitReport()
    begin
        GLSetup.Get();
        CompanyInfo.Get();
        SalesSetup.Get();
        CASE SalesSetup."Logo Position on Documents" OF SalesSetup."Logo Position on Documents"::Left: BEGIN
            CompanyInfo3.Get();
            CompanyInfo3.CALCFIELDS(Picture);
        END;
        SalesSetup."Logo Position on Documents"::Center: BEGIN
            CompanyInfo1.Get();
            CompanyInfo1.CALCFIELDS(Picture);
        END;
        SalesSetup."Logo Position on Documents"::Right: BEGIN
            CompanyInfo2.Get();
            CompanyInfo2.CALCFIELDS(Picture);
        END;
        END;
    end;
    trigger OnPreReport()
    begin
        IF NOT CurrReport.USEREQUESTPAGE THEN InitLogInteraction;
    end;
    var Text000: Label 'Salesperson';
    Text001: Label 'Total %1';
    Text003: Label 'COPY';
    Text004: Label 'Sales - Invoice %1';
    PageCaptionCap: Label 'Page %1 of %2';
    GLSetup: Record 98;
    ShipmentMethod: Record 10;
    PaymentTerms: Record 3;
    SalesPurchPerson: Record 13;
    CompanyInfo: Record 79;
    CompanyInfo1: Record 79;
    CompanyInfo2: Record 79;
    CompanyInfo3: Record 79;
    SalesSetup: Record 311;
    Cust: Record 18;
    VATAmountLine: Record 290 temporary;
    DimSetEntry1: Record 480;
    DimSetEntry2: Record 480;
    RespCenter: Record 5714;
    Agrupar: Boolean;
    DescripcionAgrupar: Text[300];
    Valor: Decimal;
    Language: Codeunit Language;
    CurrExchRate: Record 330;
    TempPostedAsmLine: Record 911 temporary;
    VATClause: Record 560;
    TempLineFeeNoteOnReportHist: Record 1053 temporary;
    SalesInvCountPrinted: Codeunit 315;
    FormatAddr: Codeunit "Format Address";
    SegManagement: Codeunit 5051;
    SalesShipmentBuffer: Record 7190 temporary;
    PostedShipmentDate: Date;
    CustAddr: array[8]of Text[50];
    ShipToAddr: array[8]of Text[50];
    CompanyAddr: array[8]of Text[50];
    OrderNoText: Text[80];
    SalesPersonText: Text[30];
    VATNoText: Text[80];
    ReferenceText: Text[80];
    TotalText: Text[50];
    TotalExclVATText: Text[50];
    TotalInclVATText: Text[50];
    MoreLines: Boolean;
    NoOfCopies: Integer;
    NoOfLoops: Integer;
    CopyText: Text[30];
    ShowShippingAddr: Boolean;
    i: Integer;
    NextEntryNo: Integer;
    FirstValueEntryNo: Integer;
    DimText: Text[120];
    OldDimText: Text[75];
    ShowInternalInfo: Boolean;
    Continue: Boolean;
    LogInteraction: Boolean;
    VALVATBaseLCY: Decimal;
    VALVATAmountLCY: Decimal;
    VALSpecLCYHeader: Text[80];
    Text007: Label 'VAT Amount Specification in  ';
    Text008: Label 'Local Currency';
    VALExchRate: Text[50];
    Text009: Label 'Exchange rate: %1/%2';
    CalculatedExchRate: Decimal;
    Text010: Label 'Sales - Prepayment Invoice %1';
    OutputNo: Integer;
    TotalSubTotal: Decimal;
    TotalAmount: Decimal;
    TotalAmountInclVAT: Decimal;
    TotalAmountVAT: Decimal;
    TotalInvoiceDiscountAmount: Decimal;
    TotalPaymentDiscountOnVAT: Decimal;
    Text1100000: Label 'Total %1 Incl. VAT+EC';
    Text1100001: Label 'Total %1 Excl. VAT+EC';
    VATPostingSetup: Record 325;
    PaymentMethod: Record 289;
    TotalGivenAmount: Decimal;
    [InDataSet]
    LogInteractionEnable: Boolean;
    DisplayAssemblyInformation: Boolean;
    PhoneNoCaptionLbl: Label 'Phone No.';
    VATRegNoCaptionLbl: Label 'VAT Registration No.';
    GiroNoCaptionLbl: Label 'Giro No.';
    BankNameCaptionLbl: Label 'Bank';
    BankAccNoCaptionLbl: Label 'Account No.';
    DueDateCaptionLbl: Label 'Due Date';
    InvoiceNoCaptionLbl: Label 'Invoice No.';
    PostingDateCaptionLbl: Label 'Posting Date';
    HdrDimsCaptionLbl: Label 'Header Dimensions';
    PmtinvfromdebtpaidtoFactCompCaptionLbl: Label 'The payment of this invoice, in order to be released from the debt, has to be paid to the Factoring Company.';
    UnitPriceCaptionLbl: Label 'Unit Price';
    DiscountCaptionLbl: Label 'Discount %';
    AmtCaptionLbl: Label 'Amount';
    VATClausesCap: Label 'VAT Clause';
    PostedShpDateCaptionLbl: Label 'Posted Shipment Date';
    InvDiscAmtCaptionLbl: Label 'Invoice Discount Amount';
    SubtotalCaptionLbl: Label 'Subtotal';
    PmtDiscGivenAmtCaptionLbl: Label 'Payment Disc Given Amount';
    PmtDiscVATCaptionLbl: Label 'Payment Discount on VAT';
    ShpCaptionLbl: Label 'Shipment';
    LineDimsCaptionLbl: Label 'Line Dimensions';
    VATAmtLineVATCaptionLbl: Label 'VAT %';
    VATECBaseCaptionLbl: Label 'VAT+EC Base';
    VATAmountCaptionLbl: Label 'VAT Amount';
    VATAmtSpecCaptionLbl: Label 'VAT Amount Specification';
    VATIdentCaptionLbl: Label 'VAT Identifier';
    InvDiscBaseAmtCaptionLbl: Label 'Invoice Discount Base Amount';
    LineAmtCaption1Lbl: Label 'Line Amount';
    InvPmtDiscCaptionLbl: Label 'Invoice and Payment Discounts';
    ECAmtCaptionLbl: Label 'EC Amount';
    ECCaptionLbl: Label 'EC %';
    TotalCaptionLbl: Label 'Total';
    VALVATBaseLCYCaption1Lbl: Label 'VAT Base';
    VATAmtCaptionLbl: Label 'VAT Amount';
    VATIdentifierCaptionLbl: Label 'VAT Identifier';
    ShiptoAddressCaptionLbl: Label 'Ship-to Address';
    PmtTermsDescCaptionLbl: Label 'Payment Terms';
    ShpMethodDescCaptionLbl: Label 'Shipment Method';
    PmtMethodDescCaptionLbl: Label 'Payment Method';
    DocDateCaptionLbl: Label 'Document Date';
    HomePageCaptionCap: Label 'Home Page';
    EmailCaptionLbl: Label 'E-Mail';
    CACCaptionLbl: Text;
    CACTxt: Label 'Special scheme of the cash criterion';
    DisplayAdditionalFeeNote: Boolean;
    //"-----------------------------INFORPRESS-------------------------------------------------------------------------------------"
    InvTitleTextLbl: Label 'INVOICE';
    ClientNoTextLbl: Label 'Customer No';
    PostingDateTextLbl: Label 'Posting Date';
    DueDateTextLbl: Label 'Due Date';
    Text50002: Label 'Vendor: %1';
    TxtCust: Text[100];
    VATRegNoLbl: Label 'Customer VAT Registration No.';
    ImpPie: array[10, 3]of Decimal;
    TaxAmountTextLbl: Label 'TAXABLE AMOUNT';
    TotalAmountTextLbl: Label 'TOTAL AMOUNT';
    IVATextLbl: Label 'V.A.T.';
    MemInt: Record "MemIntAcumulados Inv" temporary;
    bConGastos: Boolean;
    PaymentMethodTextLbl: Label 'PAYMENT METHOD';
    ShipmentMethodTextLbl: Label 'Shipment Method';
    pais: Record 9;
    PercentTextLbl: Label '%';
    Text50003: Label 'SWIFT = %1 + IBAN: %2';
    TxtBank: array[2]of Text[100];
    mTxt: array[7]of Text[250];
    Txt: array[2]of Text[100];
    V: array[2]of Decimal;
    Bank: Record 270;
    TXTSeminario: Text[1024];
    Text50000: Label 'BRACH DETAILS: %1';
    CustledgEntry: Record 21;
    Vto: Date;
    TextoOpcCliente: Text[100];
    Job: Record Job;
    bConLogo: Boolean;
    ConfigGasto: Record "Expense Setup";
    Text50001: Label 'Your order no: %1';
    Description_SalesInvLineTextLbl: Label 'Description';
    Amount_SalesInvLineTextLbl: Label 'Amount';
    ContinuedTxt: Label 'Continued';
    bSoloCopia: Boolean;
    isAssistant: Boolean;
    SalesLine: Record 113;
    AssistantTxt: Label 'Assistant';
    Signature: Text;
    CreateSignature: Codeunit "Create Signature";
    bShowFirstLine: Boolean;
    code_moneda: Code[10];
    "--EX-QR": Integer;
    CduQRFunc: Codeunit "QR Functions";
    CduQRFuncATREVIA: codeunit QRFunctionsATREVIA;
    CduConvert: Codeunit "Base64 Convert";
    TxtImageQR: Text;
    IStream: InStream;
    OStream: OutStream;
    HashText: Text[172];
    SalesLines: Record "Sales Invoice Line";
    JobTable: Record Job;
    procedure InitLogInteraction()
    var
        DocumentType: Enum "Interaction Log Entry Document Type";
    begin
        // LogInteraction := SegManagement.FindInteractTmplCode(4) <> '';
        DocumentType:=enum::"Interaction Log Entry Document Type".FromInteger(4);
        LogInteraction:=SegManagement.FindInteractionTemplateCode(DocumentType) <> '';
    end;
    procedure FindPostedShipmentDate(): Date var
        SalesShipmentHeader: Record 110;
        SalesShipmentBuffer2: Record 7190 temporary;
    begin
        NextEntryNo:=1;
        IF "Sales Invoice Line"."Shipment No." <> '' THEN IF SalesShipmentHeader.GET("Sales Invoice Line"."Shipment No.")THEN EXIT(SalesShipmentHeader."Posting Date");
        IF "Sales Invoice Header"."Order No." = '' THEN EXIT("Sales Invoice Header"."Posting Date");
        CASE "Sales Invoice Line".Type OF "Sales Invoice Line".Type::Item: GenerateBufferFromValueEntry("Sales Invoice Line");
        "Sales Invoice Line".Type::"G/L Account", "Sales Invoice Line".Type::Resource, "Sales Invoice Line".Type::"Charge (Item)", "Sales Invoice Line".Type::"Fixed Asset": GenerateBufferFromShipment("Sales Invoice Line");
        "Sales Invoice Line".Type::" ": EXIT(0D);
        END;
        SalesShipmentBuffer.Reset();
        SalesShipmentBuffer.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", "Sales Invoice Line"."Line No.");
        IF SalesShipmentBuffer.FIND('-')THEN BEGIN
            SalesShipmentBuffer2:=SalesShipmentBuffer;
            IF SalesShipmentBuffer.Next() = 0 THEN BEGIN
                SalesShipmentBuffer.GET(SalesShipmentBuffer2."Document No.", SalesShipmentBuffer2."Line No.", SalesShipmentBuffer2."Entry No.");
                SalesShipmentBuffer.Delete();
                EXIT(SalesShipmentBuffer2."Posting Date");
            END;
            SalesShipmentBuffer.CALCSUMS(Quantity);
            IF SalesShipmentBuffer.Quantity <> "Sales Invoice Line".Quantity THEN BEGIN
                SalesShipmentBuffer.DeleteAll();
                EXIT("Sales Invoice Header"."Posting Date");
            END;
        END
        ELSE
            EXIT("Sales Invoice Header"."Posting Date");
    end;
    procedure GenerateBufferFromValueEntry(SalesInvoiceLine2: Record 113)
    var
        ValueEntry: Record 5802;
        ItemLedgerEntry: Record 32;
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity:=SalesInvoiceLine2."Quantity (Base)";
        ValueEntry.SETCURRENTKEY("Document No.");
        ValueEntry.SETRANGE("Document No.", SalesInvoiceLine2."Document No.");
        ValueEntry.SETRANGE("Posting Date", "Sales Invoice Header"."Posting Date");
        ValueEntry.SETRANGE("Item Charge No.", '');
        ValueEntry.SETFILTER("Entry No.", '%1..', FirstValueEntryNo);
        IF ValueEntry.FIND('-')THEN REPEAT IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.")THEN BEGIN
                    IF SalesInvoiceLine2."Qty. per Unit of Measure" <> 0 THEN Quantity:=ValueEntry."Invoiced Quantity" / SalesInvoiceLine2."Qty. per Unit of Measure"
                    ELSE
                        Quantity:=ValueEntry."Invoiced Quantity";
                    AddBufferEntry(SalesInvoiceLine2, -Quantity, ItemLedgerEntry."Posting Date");
                    TotalQuantity:=TotalQuantity + ValueEntry."Invoiced Quantity";
                END;
                FirstValueEntryNo:=ValueEntry."Entry No." + 1;
            UNTIL(ValueEntry.Next() = 0) OR (TotalQuantity = 0);
    end;
    procedure GenerateBufferFromShipment(SalesInvoiceLine: Record 113)
    var
        SalesInvoiceHeader: Record 112;
        SalesInvoiceLine2: Record 113;
        SalesShipmentHeader: Record 110;
        SalesShipmentLine: Record 111;
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity:=0;
        SalesInvoiceHeader.SETCURRENTKEY("Order No.");
        SalesInvoiceHeader.SETFILTER("No.", '..%1', "Sales Invoice Header"."No.");
        SalesInvoiceHeader.SETRANGE("Order No.", "Sales Invoice Header"."Order No.");
        IF SalesInvoiceHeader.FIND('-')THEN REPEAT SalesInvoiceLine2.SETRANGE("Document No.", SalesInvoiceHeader."No.");
                SalesInvoiceLine2.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
                SalesInvoiceLine2.SETRANGE(Type, SalesInvoiceLine.Type);
                SalesInvoiceLine2.SETRANGE("No.", SalesInvoiceLine."No.");
                SalesInvoiceLine2.SETRANGE("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
                IF SalesInvoiceLine2.FIND('-')THEN REPEAT TotalQuantity:=TotalQuantity + SalesInvoiceLine2.Quantity;
                    UNTIL SalesInvoiceLine2.Next() = 0;
            UNTIL SalesInvoiceHeader.Next() = 0;
        SalesShipmentLine.SETCURRENTKEY("Order No.", "Order Line No.");
        SalesShipmentLine.SETRANGE("Order No.", "Sales Invoice Header"."Order No.");
        SalesShipmentLine.SETRANGE("Order Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE(Type, SalesInvoiceLine.Type);
        SalesShipmentLine.SETRANGE("No.", SalesInvoiceLine."No.");
        SalesShipmentLine.SETRANGE("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
        SalesShipmentLine.SETFILTER(Quantity, '<>%1', 0);
        IF SalesShipmentLine.FIND('-')THEN REPEAT IF "Sales Invoice Header"."Get Shipment Used" THEN CorrectShipment(SalesShipmentLine);
                IF ABS(SalesShipmentLine.Quantity) <= ABS(TotalQuantity - SalesInvoiceLine.Quantity)THEN TotalQuantity:=TotalQuantity - SalesShipmentLine.Quantity
                ELSE
                BEGIN
                    IF ABS(SalesShipmentLine.Quantity) > ABS(TotalQuantity)THEN SalesShipmentLine.Quantity:=TotalQuantity;
                    Quantity:=SalesShipmentLine.Quantity - (TotalQuantity - SalesInvoiceLine.Quantity);
                    TotalQuantity:=TotalQuantity - SalesShipmentLine.Quantity;
                    SalesInvoiceLine.Quantity:=SalesInvoiceLine.Quantity - Quantity;
                    IF SalesShipmentHeader.GET(SalesShipmentLine."Document No.")THEN AddBufferEntry(SalesInvoiceLine, Quantity, SalesShipmentHeader."Posting Date");
                END;
            UNTIL(SalesShipmentLine.Next() = 0) OR (TotalQuantity = 0);
    end;
    procedure CorrectShipment(var SalesShipmentLine: Record 111)
    var
        SalesInvoiceLine: Record 113;
    begin
        SalesInvoiceLine.SETCURRENTKEY("Shipment No.", "Shipment Line No.");
        SalesInvoiceLine.SETRANGE("Shipment No.", SalesShipmentLine."Document No.");
        SalesInvoiceLine.SETRANGE("Shipment Line No.", SalesShipmentLine."Line No.");
        IF SalesInvoiceLine.FIND('-')THEN REPEAT SalesShipmentLine.Quantity:=SalesShipmentLine.Quantity - SalesInvoiceLine.Quantity;
            UNTIL SalesInvoiceLine.Next() = 0;
    end;
    procedure AddBufferEntry(SalesInvoiceLine: Record 113; QtyOnShipment: Decimal; PostingDate: Date)
    begin
        SalesShipmentBuffer.SETRANGE("Document No.", SalesInvoiceLine."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentBuffer.SETRANGE("Posting Date", PostingDate);
        IF SalesShipmentBuffer.FIND('-')THEN BEGIN
            SalesShipmentBuffer.Quantity:=SalesShipmentBuffer.Quantity + QtyOnShipment;
            SalesShipmentBuffer.Modify();
            EXIT;
        END;
        SalesShipmentBuffer."Document No.":=SalesInvoiceLine."Document No.";
        SalesShipmentBuffer."Line No.":=SalesInvoiceLine."Line No.";
        SalesShipmentBuffer."Entry No.":=NextEntryNo;
        SalesShipmentBuffer.Type:=SalesInvoiceLine.Type;
        SalesShipmentBuffer."No.":=SalesInvoiceLine."No.";
        SalesShipmentBuffer.Quantity:=QtyOnShipment;
        SalesShipmentBuffer."Posting Date":=PostingDate;
        SalesShipmentBuffer.Insert();
        NextEntryNo:=NextEntryNo + 1 end;
    local procedure DocumentCaption(): Text[250]begin
        IF "Sales Invoice Header"."Prepayment Invoice" THEN EXIT(Text010);
        EXIT(Text004);
    end;
    procedure GetCarteraInvoice(): Boolean var
        CustLedgEntry: Record 21;
    begin
        CustLedgEntry.SETCURRENTKEY("Document No.", "Document Type", "Customer No.");
        CustLedgEntry.SETRANGE("Document Type", CustLedgEntry."Document Type"::Invoice);
        CustLedgEntry.SETRANGE("Document No.", "Sales Invoice Header"."No.");
        CustLedgEntry.SETRANGE("Customer No.", "Sales Invoice Header"."Bill-to Customer No.");
        CustLedgEntry.SETRANGE("Posting Date", "Sales Invoice Header"."Posting Date");
        IF CustLedgEntry.FINDFIRST THEN IF CustLedgEntry."Document Situation" = CustLedgEntry."Document Situation"::" " THEN EXIT(FALSE)
            ELSE
                EXIT(TRUE)
        ELSE
            EXIT(FALSE);
    end;
    procedure ShowCashAccountingCriteria(SalesInvoiceHeader: Record 112): Text var
        VATEntry: Record 254;
    begin
        GLSetup.Get();
        IF NOT GLSetup."Unrealized VAT" THEN EXIT;
        CACCaptionLbl:='';
        VATEntry.SETRANGE("Document No.", SalesInvoiceHeader."No.");
        VATEntry.SETRANGE("Document Type", VATEntry."Document Type"::Invoice);
        IF VATEntry.FindSet()then REPEAT IF VATEntry."VAT Cash Regime" THEN CACCaptionLbl:=CACTxt;
            UNTIL(VATEntry.Next() = 0) OR (CACCaptionLbl <> '');
        EXIT(CACCaptionLbl);
    end;
    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewLogInteraction: Boolean; DisplayAsmInfo: Boolean)
    begin
        NoOfCopies:=NewNoOfCopies;
        ShowInternalInfo:=NewShowInternalInfo;
        LogInteraction:=NewLogInteraction;
        DisplayAssemblyInformation:=DisplayAsmInfo;
    end;
    procedure CollectAsmInformation()
    var
        ValueEntry: Record 5802;
        ItemLedgerEntry: Record 32;
        PostedAsmHeader: Record 910;
        PostedAsmLine: Record 911;
        SalesShipmentLine: Record 111;
    begin
        TempPostedAsmLine.DeleteAll();
        IF "Sales Invoice Line".Type <> "Sales Invoice Line".Type::Item THEN EXIT;
        ValueEntry.SETCURRENTKEY("Document No.");
        ValueEntry.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
        ValueEntry.SETRANGE("Document Type", ValueEntry."Document Type"::"Sales Invoice");
        ValueEntry.SETRANGE("Document Line No.", "Sales Invoice Line"."Line No.");
        ValueEntry.SETRANGE(Adjustment, FALSE);
        IF NOT ValueEntry.FINDSET THEN EXIT;
        REPEAT IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.")THEN IF ItemLedgerEntry."Document Type" = ItemLedgerEntry."Document Type"::"Sales Shipment" THEN BEGIN
                    SalesShipmentLine.GET(ItemLedgerEntry."Document No.", ItemLedgerEntry."Document Line No.");
                    IF SalesShipmentLine.AsmToShipmentExists(PostedAsmHeader)THEN BEGIN
                        PostedAsmLine.SETRANGE("Document No.", PostedAsmHeader."No.");
                        IF PostedAsmLine.FindSet()then REPEAT TreatAsmLineBuffer(PostedAsmLine);
                            UNTIL PostedAsmLine.Next() = 0;
                    END;
                END;
        UNTIL ValueEntry.Next() = 0;
    end;
    procedure TreatAsmLineBuffer(PostedAsmLine: Record 911)
    begin
        CLEAR(TempPostedAsmLine);
        TempPostedAsmLine.SETRANGE(Type, PostedAsmLine.Type);
        TempPostedAsmLine.SETRANGE("No.", PostedAsmLine."No.");
        TempPostedAsmLine.SETRANGE("Variant Code", PostedAsmLine."Variant Code");
        TempPostedAsmLine.SETRANGE(Description, PostedAsmLine.Description);
        TempPostedAsmLine.SETRANGE("Unit of Measure Code", PostedAsmLine."Unit of Measure Code");
        IF TempPostedAsmLine.FindFirst()then BEGIN
            TempPostedAsmLine.Quantity+=PostedAsmLine.Quantity;
            TempPostedAsmLine.Modify();
        END
        ELSE
        BEGIN
            CLEAR(TempPostedAsmLine);
            TempPostedAsmLine:=PostedAsmLine;
            TempPostedAsmLine.Insert();
        END;
    end;
    procedure GetUOMText(UOMCode: Code[10]): Text[10]var
        UnitOfMeasure: Record 204;
    begin
        IF NOT UnitOfMeasure.GET(UOMCode)THEN EXIT(UOMCode);
        EXIT(UnitOfMeasure.Description);
    end;
    procedure BlanksForIndent(): Text[10]begin
        EXIT(PADSTR('', 2, ' '));
    end;
    local procedure GetLineFeeNoteOnReportHist(SalesInvoiceHeaderNo: Code[20])
    var
        LineFeeNoteOnReportHist: Record 1053;
        CustLedgerEntry: Record 21;
        Customer: Record 18;
    begin
        TempLineFeeNoteOnReportHist.DeleteAll();
        CustLedgerEntry.SETRANGE("Document Type", CustLedgerEntry."Document Type"::Invoice);
        CustLedgerEntry.SETRANGE("Document No.", SalesInvoiceHeaderNo);
        IF NOT CustLedgerEntry.FindFirst()then EXIT;
        IF NOT Customer.GET(CustLedgerEntry."Customer No.")THEN EXIT;
        LineFeeNoteOnReportHist.SETRANGE("Cust. Ledger Entry No", CustLedgerEntry."Entry No.");
        LineFeeNoteOnReportHist.SETRANGE("Language Code", Customer."Language Code");
        IF LineFeeNoteOnReportHist.FindSet()then BEGIN
            REPEAT TempLineFeeNoteOnReportHist.Init();
                TempLineFeeNoteOnReportHist.COPY(LineFeeNoteOnReportHist);
                TempLineFeeNoteOnReportHist.Insert();
            UNTIL LineFeeNoteOnReportHist.Next() = 0;
        END
        ELSE
        BEGIN
            //LineFeeNoteOnReportHist.SETRANGE("Language Code", Language.Code);
            LineFeeNoteOnReportHist.SETRANGE("Language Code");
            IF LineFeeNoteOnReportHist.FindSet()then REPEAT TempLineFeeNoteOnReportHist.Init();
                    TempLineFeeNoteOnReportHist.COPY(LineFeeNoteOnReportHist);
                    TempLineFeeNoteOnReportHist.Insert();
                UNTIL LineFeeNoteOnReportHist.Next() = 0;
        END;
    end;
    procedure MuestraLinea(): Boolean begin
        IF "Sales Invoice Line"."Line Type" = "Sales Invoice Line"."Line Type"::Expense THEN EXIT(FALSE);
        EXIT("Sales Invoice Line"."Line Type" = 0);
    end;
    procedure GetBankno(): Text[50]begin
        IF Bank.IBAN = '' THEN EXIT;
        EXIT(STRSUBSTNO('%1 %2 %3 %4 %5', COPYSTR(Bank.IBAN, 1, 4), COPYSTR(Bank.IBAN, 5, 4), COPYSTR(Bank.IBAN, 9, 4), COPYSTR(Bank.IBAN, 13, 2), COPYSTR(Bank.IBAN, 15, 20)));
    end;
    local procedure FormatNumber(Q: Decimal; Decim: Integer)T: Text var
        Text012: Label '<Precision,%1><Standard Format,0>';
    begin
        //Función para dar formato a las Quantitys
        T:=FORMAT(Q, 0, STRSUBSTNO('<Precision,%1><Standard Format,0>', FORMAT(Decim)));
    end;
    procedure UseSAFT(): Boolean var
        CompanyInfo: Record 79;
    begin
        //>>INF.001
        CompanyInfo.Get();
        EXIT(CompanyInfo."Use SAF-T");
    //<<INF.001
    end;
}
