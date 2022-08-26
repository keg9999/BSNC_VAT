using BSNC_VAT_0060_SERVICE from '../../srv/BSNC_VAT_SERVICE';

//
// annotations that control the behavior of fields and actions
//

annotate BSNC_VAT_0060_SERVICE.BSNC_VAT_0060H_UI {
    BPLID                                       @mandatory;
    YEAR                                        @mandatory;      
    GUBUN                                       @mandatory;
    REFDATE                                     @mandatory;
    BILLYN                                      @mandatory;  
}
