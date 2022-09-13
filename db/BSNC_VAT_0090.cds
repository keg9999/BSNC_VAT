//BSNC_VAT_0090: 과세표준생성

namespace sap.ui.BSNC_VAT_0090;
using { managed } from '@sap/cds/common';


entity BSNC_VAT_0090H : managed{
    COMPANYCD : String(20) default 'ZZ';                //회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0090';    //오브젝트
    key OBJECTNUM : UUID; //@readonly;    //자동순번부여
    CANCELED : String(1) default 'N'; 	        //취소		
    COMMIT : String(10) default 'COMMIT';	    //COMMIT		
    UNACTIVE : String(1) default 'N';	//비활성		
    STRDATE	: Date default '2000-01-01'; //효력시작일		
    ENDDATE	: Date default '2100-12-31'; //효력종료일			
    YEAR    : String(4); //년도		
    GUBUN	: String(2); //구분		
    MM	    : String(2); //월		
    BPLID	: String(10); //사업장		
    CONFIRM	: String(1); //확정		
    TARGETYN: String(1); //	신고대상여부		
    TAXDATE	: Date; //증빙일		
    REMARK	 : String(200); //비고		
    SHIPDATE : Date;	//선적일자		
    REFDATE	: Date; //전기일		
    DCLNO	: String(50); //수출신고번호		
    CURR	: String(10); //통화		
    RATE	: Decimal(19,6); //환율		
    FCAMT	: Decimal(19,6); //외화		
    BASEREF	: String(30); //원천문서		
    LINENUM	: String(30); //문서라인		
    BILDELYN: String(1); //	과세기간이후발행분		
    VATNAME	: String(100); //부가세명		
    PROFITC	: String(20); //부서코드		
    SEQNUM	: String(10); //사업자단위과세코드		
    YJNYN	: String(10); //예정신고누락분		
    CARDCODE: String(50); //	거래처코드		
    CARDNAME: String(100); //	거래처명		
    VATNUM	: String(20); //사업자번호		
    CARDNO	: String(30); //법인카드번호		
    MRCHNAME: String(100); //	가맹점명		
    VATGROUP: String(20); //	부가세코드		
    LCAMT	: Decimal(19,0); //공급가액		
    VATAMT	: Decimal(19,0); //부가세액		
    TOTAMT	: Decimal(19,0); //합계금액		
    TRANTYPE : String(20); //	거래유형		
    TRANSID	: String(30); //전표번호		
    UPTAE	: String(50); //업태		
    UPJONG	: String(50); //업종		
    DIVIYN	: String(20); //안분계산내역분		
}

entity BSNC_VAT_0090H_UI {
    key OBJECTNUM : UUID; //@readonly;    //자동순번부여
    BPLID	 : String(10);// 사업장
    YEAR     : String(4);//	년도		
    GUBUN	 : String(2);// 구분
    REFDATE  : String(10);//집계기준일
    BILLYN   : Boolean; //계산서포함    	 
}