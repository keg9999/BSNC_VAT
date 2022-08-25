using { sap.ui.BSNC_VAT_0020 as my0020 } from '../db/BSNC_VAT_0020';

@path:'service/BSNC_VAT_0020'
service BSNC_VAT_0020_SERVICE {
  entity BSNC_VAT_0020H as projection on my0020.BSNC_VAT_0020H;
    annotate BSNC_VAT_0020H with @odata.draft.enabled;
  entity BSNC_VAT_0020L as projection on my0020.BSNC_VAT_0020L;
    annotate BSNC_VAT_0020L with @cds.odata.valuelist
}
