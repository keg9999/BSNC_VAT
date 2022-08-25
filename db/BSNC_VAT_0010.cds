//BSNC_VAT_0010: 환경설정

namespace sap.ui.BSNC_VAT_0010;
using { managed } from '@sap/cds/common';

//중복X 필드
@assert.unique: {
  CODE: [ CODE ]
}
entity BSNC_VAT_0010H : managed{
    COMPANYCD : String(20) default 'ZZ';	//회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0010';  //오브젝트
    key OBJECTNUM : UUID; //자동순번부여
    CANCELED : String default 'N'; //취소
    COMMIT : String(10) default 'COMMIT';//COMMIT	
    UNACTIVE : String(1) default 'N';	//비활성
    STRDATE	: Date default '2000-01-01'; //효력시작일
    ENDDATE : Date default '2100-12-31'; //효력종료일
    CODE : String(30); //CODE
    NAME : String(100); //NAME
    REMARK : String(200);
    BSNC_VAT_0010L : Composition of many BSNC_VAT_0010L on BSNC_VAT_0010L.P_OBJECTNUM = $self;
}

entity BSNC_VAT_0010L : managed{
    key OBJECTNUM : UUID; //@readonly;    //자동순번부여
    P_OBJECTNUM : Association to one BSNC_VAT_0010H; 	//BSNC_VAT_0010H.OBJECTNUM	   
    CODE : String(30) default '';	
    //LINEID : Integer;
    VALCD : String(50); //코드
    VALNM : String(100); //코드명
    USERYN : Boolean; //사용여부
    SORT : Integer; //정렬순서
    RMK1 : String(50); //비고1
    RMK2 : String(50); //비고2
}