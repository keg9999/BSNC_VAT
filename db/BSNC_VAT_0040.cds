//BSNC_VAT_0040: 부가세기준정보

namespace sap.ui.BSNC_VAT_0040;
using { managed } from '@sap/cds/common';

//중복X 필드
@assert.unique: {
  YEAR: [ YEAR ,GUBUN ],
 // GUBUN : [ GUBUN]
}
entity BSNC_VAT_0040H : managed{
    COMPANYCD   : String(20) default 'ZZ';                //회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0040';    //오브젝트
    key OBJECTNUM : UUID;                               //@readonly; //자동순번부여
    CANCELED    : String(1) default 'N'; 	        //취소		
    COMMIT      : String(10) default 'COMMIT';	    //COMMIT		
    UNACTIVE    : String(1) default 'N';        	//비활성		
    STRDATE	    : Date default '2000-01-01'; //효력시작일		
    ENDDATE	    : Date default '2100-12-31'; //효력종료일		
    YEAR        : String(4); //년도
    GUBUN       : String(2);//구분
    MM          : String(2); //월
    BPLID       : String(10);//사업장
    BPLNAME     : String(50);//상호(법인명)
    REPNAME     : String(30);//성명(대표자명)
    REGNUM      : String(12);//사업자등록번호
    ADDID       : String(18);//주민(법인)등록번호
    PHONE       : String(20);//전화번호
    ADDRESS     : String(150);//사업장주소
    EMAIL       : String(100);//전자우편주소
    BANKNAME    : String(100);//은행
    BRANCH      : String(100);//지점
    MTYPE       : String(20);//주업종코드
    TAXID       : String(20);//홈텍스ID
    ACCOUNT     : String(50);//계좌번호
    TAXPW       : String(20);//홈텍스PW
    PGMCD       : String(10);//프로그램코드
    BANKCD      : String(10);//환급은행코드
    RETYPE      : String(10);//환급구분코드
    TAXOFFC     : String(50);//관활세무소
    ZIPCODE     : String(10);//우편주소
    MAINBPL     : Boolean;//주사업장
    ROOT        : String(200);//경로
    OPENDT      : Date;//개업일
    NOTREFU     : String(10);//환급제외
    INDUSTRY    : String(50);//업태
    BUSINESS    : String(50);//종목
    TYPECODE    : String(20);//업종코드
    BSNC_VAT_0040L : Composition of many BSNC_VAT_0040L on BSNC_VAT_0040L.P_OBJECTNUM = $self;
}

//중복X 필드
@assert.unique: {
  YEAR: [ YEAR ,GUBUN ]
}
entity BSNC_VAT_0040L{
    key OBJECTNUM : UUID;
    P_OBJECTNUM : Association to one BSNC_VAT_0040H; 	//BSNC_VAT_0040H.OBJECTNUM	   
    //CODE : Association to one BSNC_VAT_0040H;
    //LINEID : Integer; 				
    YEAR        : String(4);
    GUBUN       : String(2); 
    LINEID      : Integer;
    INDUSTRY    : String(50);//업태
    BUSINESS    : String(50);//종목
    TYPECODE    : String(20);//종목코드	
}					

