using VatService from '../../srv/vat-service';

//
// annotations that control the behavior of fields and actions
//

annotate VatService.BSNC_VAT_0000H {
    COMPANYCD                                   @mandatory;
    OBJECTCODE                                  @mandatory;
    OBJECTNUM                                   @mandatory;
    CANCELED                                    @mandatory;
    COMMIT                                      @mandatory;
    UNACTIVE                                    @mandatory;
    STRDATE                                     @mandatory;
    ENDDATE                                     @mandatory;
    CODE                                        @mandatory;
}

// annotate VatService.BSNC_VAT_0000L {
//     UUID_0000L                  @readonly     @mandatory;
//     PARENT                      @readonly     @mandatory;	   
//     CODE                        @readonly     @mandatory; 			
//     // LINEID : Integer; 		
//     // GCODE : String(50);	
//     // GNAME :	String(100);		
//     // USEYN :	Boolean;		
//     // SEQ	: Integer;	
//     // LINEMEMO : String(200);		
//     // REF1 : String(50);
//     // REF2 : String(50);		
//     // REF3 : String(50);	
// };

