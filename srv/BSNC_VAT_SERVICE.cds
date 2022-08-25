using { sap.ui.BSNC_VAT_0000 as my0000 } from '../db/BSNC_VAT_0000';
using { sap.ui.BSNC_VAT_0010 as my0010 } from '../db/BSNC_VAT_0010';
using { sap.ui.BSNC_VAT_0020 as my0020 } from '../db/BSNC_VAT_0020';


@path:'service/BSNC_VAT'
service BSNC_VAT_0000_SERVICE {
  entity BSNC_VAT_0000H as projection on my0000.BSNC_VAT_0000H;
    annotate BSNC_VAT_0000H with @odata.draft.enabled;
  entity BSNC_VAT_0000L as projection on my0000.BSNC_VAT_0000L;
    annotate BSNC_VAT_0000L with @cds.odata.valuelist;
}

//@path:'service/BSNC_VAT'
service BSNC_VAT_0020_SERVICE {
  entity BSNC_VAT_0020H as projection on my0020.BSNC_VAT_0020H;
    annotate BSNC_VAT_0020H with @odata.draft.enabled;
  entity BSNC_VAT_0020L as projection on my0020.BSNC_VAT_0020L;
    annotate BSNC_VAT_0020L with @cds.odata.valuelist
}

//@path:'service/BSNC_VAT'
service BSNC_VAT_0010_SERVICE {
  entity BSNC_VAT_0010H as projection on my0010.BSNC_VAT_0010H;
    annotate BSNC_VAT_0010H with @odata.draft.enabled;
  entity BSNC_VAT_0010L as projection on my0010.BSNC_VAT_0010L;
    annotate BSNC_VAT_0010L with @cds.odata.valuelist
}
