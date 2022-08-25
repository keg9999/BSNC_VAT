using { sap.ui.BSNC_VAT_0020 as schema } from '../../db/BSNC_VAT_0020';

//
// annotations that control rendering of fields and labels
//

annotate schema.BSNC_VAT_0020H with {
	OBJECTCODE      @UI.Hidden @title: '오브젝트';
    COMPANYCD       @title: '회사코드';
    CANCELED        @title: '취소';
	COMMIT          @title: 'COMMIT';
	UNACTIVE        @title: '비활성';
	STRDATE         @title: '효력시작일';
	ENDDATE         @title: '효력종료일';
	CODE            @title: '코드';
	NAME            @title: '이름';
	REMARK          @title: '비고';
    CATEGORY        @title: '범주';
}

annotate schema.BSNC_VAT_0020L with {
    TAXCODE         @title: '부가세코드';
    TAXNAME         @title: '부가세이름';
    TAXTYPE         @title: '세금유형';
    ETAX            @title: '전자/일반';
    FIXTAX          @title: '고정자산';
    NONDEDCT        @title: '불공제';
    CREDITCD        @title: '신용카드';
    DEEMTAX         @title: '의제매입';
    ETCTAX          @title: '기타매출';
    REMARK          @title: 'REMARK';
}
