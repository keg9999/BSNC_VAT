//BSNC_VAT_0130: 환경설정

namespace sap.ui.BSNC_VAT_0130;
using { managed } from '@sap/cds/common';

//중복X 필드
@assert.unique: {
  CODE: [ CODE ]
}
entity BSNC_VAT_0130H : managed{
    COMPANYCD : String(20) default 'ZZ';	//회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0130';  //오브젝트
    key OBJECTNUM : UUID; //자동순번부여
    CANCELED : String default 'N'; //취소
    COMMIT : String(10) default 'COMMIT';//COMMIT	
    UNACTIVE : String(1) default 'N';	//비활성
    STRDATE	: Date default '2000-01-01'; //효력시작일
    ENDDATE : Date default '2100-12-31'; //효력종료일
    YEAR : String(4);// 년도			nvarchar(4)
    GUBUN : String(1); //구분			nvarchar(2)
    MM : String(2); //월			nvarchar(2)
    BPLID : String(10); //사업장			nvarchar(10)
    CARDCODE : String(50); //거래처코드			nvarchar(50)
    CARDNAME : String(150); //거래처명			nvarchar(150)
    VATCNT : Decimal(19,0); //매수			decimal(19,0)
    LCAMT	: Decimal(19,0); //공급가액			decimal(19,0)
    VATAMT	: Decimal(19,0); //부가세액			decimal(19,0)
    TOTAMT	: Decimal(19,0); //합계금액			decimal(19,0)
    CARDNO	: Decimal(19,0); //법인카드번호			nvarchar(30)
    MRCHNAME : String(100); //가맹점명			nvarchar(100)
    UPTAE	: String(50); //업태			nvarchar(50)
    UPJONG	: String(50); //업종			nvarchar(50)
    YJNYN	: Boolean; //예정신고누락분			bool
    BILDELYN : Boolean; //과세기간이후발행분			bool
    VATNUM	 : String(50); //사업자번호			nvarchar(50)
    VATGROUP : String(10); //부가세코드			nvarchar(10)
    VATNAME	 : String(100); //부가세명			nvarchar(100)
}
