using { sap.ui.BSNC_VAT_0000 as my0000 } from '../db/BSNC_VAT_0000';
using { sap.ui.BSNC_VAT_0030 as my0030 } from '../db/BSNC_VAT_0030';
using { sap.ui.BSNC_VAT_0040 as my0040 } from '../db/BSNC_VAT_0040';

@path:'service/BSNC_VAT_SERVICE'
service BSNC_VAT_0000_SERVICE {
  entity BSNC_VAT_0000H as projection on my0000.BSNC_VAT_0000H;
    annotate BSNC_VAT_0000H with @odata.draft.enabled;
  entity BSNC_VAT_0000L as projection on my0000.BSNC_VAT_0000L;
    annotate BSNC_VAT_0000L with @cds.odata.valuelist
}
service BSNC_VAT_0030_SERVICE {
  entity BSNC_VAT_0030H as projection on my0030.BSNC_VAT_0030H;
    annotate BSNC_VAT_0030H with @odata.draft.enabled;
  entity BSNC_VAT_0030L as projection on my0030.BSNC_VAT_0030L;
    annotate BSNC_VAT_0030L with @cds.odata.valuelist
}
service BSNC_VAT_0040_SERVICE {
  entity BSNC_VAT_0040H as projection on my0040.BSNC_VAT_0040H;
    annotate BSNC_VAT_0040H with @odata.draft.enabled;
  entity BSNC_VAT_0040L as projection on my0040.BSNC_VAT_0040L;
    annotate BSNC_VAT_0040L with @cds.odata.valuelist
}