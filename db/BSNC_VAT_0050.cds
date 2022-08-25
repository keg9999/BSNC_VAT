//BSNC_VAT_0050: 경감공제가산세액

namespace sap.ui.BSNC_VAT_0050;
using { managed } from '@sap/cds/common';

//중복X 필드
@assert.unique: {
  YEAR: [ YEAR, GUBUN ]
}
entity BSNC_VAT_0050H : managed{
    COMPANYCD : String(20) default 'ZZ';                //회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0050';    //오브젝트
    key OBJECTNUM : UUID; //@readonly;    //자동순번부여
    CANCELED : String(1) default 'N'; 	        //취소		
    COMMIT : String(10) default 'COMMIT';	    //COMMIT		
    UNACTIVE : String(1) default 'N';	//비활성		
    STRDATE	: DateTime default '2000-01-01'; //효력시작일		
    ENDDATE	: DateTime default '2100-12-31'; //효력종료일
    YEAR    : String(4);    //년도
    GUBUN   : String(2);    //구분
    MM      : String(2);    //월
    BPLID   : String(10);   //사업장
    CONFIRM : String(2);    //확정
    YENRVAT : Decimal(19,2);   //예정신고미환급세액
    YENOVAT : Decimal(19,2); //예정고지세액
    PROVAT  : Decimal(19,2); //사업양수자의대리납부기납부세액
    GOLDVAT : Decimal(19,2); //금지금매입자납부특례기납부세액
    CRECARDVAT : Decimal(19,2); //신용카드업자의대리납부기납부세액
    BSNC_VAT_0050L : Composition of many BSNC_VAT_0050L on BSNC_VAT_0050L.P_OBJECTNUM = $self;
    BSNC_VAT_0050M : Composition of many BSNC_VAT_0050M on BSNC_VAT_0050M.P_OBJECTNUM = $self;
    BSNC_VAT_0050N : Composition of many BSNC_VAT_0050N on BSNC_VAT_0050N.P_OBJECTNUM = $self;
    BSNC_VAT_0050O : Composition of many BSNC_VAT_0050O on BSNC_VAT_0050O.P_OBJECTNUM = $self;
}

@assert.unique: {
  VCODE : [ VCODE ]
}
entity BSNC_VAT_0050L{
    key OBJECTNUM : UUID;
    P_OBJECTNUM : Association to one BSNC_VAT_0050H; 	//BSNC_VAT_0050H.OBJECTNUM	   
    VCODE       : String(30); //코드
    VNAME       : String(100);//이름
    AMT         : Decimal(19,2);//금액
    VAT         : Decimal(19,2);//부가세액
}	

@assert.unique: {
  VCODE : [ VCODE ]
}
entity BSNC_VAT_0050M{
    key OBJECTNUM : UUID;
    P_OBJECTNUM : Association to one BSNC_VAT_0050H; 	//BSNC_VAT_0050H.OBJECTNUM	   
    VCODE       : String(30);//코드
    VNAME       : String(100);//이름
    AMT         : Decimal(19,2);//금액
    VAT         : Decimal(19,2);//부가세액
}	
@assert.unique: {
  TYPECODE : [ TYPECODE ]
}
entity BSNC_VAT_0050N{
    key OBJECTNUM : UUID;
    P_OBJECTNUM : Association to one BSNC_VAT_0050H; 	//BSNC_VAT_0050H.OBJECTNUM	   
    INDUSTRY    : String(30); //업태
    BUSINESS    : String(100);//종목
    TYPECODE    : String(20);//업종코드
    AMT         : Decimal(19,2);//금액
}	

entity BSNC_VAT_0050O{
    key OBJECTNUM : UUID;
    P_OBJECTNUM : Association to one BSNC_VAT_0050H; 	//BSNC_VAT_0050H.OBJECTNUM	   
    INDUSTRY    : String(30); //업태
    BUSINESS    : String(100);//종목
    TYPECODE    : String(20);//업종코드
    AMT         : Decimal(19,2) default 0;//금액
}	
