using { sap.ui.vatmanagement as my } from '../db/schema';
@path: 'service/vat'
service VatService {
  entity BSNC_VAT_0000H as projection on my.BSNC_VAT_0000H;
    annotate BSNC_VAT_0000H with @odata.draft.enabled;
  //  entity BSNC_VAT_0000L as projection on my.BSNC_VAT_0000L;
  //    annotate BSNC_VAT_0000L with @cds.odata.valuelist
}