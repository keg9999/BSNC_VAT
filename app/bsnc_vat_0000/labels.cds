using { sap.ui.BSNC_VAT_0000 as schema } from '../../db/BSNC_VAT_0000';

//
// annotations that control rendering of fields and labels
//

annotate schema.BSNC_VAT_0000H with {
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
    //BSNC_VAT_0000_SERVICE
}

annotate schema.BSNC_VAT_0000L with @title: 'BSNC_VAT_0000L'{
    OBJECTNUM       @UI.Hidden;
    P_OBJECTNUM     @UI.Hidden;
    CODE            @title: '코드';
	REMARK          @title: '비고';
	LINEID          @title: '#';
	GCODE           @title: '항목';
    GNAME           @title: '항목명';
    USEYN           @title: '사용';
    SEQ             @title: '순서';
    LINEMEMO        @title: '비고';
    REF1            @title: '참조1';
    REF2            @title: '참조2';
    REF3            @title: '참조3';
}