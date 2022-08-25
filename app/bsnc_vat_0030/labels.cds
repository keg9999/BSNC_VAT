using { sap.ui.BSNC_VAT_0030 as schema } from '../../db/BSNC_VAT_0030';

//
// annotations that control rendering of fields and labels
//

annotate schema.BSNC_VAT_0030H with {
	OBJECTCODE      @UI.Hidden;
    COMPANYCD       @title: '회사코드';
    CANCELED        @title: '취소됨';
	COMMIT          @title: 'Commit';
	UNACTIVE        @title: '비활성';
	STRDATE         @title: '효력시작일';
	ENDDATE         @title: '효력종료일';
	CODE            @title: '코드';
	NAME            @title: '이름';
	REMARK          @title: '비고';
}

annotate schema.BSNC_VAT_0030L with @title: 'BSNC_VAT_0030L'{
    OBJECTNUM       @UI.Hidden;
    P_OBJECTNUM     @UI.Hidden;
    //CODE            @title: '코드';
    LCODE           @title: '하위코드';
    LNAME           @title : '하위이름';
	REMARK          @title: '비고';
}