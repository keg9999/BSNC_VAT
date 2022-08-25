using BSNC_VAT_0010_SERVICE from '../../srv/BSNC_VAT_SERVICE';

//
// annotations that control the behavior of fields and actions
//

annotate BSNC_VAT_0010_SERVICE.BSNC_VAT_0010H {
    COMPANYCD                                   @mandatory;
    OBJECTCODE                                  @mandatory;
    OBJECTNUM                                   @mandatory;
    CANCELED                                    @mandatory;
    COMMIT                                      @mandatory;
    UNACTIVE                                    @mandatory;
    STRDATE                                     @mandatory;
    ENDDATE                                     @mandatory;
    CODE                                        @mandatory;
}

annotate BSNC_VAT_0000_SERVICE.BSNC_VAT_0000L {
    CODE                                        @mandatory;
};
