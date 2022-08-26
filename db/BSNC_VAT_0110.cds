//BSNC_VAT_0110: 신고파일생성

namespace sap.ui.BSNC_VAT_0110;
using { managed } from '@sap/cds/common';

entity BSNC_VAT_0110H : managed{
    key OBJECTNUM : UUID; //자동순번부여
    BPLID : String;  //사업장
    YYYY : String(4);   //년도
    GUBUN : String; //구분
    FDATE : Date;   //과세기간 시작
    TDATE : Date;   //과시기간 종료
    DOCDATE : Date; //작성일
    SUMDATE : Date; //신고일
    FILEPATH : String;  //파일경로
    BSNC_VAT_0110L : Composition of many BSNC_VAT_0110L on BSNC_VAT_0110L.P_OBJECTNUM = $self;

}

entity BSNC_VAT_0110L : managed{
    key OBJECTNUM : UUID; //자동순번부여
    P_OBJECTNUM : Association to one BSNC_VAT_0110H; 	//BSNC_VAT_0010H.OBJECTNUM	   
    CHECK : Boolean;    //선택
    DOCCODE : String;   //서식코드
    DOCNAME : String;   //신고서식   
}