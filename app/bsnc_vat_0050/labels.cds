using { sap.ui.BSNC_VAT_0050 as schema0050 } from '../../db/BSNC_VAT_0050';

//
// annotations that control rendering of fields and labels
//

annotate schema0050.BSNC_VAT_0050H with {
	OBJECTCODE      @UI.Hidden;
    COMPANYCD       @title: '회사코드';
    OBJECTNUM       @UI.Hidden;
    CANCELED        @title: '취소됨';
	COMMIT          @title: 'Commit';
	UNACTIVE        @title: '비활성';
	STRDATE         @title: '효력시작일';
	ENDDATE         @title: '효력종료일';
	YEAR            @title: '년도';
    GUBUN           @title: '구분';
    MM              @title: '월';
    BPLID           @title: '사업장';
    CONFIRM         @title: '확정';
    YENRVAT         @title: '예정신고 미환급세액';
    YENOVAT         @title: '예정 고지 세액';
    PROVAT          @title: '사업양수자의 대리납부 기납부세액';
    GOLDVAT         @title: '매입자 납부특례 기납부세액';
    CRECARDVAT      @title: '신용카드업자의 대리납부 기납부세액';
   
}

annotate schema0050.BSNC_VAT_0050L with @title: 'BSNC_VAT_0050L'{
    OBJECTNUM       @UI.Hidden;
    P_OBJECTNUM     @UI.Hidden;
    VCODE           @title: '코드';
    VNAME           @title: '이름';
    AMT             @title: '금액';
    VAT             @title: '부가세액';
}

annotate schema0050.BSNC_VAT_0050M with @title: 'BSNC_VAT_0050M'{
    OBJECTNUM       @UI.Hidden;
    P_OBJECTNUM     @UI.Hidden;
    VCODE           @title: '코드';
    VNAME           @title: '이름';
    AMT             @title: '금액';
    VAT             @title: '부가세액';
}

annotate schema0050.BSNC_VAT_0050N with @title: 'BSNC_VAT_0050N'{
    OBJECTNUM       @UI.Hidden;
    P_OBJECTNUM     @UI.Hidden;
    INDUSTRY        @title: '업태';
    BUSINESS        @title: '종목';
    TYPECODE        @title: '업종코드';
    AMT             @title: '금액';
}

annotate schema0050.BSNC_VAT_0050O with @title: 'BSNC_VAT_0050O'{
    OBJECTNUM       @UI.Hidden;
    P_OBJECTNUM     @UI.Hidden;
    INDUSTRY        @title: '업태';
    BUSINESS        @title: '종목';
    TYPECODE        @title: '업종코드';
    AMT             @title: '금액';
}