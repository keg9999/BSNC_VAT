//BSNC_VAT_0000: 공통코드관리

namespace sap.ui.BSNC_VAT_0000;
using { managed } from '@sap/cds/common';

//중복X 필드
@assert.unique: {
  CODE: [ CODE ]
}

entity BSNC_VAT_0000H : managed{
    COMPANYCD : String(20) default 'ZZ';                //회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0000';    //오브젝트
    key OBJECTNUM : UUID; //@readonly;    //자동순번부여
    CANCELED : String(1) default 'N'; 	        //취소		
    COMMIT : String(10) default 'COMMIT';	    //COMMIT		
    UNACTIVE : String(1) default 'N';	//비활성		
    STRDATE	: Date default '2000-01-01'; //효력시작일		
    ENDDATE	: Date default '2100-12-31'; //효력종료일		
    CODE :	String(30) @assert.unique; 		
    NAME :	String(100);		
    REMARK : String(200);
    BSNC_VAT_0000L : Composition of many BSNC_VAT_0000L on BSNC_VAT_0000L.P_OBJECTNUM = $self;
}

entity BSNC_VAT_0000L{
    key OBJECTNUM : UUID;
    P_OBJECTNUM : Association to one BSNC_VAT_0000H; 	//BSNC_VAT_0000H.OBJECTNUM	   
    //CODE : Association to one BSNC_VAT_0000H;
    //LINEID : Integer; 		
    GCODE : String(50);	
    GNAME :	String(100);		
    USEYN :	Boolean;		
    SEQ	: Integer;	
    LINEMEMO : String(200);		
    REF1 : String(50);
    REF2 : String(50);		
    REF3 : String(50);		
}					
