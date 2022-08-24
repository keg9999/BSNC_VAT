using BSNC_VAT_0000_SERVICE from '../../srv/BSNC_VAT_0000_SERVICE';

//
// annotations that control the behavior of fields and actions
//

annotate BSNC_VAT_0000_SERVICE.BSNC_VAT_0000H {
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