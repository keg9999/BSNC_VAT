using { sap.ui.BSNC_VAT_0010 as schema } from '../../db/BSNC_VAT_0010';

//
// annotations that control rendering of fields and labels
//

annotate schema.BSNC_VAT_0010H with {
	OBJECTCODE      @UI.Hidden @title: '오브젝트';
    COMPANYCD       @title: '회사코드';
    CANCELED        @title: '취소';
	COMMIT          @title: 'COMMIT';
	UNACTIVE        @title: '비활성';
	STRDATE         @title: '효력시작일';
	ENDDATE         @title: '효력종료일';
	CODE            @title: '분류';
	NAME            @title: '분류명';
	REMARK          @title: '비고';
    BSNC_VAT_0000L
}

annotate schema.BSNC_VAT_0010L with @title: 'BSNC_VAT_0010L'{
    OBJECTNUM       @UI.Hidden;
    P_OBJECTNUM     @UI.Hidden;
    //CODE            @title: 'CODE';
	LINEID          @title: '#';
    VALCD           @title: '코드';
    VALNM           @title: '이름';
    USERYN          @title: '사용여부';
    SORT            @title: '정렬순서';
	RMK1            @title: '비고1';
    RMK2            @title: '비고2';
}