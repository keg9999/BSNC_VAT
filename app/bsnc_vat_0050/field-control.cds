using BSNC_VAT_0050_SERVICE from '../../srv/BSNC_VAT_SERVICE';

//
// annotations that control the behavior of fields and actions
//

annotate BSNC_VAT_0050_SERVICE.BSNC_VAT_0050H {
    COMPANYCD                                   @mandatory;
    OBJECTCODE                                  @mandatory;
    OBJECTNUM                                   @mandatory;
    CANCELED                                    @mandatory;
    COMMIT                                      @mandatory;
    UNACTIVE                                    @mandatory;
    STRDATE                                     @mandatory;
    ENDDATE                                     @mandatory;
    YEAR                                        @mandatory;
    GUBUN                                       @mandatory;
}

annotate BSNC_VAT_0050_SERVICE.BSNC_VAT_0050L {
    VCODE                                         @mandatory;
}

annotate BSNC_VAT_0050_SERVICE.BSNC_VAT_0050M {
    VCODE                                         @mandatory;
    VNAME                                         @mandatory;
}

annotate BSNC_VAT_0050_SERVICE.BSNC_VAT_0050N {
    INDUSTRY                                         @mandatory;
    BUSINESS                                         @mandatory;
    TYPECODE                                         @mandatory;
}

annotate BSNC_VAT_0050_SERVICE.BSNC_VAT_0050O {
    INDUSTRY                                         @mandatory;
    BUSINESS                                         @mandatory;
    TYPECODE                                         @mandatory;
}