//BSNC_VAT_0060: 부가세자료생성(H)

namespace sap.ui.BSNC_VAT_0060;
using { managed } from '@sap/cds/common';

entity BSNC_VAT_0060H : managed{
    COMPANYCD : String(20) default 'ZZ';                //회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0060';    //오브젝트
    key OBJECTNUM : UUID; //@readonly;    //자동순번부여
    CANCELED : String(1) default 'N'; 	        //취소		
    COMMIT : String(10) default 'COMMIT';	    //COMMIT		
    UNACTIVE : String(1) default 'N';	        //비활성		
    STRDATE	: DateTime default '2000-01-01'; //효력시작일		
    ENDDATE	: DateTime default '2100-12-31'; //효력종료일
    //		
    YEAR     : String(4);//	년도		
    GUBUN	 : String(2);// 구분		
    MM	     : String(2);// 월		
    BPLID	 : String(10);// 사업장		
    CONFIRM	 : String(1);// 확정		
    REFDATE	 : Date;// 전기일 		
    TAXDATE	 : Date;// 증빙일		
    CARDCODE : String(30);// 	거래처코드		
    CARDNAME : String(150);// 	거래처명		
    VATNUM   : String(30);// 	사업자번호		
    CARDNO	 : String(50);// 법인카드번호		
    VATGROUP : String(10);// 	부가세코드		
    VATNAME	 : String(100);// 부가세명		
    LCAMT 	 : Decimal(20,0);// 부가세액		
    TOTAMT	 : Decimal(20,0);// 합계액		
    TRANSTYPE: String(30);// 	거래유형		
    TRANSID  : String(30);// 	전표번호		
    LINENUM  : String(20);// 	라인번호		
    UPTAE    : String(50);// 	업태		
    UPJONG   : String(50);// 	업종		
    REMARK   : String(200);// 	비고		
    DEBIT    : Decimal(20,0);//매입부가세		
    CREDIT	 : Decimal(20,0);//매출부가세			
    RTRANSID : String(10);// 	역분개된 전표번호		
    BASEREF  : String(30);// 	원문서번호		
    CYN      : String(10);// 	법인카드여부		
    CATEGORY : String(10);// 	카테고리		
    MRCHNAME : String(100);// 	가맹점명칭		
    SHIPDATE : Date;//	선적일		
    DCLNO   : String(100);// 	수출신고번호		
    CURR    : String(20);// 	통화		
    RATE	: Decimal(19,6);//환율		
    FCAMT   : Decimal(19,6);//	외화		
    TARGETYN: String(10);// 	과세대상여부		
    TARGETTYPE: String(10);// 	대상문서유형		
    BASETYPE: String(10);// 	원본문서유형		
    PROFITC: String(10);// 	코스트센터		
    PROFITN: String(100);// 	코스트센터명		
    OCRCODE5: String(10);// 	회사코드 (사업자단위과세)		
    OCRNAME5: String(100);// 	손익센터		
    BILDELYN: String(1);// 	손익센터명		
    PRJCODE: String(50);// 	프로젝트		

}

entity BSNC_VAT_0060H_UI {
    key OBJECTNUM : UUID; //@readonly;    //자동순번부여
    BPLID	 : String(10);// 사업장
    YEAR     : String(4);//	년도		
    GUBUN	 : String(2);// 구분
    REFDATE  : String(10);//집계기준일
    BILLYN   : Boolean; //계산서포함    	 
}