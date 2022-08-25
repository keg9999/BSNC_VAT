using BSNC_VAT_0040_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';
using BSNC_VAT_0040_SERVICE.BSNC_VAT_0040L as BSNC_VAT_0040L from './layouts_0040L';
// using from '../../srv/vat-service';
// using from '../../db/schema';

annotate service.BSNC_VAT_0040H with @(
    // 검색 필터 필드
    UI.SelectionFields : [  
        YEAR,
        GUBUN
        //insert your selection fields enhancement here
    ],
);
   
annotate service.BSNC_VAT_0040H with @(
    //조회 페이지 컬럼
    UI.LineItem : [     
        {
            $Type : 'UI.DataField',
            Label : '년도',
            Value : YEAR,
            ![@HTML5.CssDefaults] : {width : '8rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '구분',
            Value : GUBUN,
            ![@HTML5.CssDefaults] : {width : '15rem'}
        },
    ]
);

annotate service.BSNC_VAT_0040H with @(
    //검색결과
    UI.PresentationVariant : {
        Text           : 'Default',
        Visualizations : ['@UI.LineItem'],
        SortOrder      : [{
        $Type      : 'Common.SortOrderType',
        Property   : YEAR,
        Descending : true
        }]
    }
);

annotate service.BSNC_VAT_0040H with @(
    UI.HeaderInfo :{
        TypeName        : '',
        TypeNamePlural  : '',
        Title           : {
           $Type : 'UI.DataField',
            Value : YEAR,
        },
        Description     : {
            $Type : 'UI.DataField',
            Value : GUBUN,
        },
        ImageUrl : 'sap-icon://activity-2',
        Initials : 'VAT', //Up to two latin letters are displayed
    },
);

/**
    UI.HeaderFacets
    Search-Term: #HeaderFacets
 */
 /*
 // 상단에 값 표시
annotate service.BSNC_VAT_0040H with @(
    UI.HeaderFacets : [       
        {         
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#G01',
                    Label   : '{i18n>generalData}',
        },
               
        {
            $Type   : 'UI.ReferenceFacet',
            Target  : '@UI.DataPoint#headerGUBUN',
        },
        {
            $Type   : 'UI.ReferenceFacet',
            Target  : '@UI.DataPoint#headerOBJECTNUM',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerBPLID',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerMAINBPL',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerBPLNAME',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerREPNAME',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerADDID',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerREGNUM',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerADDRESS',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerZIPCODE',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerEMAIL',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerTAXOFFC',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerOPENDT',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerBANKNAME',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerBRANCH',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerRETYPE',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerACCOUNT',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerNOTREFU',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerMTYPE',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerTAXID',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerTAXPW',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerPGMCD',
        },
        {
             $Type   : 'UI.ReferenceFacet',
             Target  : '@UI.DataPoint#headerROOT',
        },
        
    ],
);
*/

/*
// 헤더 그룹 설정
annotate service.BSNC_VAT_0040H with @(   
//    UI.FieldGroup #header    : {
//         Data : [
//             {Value : YEAR},
//             {Value : GUBUN},
//             {Value : MM},
//             {Value : BPLID},
//         ]
//     },
    UI.DataPoint #headerGUBUN: {
        Value           : GUBUN,
        Title           : '그룹2',
    },
    UI.DataPoint #headerOBJECTNUM: {
        Value           : OBJECTNUM,
        Title           : '문서번호',
    },
    UI.DataPoint #headerBPLID: {
       Value            : BPLID,
       Title            : '사업장',
       
    },				
    UI.DataPoint #headerMAINBPL: {
       Value            :  MAINBPL,     				
       Title            : '주사업장',       
    },
     UI.DataPoint #headerBPLNAME: {
       Value            :  BPLNAME,    				
       Title            : '상호(법인명)',  
    },
     UI.DataPoint #headerREPNAME: {
       Value            :  REPNAME,     				
       Title            : '성명(대표자명)',       
    },
     UI.DataPoint #headerPHONE: {
       Value            :  PHONE,     				
       Title            : '전화번호',       
    },
      UI.DataPoint #headerADDID: {
       Value            : ADDID,      				
       Title            : '주민(법인)등록번호',       
    },
       UI.DataPoint #headerREGNUM: {
       Value            : REGNUM,      				
       Title            : '사업자등록번호',       
    },
       UI.DataPoint #headerADDRESS: {
       Value            :  ADDRESS,     				
       Title            : '사업장주소',       
    },
       UI.DataPoint #headerZIPCODE: {
       Value            :  ZIPCODE,     				
       Title            : '우편번호',       
    },
       UI.DataPoint #headerEMAIL: {
       Value            :  EMAIL,     				
       Title            : '전자메일',       
    },
       UI.DataPoint #headerTAXOFFC: {
       Value            :  TAXOFFC,    				
       Title            : '관할세무소',       
    },
       UI.DataPoint #headerOPENDT: {
       Value            :   OPENDT,    				
       Title            : '개업일',       
    },
       UI.DataPoint #headerBANKNAME: {
       Value            :  BANKNAME,     				
       Title            : '은행',       
    },
       UI.DataPoint #headerBRANCH: {
       Value            :  BRANCH,    				
       Title            : '지점',       
    },
       UI.DataPoint #headerRETYPE: {
       Value            :  RETYPE,     				
       Title            : '환급구분',       
    },
       UI.DataPoint #headerACCOUNT: {
       Value            :  ACCOUNT,   				
       Title            : '계좌번호',       
    },
       UI.DataPoint #headerNOTREFU: {
       Value            :   NOTREFU,    				
       Title            : '조기환급취소',       
    },
       UI.DataPoint #headerMTYPE: {
       Value            :  MTYPE,    				
       Title            : '주업종코드',       
    },
       UI.DataPoint #headerTAXID: {
       Value            : TAXID,      				
       Title            : '홈텍스ID',       
    },
       UI.DataPoint #headerTAXPW: {
       Value            :  TAXPW,     				
       Title            : '홈텍스PW',       
    },
       UI.DataPoint #headerPGMCD: {
       Value            :  PGMCD,     				
       Title            : '프로그램코드',       
    },
       UI.DataPoint #headerROOT: {
       Value            :  ROOT,    				
       Title            : '다운로드 경로',       
    },
);
*/

annotate service.BSNC_VAT_0040H with @(
     UI.Facets :[
         // G01
        {$Type     : 'UI.ReferenceFacet',
        Target        : '@UI.FieldGroup#G01',
        Label         : 'G01',
        //![@UI.Hidden] : IsActiveEntity, // 저장데이터 표시여부 (사용시 편집에서만 보임 )
        },
        // 사업자정보
         {$Type     : 'UI.ReferenceFacet',
        Target        : '@UI.FieldGroup#G02',
        Label         : '사업자정보',
        //![@UI.Hidden] : IsActiveEntity,
        },
        // 국세환급금 계좌신고
        {
        $Type     : 'UI.ReferenceFacet',
        Target        : '@UI.FieldGroup#G03',
        Label         : '국세환급금 계좌신고',
        //![@UI.Hidden] : IsActiveEntity,
        },
        // 업종
         {$Type     : 'UI.ReferenceFacet',
        Target        : '@UI.FieldGroup#G04',
        Label         : '업종',
        //![@UI.Hidden] : IsActiveEntity,
        },
        {
            $Type   : 'UI.ReferenceFacet',
            Target  : 'BSNC_VAT_0040L/@UI.PresentationVariant',
            ID      : '0001LSection',
            Label   : '',
        },
        // 홈텍스
         {$Type     : 'UI.ReferenceFacet',
        Target        : '@UI.FieldGroup#G05',
        Label         : '',
        //![@UI.Hidden] : IsActiveEntity,
        },
    ],
);

// 필드 그룹 설정
annotate service.BSNC_VAT_0040H with @(
    UI.FieldGroup #G01    : {
        Data : [
            {Value : YEAR,
            ![@HTML5.CssDefaults] : {width : '30rem'}
            },
            {Value : GUBUN},
            {Value : MM},
            {Value : BPLID},
            {Value : MAINBPL}
        ]
    },
    UI.FieldGroup #G02    : {
        Data : [
            {Value: BPLNAME},//사업장명		
            {Value: REPNAME},//대표자명		
            {Value: PHONE},  //휴대폰번호		
            {Value: ADDID},  //주민등록번호		
            {Value: REGNUM}, //사업자등록번호           		
            {Value: ADDRESS},//사업장주소		
            {Value: ZIPCODE},//우편번호		
            {Value: EMAIL},  //전자우편         		
            {Value: TAXOFFC},//관할세무소		
            {Value: OPENDT}, //개업일		
        ]
    },
     UI.FieldGroup #G03    : {
        Data : [
            {Value: BANKCD}, //환급은행코드			
            {Value: BANKNAME},//은행명			
            {Value: BRANCH},  //지점			
            {Value: RETYPE},  //환급구분			
            {Value: ACCOUNT}, //계좌			
            {Value: NOTREFU}, //환급제외            			
	
        ]
    },
    UI.FieldGroup #G04    : {
        Data : [
            {Value: MTYPE},    //주업종		           
        ]
    },
    UI.FieldGroup #G05    : {
        Data : [              		
            {Value: TAXID},    //홈텍스ID		
            {Value: TAXPW},    //홈텍스PW		
            {Value: PGMCD},    //프로그램코드		
            {Value: ROOT}      //경로		
        ]
    },

);

