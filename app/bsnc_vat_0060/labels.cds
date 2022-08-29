using { sap.ui.BSNC_VAT_0060 as schema0060 } from '../../db/BSNC_VAT_0060';

//
// annotations that control rendering of fields and labels
//
annotate schema0060.BSNC_VAT_0060_UI with {
    OBJECTNUM       @UI.Hidden;
    BPLID           @title: '사업장';
    YEAR            @title: '년도';       
    GUBUN           @title: '구분';
    REFDATE         @title: '집계기준일';
    BILLYN          @title: '계산서포함';     
}