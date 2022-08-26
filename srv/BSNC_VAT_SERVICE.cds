using { sap.ui.BSNC_VAT_0000 as my0000 } from '../db/BSNC_VAT_0000';
using { sap.ui.BSNC_VAT_0030 as my0030 } from '../db/BSNC_VAT_0030';
using { sap.ui.BSNC_VAT_0040 as my0040 } from '../db/BSNC_VAT_0040';
using { sap.ui.BSNC_VAT_0050 as my0050 } from '../db/BSNC_VAT_0050';

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
service BSNC_VAT_0050_SERVICE {
  entity BSNC_VAT_0050H as projection on my0050.BSNC_VAT_0050H;
    annotate BSNC_VAT_0050H with @odata.draft.enabled;
  entity BSNC_VAT_0050L as projection on my0050.BSNC_VAT_0050L;
    annotate BSNC_VAT_0050L with @cds.odata.valuelist;
  entity BSNC_VAT_0050M as projection on my0050.BSNC_VAT_0050M;
    annotate BSNC_VAT_0050M with @cds.odata.valuelist;
  entity BSNC_VAT_0050N as projection on my0050.BSNC_VAT_0050N;
    annotate BSNC_VAT_0050N with @cds.odata.valuelist;
  entity BSNC_VAT_0050O as projection on my0050.BSNC_VAT_0050O;
    annotate BSNC_VAT_0050O with @cds.odata.valuelist;
}