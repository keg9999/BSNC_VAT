using { sap.ui.BSNC_VAT_0010 as my0010 } from '../db/BSNC_VAT_0010';

@path:'service/BSNC_VAT_0010'
service BSNC_VAT_0010_SERVICE {
  entity BSNC_VAT_0010H as projection on my0010.BSNC_VAT_0010H;
    annotate BSNC_VAT_0010H with @odata.draft.enabled;
  entity BSNC_VAT_0010L as projection on my0010.BSNC_VAT_0010L;
    annotate BSNC_VAT_0010L with @cds.odata.valuelist
}
