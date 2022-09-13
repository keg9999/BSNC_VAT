//BSNC_VAT_0100: 신고자료생성

namespace sap.ui.BSNC_VAT_0100;
using { managed } from '@sap/cds/common';


entity BSNC_VAT_0100H : managed{
    COMPANYCD : String(20) default 'ZZ';                //회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0100';    //오브젝트
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
    REGNUM	: String(10);//	사업장일련번호		
    BPLNAME	: String(100);//	상호		
    BPLADD	: String(100);//	소재지		
    OTAMT	: Decimal(19,0);//	매출과세금액		
    OTVAT	: Decimal(19,0);//	매출과세세액		
    OTEAMT	: Decimal(19,0);//	매출과세(기타)금액		
    OTEVAT	: Decimal(19,0);//	매출과세(기타)세액		
    OZAMT	: Decimal(19,0);//	매출영세율금액		
    OZVAT	: Decimal(19,0);//	매출영세율세액		
    OZEAMT	: Decimal(19,0);//	매출영세율(기타)금액		
    OZEVAT	: Decimal(19,0);//	매출영세율(기타)세액		
    ITAMT	: Decimal(19,0);//	매입과세금액		
    ITVAT	: Decimal(19,0);//	매입과세세액		
    INAMT	: Decimal(19,0);//	매입의제등금액		
    INVAT	: Decimal(19,0);//	매입의제등세액		
    ADAMT	: Decimal(19,0);//	가산세		
    DEVAT	: Decimal(19,0);//	공제세액		
    OIVAT	: Decimal(19,0);//	납부(환급)세액			
}

entity BSNC_VAT_0100A : managed{
    COMPANYCD : String(20) default 'ZZ';                //회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0100';    //오브젝트
    key OBJECTNUM : UUID; //@readonly;    //자동순번부여
    CANCELED: String(1) default 'N'; 	        //취소		
    COMMIT  : String(10) default 'COMMIT';	    //COMMIT		
    UNACTIVE: String(1) default 'N';	//비활성		
    STRDATE	: Date default '2000-01-01'; //효력시작일		
    ENDDATE	: Date default '2100-12-31'; //효력종료일			
    YEAR    : String(4); //년도		
    GUBUN	: String(2); //구분		
    MM	    : String(2); //월		
    BPLID	: String(10); //사업장		
    CONFIRM	: String(1); //확정	        
    CARDCODE: String(50); //	거래처코드		
    CARDNAME: String(150); //	거래처명		
    MRCHNAME: String(100); //	가맹점명		
    UPTAE	: String(50); //	업태		
    UPJONG	: String(50); //	업종		
    YJNYN	: String(10); //	예정신고누락분		
    BILDELYN: String(1); //	과세기간이후발행분		
    VATNUM	: String(250); //	사업자번호		
    VATGROUP: String(10); //	부가세코드		
    VATNAME	: String(100); //	부가세명		
    VATCNT	: Decimal(19,0); //	매수		
    LCAMT	: Decimal(19,0); //	공급가액		
    VATAMT	: Decimal(19,0); //	부가세액		
    TOTAMT	: Decimal(19,0); //	합계금액		
    CARDNO	: String(30); //	법인카드번호		
}

entity BSNC_VAT_0100B : managed{
    COMPANYCD : String(20) default 'ZZ';                //회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0100';    //오브젝트
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
    CARDCODE: String(50); //	거래처코드		
    CARDNAME: String(150); //	거래처명		
    VATNUM	: String(250); //	사업자번호		
    VATGROUP: String(10); //	부가세코드		
    VATNAME	: String(100); //	부가세명		
    VATCNT	: Decimal(19,0); //	매수		
    LCAMT	: Decimal(19,0); //	공급가액		
    UPTAE	: String(50); //	업태		
    UPJONG	: String(50); //	업종		
    BILDELYN: String(1); //	과세기간이후발행분		

}

entity BSNC_VAT_0100C : managed{
    COMPANYCD : String(20) default 'ZZ';                //회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0100';    //오브젝트
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
    RECID	: String(20); //	일련번호		
    DCLNO	: String(50); //	수출신고번호		
    SHIPDATE:	Date;//	선적일자		
    CURR	: String(8); //	통화		
    RATE	: Decimal(19,6); //	환율		
    FCAMT	: Decimal(19,2); //	외화금액		
    LCAMT	: Decimal(19,0); //	원화금액		

}

entity BSNC_VAT_0100D : managed{
    COMPANYCD : String(20) default 'ZZ';                //회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0100';    //오브젝트
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
    RECID	: String(20); //	일련번호		
    TITLE	: String(50); //	서류명		
    SLCAMT	: Decimal(19,0); //	신고액(원화)
    CSTMS	: String(50); //	발급자		
    REGDATE	: Date;//	발급일자		
    SHIPDATE: Date;//	선적일자		
    CURR	: String(8); //	통화		
    RATE	: Decimal(19,6); //	환율		
    JFCAMT	: Decimal(19,2); //	제출액(외화)		
    JLCAMT	: Decimal(19,0); //	제출액(원화)	
    SFCAMT	: Decimal(19,2); //	신고액(외화)	

}

entity BSNC_VAT_0100E : managed{
    COMPANYCD : String(20) default 'ZZ';                //회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0100';    //오브젝트
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
    CANAMT	: Decimal(19,0); //	현금면세매출분		
    CASAMT	: Decimal(19,0); //	현금봉사료		
    CATOAMT	: Decimal(19,0); //	현금합계		
    TTAMT	: Decimal(19,0); //	합계과세매출분		
    TNAMT	: Decimal(19,0); //	합계면세매출분		
    TSAMT	: Decimal(19,0); //	합계봉사료		
    TTOAMT	: Decimal(19,0); //	총합계		
    TAXAMT	: Decimal(19,0); //	세금계산서교부액		
    NTAXAMT	: Decimal(19,0); //	계산서교부액		
    CRTAMT	: Decimal(19,0); //	카드과세매출분		
    CRNAMT	: Decimal(19,0); //	카드면세매출분		
    CRSAMT	: Decimal(19,0); //	카드봉사료		
    CRTOAMT	: Decimal(19,0); //	카드합계		
    CATAMT	: Decimal(19,0); //	현금과세매출분		
    ECRTAMT	: Decimal(19,0); //	전자과세매출분		
    ECRNAMT	: Decimal(19,0); //	전자면세매출분		
    ECRSAMT	: Decimal(19,0); //	전자봉사료		
    ECRTOAMT: Decimal(19,0); //	전자합계		
	
}

entity BSNC_VAT_0100F1 : managed{
    COMPANYCD : String(20) default 'ZZ';                //회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0100';    //오브젝트
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
    REASON	: String(20); //	불공제사유		
    CNT	    : Decimal(19,0); //	매수		
    AMT	    : Decimal(19,0); //	공급가액		
    VATAMT	: Decimal(19,0); //	매입세액		

}
entity BSNC_VAT_0100F2 : managed{
    COMPANYCD : String(20) default 'ZZ';                //회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0100';    //오브젝트
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
    AMT	    : Decimal(19,0); //	공급가액		
    VATAMT	: Decimal(19,0); //	매입세액		
    TOTAMT	: Decimal(19,0); //	총공급가액		
    FREEAMT	: Decimal(19,0); //	면세공급가액		
    NONVAMT	: Decimal(19,0); //	불공제매입세액		

}
entity BSNC_VAT_0100F3 : managed{
    COMPANYCD : String(20) default 'ZZ';                //회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0100';    //오브젝트
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
    TOTVAMT	: Decimal(19,0); //	공통매입세액		
    RATE	: Decimal(19,0); //	면세사업확정비율		
    TOTNVAMT: Decimal(19,0); //	불공제매입세액총액		
    GNVAMT	: Decimal(19,0); //	기불공제매입세액		
    ADDVAMT	: Decimal(19,0); //	가산공제되는매입세액		

}
entity BSNC_VAT_0100F4 : managed{
    COMPANYCD : String(20) default 'ZZ';                //회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0100';    //오브젝트
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
    VATAMT	: Decimal(19,0); //	해당재화의매입세액		
    PAMT	: Decimal(19,6); //	경감률		
    RATE	: Decimal(19,6); //	증가감소된면세비율		
    ADDVAMT	: Decimal(19,0); //	가산공제되는매입세액		

}
entity BSNC_VAT_0100G : managed{
    COMPANYCD : String(20) default 'ZZ';                //회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0100';    //오브젝트
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
    NUMTYPE	: String(10); //	일련번호구분		
    NUMBER	: String(10); //	일련번호		
    EDATE	: Date;//	퇴거일		
    DAMT	: Decimal(19,0); //	보증금		
    MAMT	: Decimal(19,0); //	월임대료		
    TAMT	: Decimal(19,0); //	합계		
    TDAMT	: Decimal(19,0); //	보증금이자(계)
    TMAMT	: Decimal(19,0); //	월임대료(계)
    DONG	: String(20); //	동		
    FLOR	: String(10); //	층		
    HO	    : String(10); //	호		
    AREA	: String(10); //	임대면적		
    CARDNAME: String(50); //	상호		
    REGNUM	: String(20); //	사업자등록번호		
    SDATE	: Date;//	입주일		
    UDATE	: Date;//	갱신일		

}
entity BSNC_VAT_0100_UIH {
    key OBJECTNUM : UUID; //자동순번부여
    BPLID : String;  //사업장
    YEAR : String(4);   //년도
    GUBUN : String; //구분    
    BSNC_VAT_0100_UIL : Composition of many BSNC_VAT_0100_UIL on BSNC_VAT_0100_UIL.P_OBJECTNUM = $self;

}

entity BSNC_VAT_0100_UIL {
    key OBJECTNUM : UUID; //자동순번부여
    P_OBJECTNUM : Association to one BSNC_VAT_0100_UIH; 	//BSNC_VAT_0010H.OBJECTNUM	   
    //CHECK : Boolean;    //선택
    DOCCODE : String;   //코드
    DOCNAME : String;   //신고서종류
}