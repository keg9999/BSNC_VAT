namespace sap.ui.vatmanagement;
using { managed } from '@sap/cds/common';

entity BSNC_VAT_0000H : managed{
    OBJECTCODE : String(50);    //오브젝트
    key OBJECTNUM : UUID;    //자동순번부여
    // CUSER : String      @cds.on.insert : $user;     //생성자
    // CDATE : DateTime    @cds.on.insert : $now;       //생성일시
    // MUSER : String      @cds.on.insert : $user @cds.on.update : $user;  //변경자
    // MDATE : DateTime    @cds.on.insert : $now  @cds.on.update : $now;
    CANCELED : String(1) default 'N'; 	        //취소		
    COMMIT : String(10) default 'commit';	    //COMMIT		
    UNACTIVE : String(1) default 'N';	//비활성		
    STRDATE	: DateTime default '2000-01-01'; //효력시작일		
    ENDDATE	: DateTime default '2100-12-31'; //효력종료일		
    key CODE :	String(30); 		
    NAME :	String(100);		
    REMARK : String(200);
    BSNC_VAT_0010L : Composition of many BSNC_VAT_0000L on BSNC_VAT_0010L.PARENT = $self;
}

entity BSNC_VAT_0000L{
    key PARENT : Association to BSNC_VAT_0000H; 	//parent 오브젝트		   
    key CODE :	String(30); 			
    LINEID : Integer; 		
    GCODE : String(50);	
    GNAME :	String(100);		
    USEYN :	String(2);		
    SEQ	: Integer;	
    LINEMEMO : String(200);		
    REF1 : String(50);
    REF2 : String(50);		
    REF3 : String(50);		
}					
