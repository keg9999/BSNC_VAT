//BSNC_VAT_0030: 단위사업장적용번호

namespace sap.ui.BSNC_VAT_0030;
using { managed } from '@sap/cds/common';

//중복X 필드
@assert.unique: {
  CODE: [ CODE ]
}

entity BSNC_VAT_0030H : managed{
    COMPANYCD : String(20) default 'ZZ';                //회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0030';    //오브젝트
    key OBJECTNUM : UUID; //@readonly;    //자동순번부여
    CANCELED : String(1) default 'N'; 	        //취소		
    COMMIT : String(10) default 'COMMIT';	    //COMMIT		
    UNACTIVE : String(1) default 'N';	        //비활성		
    STRDATE	: DateTime default '2000-01-01'; //효력시작일		
    ENDDATE	: DateTime default '2100-12-31'; //효력종료일
    //		
    CODE :	String(30);     //단위사업장적용번호
    NAME :	String(100);    //단위사업장명		
    REMARK : String(200);   //비고
    BSNC_VAT_0030L : Composition of many BSNC_VAT_0030L on BSNC_VAT_0030L.P_OBJECTNUM = $self;
}
@assert.unique: {
  CODE: [ LCODE ],
}
entity BSNC_VAT_0030L{
    key OBJECTNUM : UUID;
    P_OBJECTNUM : Association to one BSNC_VAT_0030H; 	//BSNC_VAT_0030H.OBJECTNUM	   
    //CODE : Association to one BSNC_VAT_0030H;
    //LINEID : Integer; 		
    //CODE : String(30);      	
    LCODE :	String(30);		//하위코드
    LNAME : String(100);    //하위이름
    REMARK : String(200);	
}					
