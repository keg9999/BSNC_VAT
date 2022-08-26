//BSNC_VAT_0080: 부가세자료관리

namespace sap.ui.BSNC_VAT_0080;
using { managed } from '@sap/cds/common';

entity BSNC_VAT_0080H : managed{
    BPLID : String;//사업장
    DOCDATE : Date; //전기일   
    DUEDATE : Date; //증빙일   
    CARDCODE : String; //거래처
    CARDNAME : String;//거래처명
    VATNUM   : String; //사업자번호
    VATGROUP : String; //부가세코드
    AMOUNT   : Decimal(19,2); //공급가액세액
    VATAMT   : Decimal(19,2); //부가세액
    SUM      : Decimal(19,2); //합계액
    TRANSTYPE: String; //전표유형
    REMARK   : String; //비고
    TRANSID  : String; //전표번호
    INDUSTRY : String; //업태
    BUSINESS : String; //업종
}
