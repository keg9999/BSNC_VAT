using BSNC_VAT_0040_SERVICE from '../../srv/BSNC_VAT_SERVICE';

//
// annotations that control the behavior of fields and actions
//

annotate BSNC_VAT_0040_SERVICE.BSNC_VAT_0040H {
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

annotate BSNC_VAT_0040_SERVICE.BSNC_VAT_0040L {
    YEAR                                         @mandatory;
    GUBUN                                        @mandatory;
}