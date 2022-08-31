//BSNC_VAT_0120: 신고서집계출력

namespace sap.ui.BSNC_VAT_0120;
using { managed } from '@sap/cds/common';

//중복X 필드
@assert.unique: {
  YEAR: [ YEAR ],
  GUBUN : [GUBUN]
}
entity BSNC_VAT_0120H : managed{
    COMPANYCD : String(20) default 'ZZ';	//회사코드
    OBJECTCODE : String(50) default 'BSNC_VAT_0120';  //오브젝트
    key OBJECTNUM : UUID; //자동순번부여
    CANCELED : String default 'N'; //취소
    COMMIT : String(10) default 'COMMIT'; //COMMIT	
    UNACTIVE : String(1) default 'N';	//비활성
    STRDATE	: Date default '2000-01-01'; //효력시작일
    ENDDATE : Date default '2100-12-31'; //효력종료일
    YEAR : String(4);    //년도
    GUBUN : String(2);   //구분
    MM : String(2);      //월
    BPLID	: String(10); //사업장	
    CONFIRM	: String(1); //확정					
    ETISTVAT : Decimal(19,0); //기타매입재고세액
    OZETAMT	: Decimal(19,0); //매출영세세금계산서금액
    OZEEAMT	: Decimal(19,0); //매출영세기타금액
    OYENAMT	: Decimal(19,0); //매출예정신고누락분금액
    OYENVAT	: Decimal(19,0); //매출예정신고누락분세액	
    OBEDVAT	: Decimal(19,0); //매출대손세액가감
    OSUMAMT	: Decimal(19,0); //매출합계금액
    OSUMVAT	: Decimal(19,0); //매출합계세액
    IGETAMT	: Decimal(19,0); //매입일반세금계산서금액
    IGETVAT	: Decimal(19,0); //매입일반세금계산서세액
    ETIBEVAT : Decimal(19,0); //기타매입변제대손세액
    IFITAMT	: Decimal(19,0); //매입고정자산세금계산서금액			
    IFITVAT	: Decimal(19,0); //매입고정자산세금계산서세액			
    IYENAMT	: Decimal(19,0); //매입예정신고누락분금액			
    IYENVAT	: Decimal(19,0); //매입예정신고누락분세액		
    IPURAMT	: Decimal(19,0); //매입매입자발행금액		
    IPURVAT	: Decimal(19,0); //매입매입자발행세액			
    IETCAMT	: Decimal(19,0); //매입기타공제금액			
    IETCVAT	: Decimal(19,0); //매입기타공제세액			
    ISUMAMT	: Decimal(19,0); //매입합계금액			
    ETITOAMT : Decimal(19,0); //기타매입합계금액
    ISUMVAT	: Decimal(19,0); //매입합계세액			
    INONAMT	: Decimal(19,0); //매입불공제금액			
    INONVAT	: Decimal(19,0); //매입불공제세액			
    IDEDAMT	: Decimal(19,0); //매입차감합계금액			
    IDEDVAT	: Decimal(19,0); //매입차감합계세액		
    SDATE	: Decimal(19,0); //과세기간(시작일)			
    PAYRVAT	: Decimal(19,0); //납부(환급)세액		
    ETGTVAT	: Decimal(19,0); //기타공제경감합계세액			
    CRCDVAT	: Decimal(19,0); //신용카드매출전표발행공제세액			
    GGATVAT	: Decimal(19,0); //경감공제세액합계		
    WKTNUM	: String(15); //사업장전화번호			
    YENRVAT	: Decimal(19,0); //예정신고미환급세액			
    YENOVAT	: Decimal(19,0); //예정고지세액			
    GOLDVAT	: Decimal(19,0); //금지금매입자납부특례기납부세액			
    ADDTVAT	: Decimal(19,0); //가산세액계		
    CGPRVAT	: Decimal(19,0); //차가감납부할세액			
    TOPRVAT	: Decimal(19,0); //총괄납부사업자납부할세액(환급)		
    EDATE	: Date; //과세기;간(종료일)			
    BANKCODE : Decimal(19,0); //은행코드(국세환급금)	
    BANKNAME : String(30); //은행지점명		
    ACCTNUM	 : String(20); //계좌번호(국세환급금)		
    ETITOVAT : Decimal(19,0); //기타매입합계세액			
    CLOSDATE : Date; //폐업일자	
    CLOSREAS : String(20); //페업사유			
    MAKEDATE : Date; //작성일자			
    INDUSTR1 : String(30); //과세표준명세업태1			
    BUSINES1 : String(30); //과세표준명세종목1			
    BCATCOD1 : String(6); //과세표준명세업종코드1			
    STANAMT1 : Decimal(19,6); //과세표준명세금액1			
    COMPANY : String(50); //상호(법인명)
    INDUSTR2 : String(30);	//과세표준명세업태2			
    BUSINES2 : String(30);	//과세표준명세종목2			
    NOIAMT	 : Decimal(19,0); //불공제매입금액			
    BCATCOD2 : String(6);	//과세표준명세업종코드2			
    STANAMT2 : Decimal(19,0);	//과세표준명세금액2			
    INDUSTR3 : String(30);	//과세표준명세업태3			
    BUSINES3 : String(30);	//과세표준명세종목3			
    BCATCOD3 : String(6);	//과세표준명세업종코드3	
    STANAMT3 : Decimal(19,0);	//과세표준명세금액3	
    BUSINES4 : String(30);	//과세표준명세수입제외 종목4
    BCATCOD4 : String(6);	//과세표준명세수입제외 업종코드4
    REPNAME	: String(30); //성명(대표자명)
    STANAMT4 : Decimal(19,6); //과세표준명세수입제외 금액4
    NOIVAT : Decimal(19,6);	//불공제매입세액			decimal(19,6)
    STANAMTT : Decimal(19,6);	//과세표준명세합계금액			decimal(19,6)
    YEOTAMT	: Decimal(19,6); //예정누락매출과세세금계산서금액			decimal(19,6)
    YEOTVAT	: Decimal(19,6); //예정누락매출과세세금계산서세액			decimal(19,6)
    YEOEAMT	: Decimal(19,6); //예정누락매출과세기타금액			decimal(19,6)
    YEOEVAT	: Decimal(19,6); //예정누락매출과세기타세액			decimal(19,6)
    YEOZAMT	: Decimal(19,6); //예정누락매출영세세금계산서금액			decimal(19,6)
    YEOZEAMT :Decimal(19,6); //예정누락매출영세기타금액			decimal(19,6)
    YEOTOAMT :Decimal(19,6); //예정누락매출합계금액			decimal(19,6)
    YEOTOVAT :Decimal(19,6); //예정누락매출합계세액			decimal(19,6)
    VATREGNO :Decimal(19,6); //사업자등록번호			nvarchar(13)
    NOICOAMT :Decimal(19,6); //불공제공통매입금액			decimal(19,6)
    YEITAMT	: Decimal(19,6); //예정누락매입세금계산서금액			decimal(19,6)
    YEITVAT	: Decimal(19,6); //예정누락매입세금계산서세액			decimal(19,6)
    YEIEAMT	: Decimal(19,6); //예정누락매입기타금액			decimal(19,6)
    YEIEVAT	: Decimal(19,6); //예정누락매입기타세액			decimal(19,6)
    YEITOAMT : Decimal(19,6); //예정누락매입합계금액			decimal(19,6)
    YEITOVAT : Decimal(19,6); //예정누락매입합계세액			decimal(19,6)
    ETICGAMT : Decimal(19,6); //기타매입신용일반금액			decimal(19,6)
    ETICGVAT : Decimal(19,6); //기타매입신용일반세액			decimal(19,6)
    ETICFAMT : Decimal(19,6); //기타매입신용고정금액			decimal(19,6)
    ETICFVAT : Decimal(19,6); //기타매입신용고정세액			decimal(19,6)
    NOICOVAT : Decimal(19,6); //불공제공통매입세액			decimal(19,6)
    BRANCH : String(30); //은행지점명			nvarchar(30)
    NOIBEAMT : Decimal(19,6); //불공제대손처분금액			decimal(19,6)
    ADDID : String(14); //주민(법인)등록번호			nvarchar(14)
    NOIBEVAT : Decimal(19,6); //불공제대손처분세액			decimal(19,6)
    NOITOAMT : Decimal(19,6); //불공제매입합계금액			decimal(19,6)
    NOITOVAT : Decimal(19,6); //불공제매입합계세액			decimal(19,6)
    ETGESVAT : Decimal(19,6); //기타전자신고공제세액			decimal(19,6)
    ADDTNUM	 : String(15); //주소지전화번호			nvarchar(15)
    ETGEIVAT : Decimal(19,6); //기타전자세금발급공제세액			decimal(19,6)
    ETGTRVAT : Decimal(19,6); //기타택시운송경감세액			decimal(19,6)
    ETGCOVAT : Decimal(19,6); //기타원산지확인서공제세액			decimal(19,6)
    ETGCAVAT : Decimal(19,6); //기타현급영수증공제세액			decimal(19,6)
    ETGETVAT : Decimal(19,6); //기타경감공제기타세액			decimal(19,6)
    ETIDEAMT : Decimal(19,6); //기타매입의제금액			decimal(19,6)
    ETGTOVAT : Decimal(19,6); //기타경감공제합계세액			decimal(19,6)
    ADURAMT	 : Decimal(19,6); //가산세사업자미등록금액			decimal(19,6)
    ADURVAT	 : Decimal(19,6); //가산세사업자미등록세액			decimal(19,6)
    ADTDSAMT : Decimal(19,6); //가산세세금계산서지연발급금액			decimal(19,6)
    ADTDSVAT : Decimal(19,6); //가산세세금계산서지연발급세액			decimal(19,6)
    MNUM : String(15); //휴대전화번호			nvarchar(15)
    ADTDRAMT : Decimal(19,6); //가산세세금계산서지연수취금액			decimal(19,6)
    ADTDRVAT : Decimal(19,6); //가산세세금계산서지연수취세액			decimal(19,6)
    ADTNSAMT : Decimal(19,6); //가산세세금계산서미발급금액			decimal(19,6)
    ADTNSVAT : Decimal(19,6); //가산세세금계산서미발급세액			decimal(19,6)
    ETIDEVAT : Decimal(19,6); //기타매입의제세액			decimal(19,6)
    ADETDAMT : Decimal(19,6); //가산세전자세금계산서지연전송금액			decimal(19,6)
    ADETDVAT : Decimal(19,6); //가산세전자세금계산서지연전송세액			decimal(19,6)
    ADETNAMT : Decimal(19,6); //가산세전자세금계산서미전송금액			decimal(19,6)
    ADETNVAT : Decimal(19,6); //가산세전자세금계산서미전송세액			decimal(19,6)
    ADTRNAMT : Decimal(19,6); //가산세세금계산서합계표제출불성실금액			decimal(19,6)
    ADTRNVAT : Decimal(19,6); //가산세세금계산서합계표제출불성실세액			decimal(19,6)
    BPLADDR : String(70); //사업장주소			nvarchar(70)
    ADTRDAMT : Decimal(19,6); //가산세세금계산서합계표제출지연금액			decimal(19,6)
    ADTRDVAT : Decimal(19,6); //가산세세금계산서합계표지연제출세액			decimal(19,6)
    ADRNGAMT : Decimal(19,6); //가산세신고불성실무신고(일반)금액			decimal(19,6)
    ETIREAMT : Decimal(19,6); //기타매입재활용금액			decimal(19,6)
    ADRNGVAT : Decimal(19,6); //가산세신고불성실무신고(일반)세액			decimal(19,6)
    ADRNUAMT : Decimal(19,6); //가산세신고불성실무신고(부당)금액			decimal(19,6)
    ADRNUVAT : Decimal(19,6); //가산세신고불성실무신고(부당)세액			decimal(19,6)
    ADRRGAMT : Decimal(19,6); //가산세신고불성실환급신고(일반)금액			decimal(19,6)
    ADRRGVAT : Decimal(19,6); //가산세신고불성실환급신고(일반)세액			decimal(19,6)
    ADRRUAMT : Decimal(19,6); //가산세신고불성실환급신고(부당)금액			decimal(19,6)
    ADRRUVAT : Decimal(19,6); //가산세신고불성실환급신고(부당)세액			decimal(19,6)
    EMAADDR	 : String(50); //   전자우편주소			nvarchar(50)
    ADPAYAMT : Decimal(19,6); //가산세납부불성실금액			decimal(19,6)
    ADPAYVAT : Decimal(19,6); //가산세납부불성실세액			decimal(19,6)
    ETIREVAT : Decimal(19,6); //기타매입재활용세액			decimal(19,6)
    ADZERAMT : Decimal(19,6); //가산세영세율신고불성실금액			decimal(19,6)
    ADZERVAT : Decimal(19,6); //가산세영세율신고불성실세액			decimal(19,6)
    ADCASAMT : Decimal(19,6); //가산세현금매출명세서불성실금액			decimal(19,6)
    ADCASVAT : Decimal(19,6); //가산세현금매출명세서불성실세액			decimal(19,6)
    ADRENAMT : Decimal(19,6); //가산세부동산임대공금가액불성실금액			decimal(19,6)
    ADRENVAT : Decimal(19,6); //가산세부동산임대공금가액불성실세액			decimal(19,6)
    ADTOVAT : Decimal(19,6); //가산세명세합계세액			decimal(19,6)
    FREINDU1 : String(30); //면세사업수입업태1			nvarchar(30)
    INDUSTRY : String(30); //업태명			nvarchar(30)
    FREBUSI1 : String(30); //면세사업수입업종1			nvarchar(30)
    ETIGOAMT : Decimal(19,6); //기타매입고금의제금액			decimal(19,6)
    FRECODE1 : String(30); //면세사업수입코드1			nvarchar(6)
    FREAMT1	 : Decimal(19,6); //   면세사업수입금액1			decimal(19,6)
    FREINDU2 : String(30); //면세사업수입업태2			nvarchar(30)
    FREBUSI2 : String(30); //면세사업수입업종2			nvarchar(30)
    FRECODE2 : String(6); //면세사업수입코드2			nvarchar(6)
    FREAMT2	: Decimal(19,6); //면세사업수입금액2			decimal(19,6)
    FREINDU3 : String(30); //면세사업수입업태3			nvarchar(30)
    FREBUSI3 : String(30); //면세사업수입업종3			nvarchar(30)
    FRECODE3 : String(6); //면세사업수입코드3			nvarchar(6)
    BUSINESS : String(50); //종목명			nvarchar(50)
    ETIGOVAT : Decimal(19,6); //기타매입고금의제세액			decimal(19,6)
    FREAMT3	 : Decimal(19,6); //면세사업수입금액3			decimal(19,6)
    FRETOAMT : Decimal(19,6); //면세사업수입합계금액			decimal(19,6)
    BILGAMT	 : Decimal(19,6); //계산서교부금액			decimal(19,6)
    BILAAMT	 : Decimal(19,6); //계산서수취금액			decimal(19,6)
    PROVAT	 : Decimal(19,6); //사업양수자의대리납부기납부세액			decimal(19,6)
    ETITRVAT : Decimal(19,6); //외국인관광객환급세액			decimal(19,6)
    ADACTAMT : Decimal(19,6); //가산세거래계좌미사용금액			decimal(19,6)
    ADACTVAT : Decimal(19,6); //가산세거래계좌미사용세액			decimal(19,6)
    ADACDAMT : Decimal(19,6); //가산세거래계좌지연입금금액			decimal(19,6)
    ADACDVAT : Decimal(19,6); //가산세거래계좌지연입금세액			decimal(19,6)
    ETICHVAT : Decimal(19,6); //기타매입과세사업전환세액			decimal(19,6)
    BCATCODE : Decimal(19,6); //업종코드			nvarchar(7)
    OBITAMT	: Decimal(19,6); //매출과세세금계산서금액			decimal(19,6)
    OBITVAT	: Decimal(19,6); //매출과세세금계산서세액			decimal(19,6)
    OBIPAMT	: Decimal(19,6); //매출과세매입자발행금액			decimal(19,6)
    OBIPVAT	: Decimal(19,6); //매출과세매입자발행세액			decimal(19,6)
    OBICAMT	: Decimal(19,6); //매출과세신용카드현금영수증금액			decimal(19,6)
    OBICVAT	: Decimal(19,6); //매출과세신용카드현금영수증세액			decimal(19,6)
    OBIEAMT	: Decimal(19,6); //매출과세기타금액			decimal(19,6)
    OBIEVAT	: Decimal(19,6); //매출과세기타세액			decimal(19,6)
    CRECARDVAT : Decimal(19,6); //신용카드업자의대리납부기납부세액			decimal(19,6)
    ETGPRVAT : Decimal(19,6); //기타대리납부세액공제			decimal(19,6)
}
