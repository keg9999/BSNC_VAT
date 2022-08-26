//BSNC_VAT_0020: 부가세그룹설정

namespace sap.ui.BSNC_VAT_0020;
using { managed } from '@sap/cds/common';

aspect MasterData {}

//중복X 필드
@assert.unique: {
  CODE: [ CODE ]
}

entity BSNC_VAT_0020H : managed{
  COMPANYCD : String(20) default 'ZZ';	//회사코드
  OBJECTCODE : String(50) default 'BSNC_VAT_0020'; //오브젝트
  key OBJECTNUM : UUID; //자동순번부여
  CANCELED : String default 'N'; //취소
  COMMIT : String(10) default 'COMMIT';//COMMIT	
  UNACTIVE : String(1) default 'N';	//비활성
  STRDATE	: Date default '2000-01-01'; //효력시작일
  ENDDATE : Date default '2100-12-31'; //효력종료일
  CODE : String(30);	//CODE
  NAME : String(100); //NAME
  REMARK : String(200);	//REMARK
  CATEGORY : String(10); //CATEGORY
  BSNC_VAT_0020L : Composition of many BSNC_VAT_0020L on BSNC_VAT_0020L.P_OBJECTNUM = $self;
}

//중복X 필드
@assert.unique: {
  TAXCODE: [ TAXCODE ]
}
entity BSNC_VAT_0020L : managed{
    key OBJECTNUM : UUID; //자동순번부여
    P_OBJECTNUM : Association to one BSNC_VAT_0020H; 	//BSNC_VAT_0010H.OBJECTNUM	   
    CODE : String(30) default '';	
    TAXCODE	: String(30); //부가세코드
    TAXNAME	: String(100); //부가세이름
    TAXTYPE	: Association to BSNC_VAT_0020_TAXTYPE; //세금유형
    ETAX : Association to BSNC_VAT_0020_ETAX; //전자/일반
    FIXTAX : Association to BSNC_VAT_0020_FIXTAX; //고정자산
    NONDEDCT : Association to BSNC_VAT_0020_NONDEDCT; //불공제
    CREDITCD : Association to BSNC_VAT_0020_CREDITCD; //신용카드
    DEEMTAX	: Boolean; //의제매입
    ETCTAX : Boolean; //기타매출
    REMARK : String(200); //REMARK
}

//----------------------------------------------------------------------------------------------
//valuehelp

//@cds.odata.valuelist
entity BSNC_VAT_0020_TAXTYPE : MasterData {  //value help - 세금유형
  key CODE : String;
  NAME : String;
}

@cds.odata.valuelist
entity BSNC_VAT_0020_ETAX : MasterData {  //value help - 전자/일반
  key CODE : String;
  NAME : String;
}

@cds.odata.valuelist
entity BSNC_VAT_0020_FIXTAX : MasterData {  //value help - 고정자산
  key CODE : String;
  NAME : String;
}

@cds.odata.valuelist
entity BSNC_VAT_0020_NONDEDCT : MasterData {  //value help - 불공제
  key CODE : String;
  NAME : String;
}

@cds.odata.valuelist
entity BSNC_VAT_0020_CREDITCD : MasterData {  //value help - 신용카드
  key CODE : String;
  NAME : String;
}