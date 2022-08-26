using { sap.ui.BSNC_VAT_0080 as schema } from '../../db/BSNC_VAT_0080';

//
// annotations that control rendering of fields and labels
//

annotate schema.BSNC_VAT_0080H with {
	 BPLID  @title: '사업장'; 
    DOCDATE @title: '전기일';  
    DUEDATE @title: '증빙일';   
    CARDCODE @title: '거래처';
    CARDNAME @title: '거래처명';
    VATNUM   @title: '사업자번호';
    VATGROUP @title: '부가세코드';
    AMOUNT   @title: '공급가액세액';
    VATAMT   @title: '부가세액';
    SUM      @title: '합계액';
    TRANSTYPE@title: '전표유형';
    REMARK   @title: '비고';
    TRANSID  @title: '전표번호';
    INDUSTRY @title: '업태';
    BUSINESS @title: '업종';
    SDATE    @title: '기간조회 시작';
    EDATE    @title: '기간조회 종료';
}
