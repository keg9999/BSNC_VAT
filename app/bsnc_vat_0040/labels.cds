using { sap.ui.BSNC_VAT_0040 as schema0040 } from '../../db/BSNC_VAT_0040';

//
// annotations that control rendering of fields and labels
//

annotate schema0040.BSNC_VAT_0040H with {
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
    MM              @UI.Hidden;
    BPLID           @title: '사업장';
    BPLNAME         @title: '상호(법인명)';
    REPNAME         @title: '성명(대표자명)';
    REGNUM          @title: '사업자등록번호';
    ADDID           @title: '주민(법인)등록번호';
    PHONE           @title: '전화번호';
    ADDRESS         @title: '사업장주소';
    EMAIL           @title: '전자우편주소';
    BANKNAME        @title: '은행';
    BRANCH          @title: '지점';
    MTYPE           @title: '주업종코드';
    TAXID           @title: '홈텍스ID';
    ACCOUNT         @title: '계좌번호';
    TAXPW           @title: '홈텍스PW';
    PGMCD           @title: '프로그램코드';
    BANKCD          @title: '환급은행코드';
    RETYPE          @title: '환급구분코드';
    TAXOFFC         @title: '관할세무소';
    ZIPCODE         @title: '우편주소';
    MAINBPL         @title: '주사업장';
    ROOT            @title: '경로';
    OPENDT          @title: '개업일';
    NOTREFU         @title: '환급제외';
    INDUSTRY        @title: '업태';
    BUSINESS        @title: '종목';
    TYPECODE        @title: '업종코드';

   
}

annotate schema0040.BSNC_VAT_0040L with @title: 'BSNC_VAT_0040L'{
    OBJECTNUM       @UI.Hidden;
    P_OBJECTNUM     @UI.Hidden;
    YEAR            @title : '년도';  
    GUBUN           @title : '구분';
    LINEID          @title : '#';
    INDUSTRY        @title : '업태';
    BUSINESS        @title : '종목';
    TYPECODE        @title : '종목코드';
}