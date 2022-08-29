using { sap.ui.BSNC_VAT_0110 as schema } from '../../db/BSNC_VAT_0110';

//
// annotations that control rendering of fields and labels
//

annotate schema.BSNC_VAT_0110H with {
   BPLID @title: '사업장';
   YEAR @title: '년도';
   GUBUN @title: '구분';
   FDATE @title: '과세시작일';
   TDATE @title: '과세종료일';
   DOCDATE @title: '작성일';
   SUMDATE @title: '신고일';
   FILEPATH @title: '파일경로';
}

annotate schema.BSNC_VAT_0110L with {
    CHECK @title: '선택';
    DOCCODE @title: '서식코드';
    DOCNAME@title: '신고서식';
}
