using { sap.ui.BSNC_VAT_0000 as my0000 } from '../db/BSNC_VAT_0000';

@path:'service/BSNC_VAT_0000'
service BSNC_VAT_0000_SERVICE {
  entity BSNC_VAT_0000H as projection on my0000.BSNC_VAT_0000H;
    annotate BSNC_VAT_0000H with @odata.draft.enabled;
  entity BSNC_VAT_0000L as projection on my0000.BSNC_VAT_0000L;
    annotate BSNC_VAT_0000L with @cds.odata.valuelist
}