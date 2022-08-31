using { sap.ui.BSNC_VAT_0000 as my0000 } from '../db/BSNC_VAT_0000';
using { sap.ui.BSNC_VAT_0010 as my0010 } from '../db/BSNC_VAT_0010';
using { sap.ui.BSNC_VAT_0020 as my0020 } from '../db/BSNC_VAT_0020';
using { sap.ui.BSNC_VAT_0030 as my0030 } from '../db/BSNC_VAT_0030';
using { sap.ui.BSNC_VAT_0040 as my0040 } from '../db/BSNC_VAT_0040';
using { sap.ui.BSNC_VAT_0050 as my0050 } from '../db/BSNC_VAT_0050';
using { sap.ui.BSNC_VAT_0060 as my0060 } from '../db/BSNC_VAT_0060';
using { sap.ui.BSNC_VAT_0080 as my0080 } from '../db/BSNC_VAT_0080';
using { sap.ui.BSNC_VAT_0110 as my0110 } from '../db/BSNC_VAT_0110';
using { sap.ui.BSNC_VAT_0120 as my0120 } from '../db/BSNC_VAT_0120';
using { sap.ui.BSNC_VAT_0130 as my0130 } from '../db/BSNC_VAT_0130';



@path:'service/BSNC_VAT'
service BSNC_VAT_0000_SERVICE {
  entity BSNC_VAT_0000H as projection on my0000.BSNC_VAT_0000H;
    annotate BSNC_VAT_0000H with @odata.draft.enabled;
  entity BSNC_VAT_0000L as projection on my0000.BSNC_VAT_0000L;
    annotate BSNC_VAT_0000L with @cds.odata.valuelist;
}

//@path:'service/BSNC_VAT'
service BSNC_VAT_0010_SERVICE {
  entity BSNC_VAT_0010H as projection on my0010.BSNC_VAT_0010H;
    annotate BSNC_VAT_0010H with @odata.draft.enabled;
  entity BSNC_VAT_0010L as projection on my0010.BSNC_VAT_0010L;
    annotate BSNC_VAT_0010L with @cds.odata.valuelist
}

//@path:'service/BSNC_VAT'
service BSNC_VAT_0020_SERVICE {
  entity BSNC_VAT_0020H as projection on my0020.BSNC_VAT_0020H;
    annotate BSNC_VAT_0020H with @odata.draft.enabled;
  entity BSNC_VAT_0020L as projection on my0020.BSNC_VAT_0020L;
    annotate BSNC_VAT_0020_TAXTYPE with @cds.odata.valuelist;
  //value help 선택리스트
  entity BSNC_VAT_0020_TAXTYPE as projection on my0020.BSNC_VAT_0020_TAXTYPE;
    annotate BSNC_VAT_0020_TAXTYPE with @odata.draft.enabled;
  entity BSNC_VAT_0020_ETAX as projection on my0020.BSNC_VAT_0020_ETAX;
    annotate BSNC_VAT_0020_ETAX with @odata.draft.enabled;
  entity BSNC_VAT_0020_FIXTAX as projection on my0020.BSNC_VAT_0020_FIXTAX;
    annotate BSNC_VAT_0020_FIXTAX with @odata.draft.enabled;
  entity BSNC_VAT_0020_NONDEDCT as projection on my0020.BSNC_VAT_0020_NONDEDCT;
    annotate BSNC_VAT_0020_NONDEDCT with @odata.draft.enabled;
  entity BSNC_VAT_0020_CREDITCD as projection on my0020.BSNC_VAT_0020_CREDITCD;
    annotate BSNC_VAT_0020_CREDITCD with @odata.draft.enabled;
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

service BSNC_VAT_0060_SERVICE {
  entity BSNC_VAT_0060H as projection on my0060.BSNC_VAT_0060H;
    annotate BSNC_VAT_0060H with @odata.draft.enabled;
  entity BSNC_VAT_0060H_UI as projection on my0060.BSNC_VAT_0060H_UI;
    annotate BSNC_VAT_0060H_UI with @odata.draft.enabled;
}

service BSNC_VAT_0080_SERVICE {
  entity BSNC_VAT_0080H as projection on my0080.BSNC_VAT_0080H;
    //annotate BSNC_VAT_0080H with @odata.draft.enabled;
  entity BSNC_BPLID as projection on my0080.BSNC_BPLID;
    annotate BSNC_BPLID with @odata.draft.enabled;
}

service BSNC_VAT_0110_SERVICE {
  entity BSNC_VAT_0110H as projection on my0110.BSNC_VAT_0110H;
    annotate BSNC_VAT_0110H with @odata.draft.enabled;
  entity BSNC_VAT_0110L as projection on my0110.BSNC_VAT_0110L;
    annotate BSNC_VAT_0110L with @cds.odata.valuelist;
}

service BSNC_VAT_0120_SERVICE {
  entity BSNC_VAT_0120H as projection on my0120.BSNC_VAT_0120H;
    annotate BSNC_VAT_0120H with @odata.draft.enabled;
}

service BSNC_VAT_0130_SERVICE {
  entity BSNC_VAT_0130H as projection on my0130.BSNC_VAT_0130H;
    annotate BSNC_VAT_0130H with @odata.draft.enabled;
}

