using BSNC_VAT_0050_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';
using BSNC_VAT_0050_SERVICE.BSNC_VAT_0050L as BSNC_VAT_0050L from './layouts_0050L';
using BSNC_VAT_0050_SERVICE.BSNC_VAT_0050M as BSNC_VAT_0050M from './layouts_0050M';
using BSNC_VAT_0050_SERVICE.BSNC_VAT_0050N as BSNC_VAT_0050N from './layouts_0050N';
using BSNC_VAT_0050_SERVICE.BSNC_VAT_0050O as BSNC_VAT_0050O from './layouts_0050O';
// using from '../../srv/vat-service';
// using from '../../db/schema';

annotate service.BSNC_VAT_0050H with @(
    // 검색 필터 필드
    UI.SelectionFields : [  
        YEAR,
        GUBUN,
        MM
        //insert your selection fields enhancement here
    ],
);
   
annotate service.BSNC_VAT_0050H with @(
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

annotate service.BSNC_VAT_0050H with @(
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

annotate service.BSNC_VAT_0050H with @(
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

annotate service.BSNC_VAT_0050H with @(
     UI.Facets :[
         // G01
        {$Type     : 'UI.ReferenceFacet',
        Target        : '@UI.FieldGroup#G01',
        Label         : 'G01',
        //![@UI.Hidden] : IsActiveEntity, // 저장데이터 표시여부 (사용시 편집에서만 보임 )
        },
        // 과세표
         {$Type     : 'UI.ReferenceFacet',
        Target        : '@UI.FieldGroup#G02',
        Label         : '과세표준 명세 외',
        //![@UI.Hidden] : IsActiveEntity,
        }, 
        {
            $Type   : 'UI.ReferenceFacet',
            Target  : 'BSNC_VAT_0050N/@UI.PresentationVariant',
            ID      : '0004LSection',
            Label   : '과세표준명세',
        }, 
        {
            $Type   : 'UI.ReferenceFacet',
            Target  : 'BSNC_VAT_0050O/@UI.PresentationVariant',
            ID      : '0003LSection',
            Label   : '면세사업 수입금액',
        },     
        {
            $Type   : 'UI.ReferenceFacet',
            Target  : 'BSNC_VAT_0050L/@UI.PresentationVariant',
            ID      : '0001LSection',
            Label   : '기타경감 공제세액',
        },
        {
            $Type   : 'UI.ReferenceFacet',
            Target  : 'BSNC_VAT_0050M/@UI.PresentationVariant',
            ID      : '0002LSection',
            Label   : '가산세액',
        },
    ],
);

// 필드 그룹 설정
annotate service.BSNC_VAT_0050H with @(
    UI.FieldGroup #G01    : {
        Data : [
            {Value : YEAR},
            {Value : GUBUN},
            {Value : MM},
            {Value : BPLID},
            {Value : CONFIRM}
        ]
    },
    UI.FieldGroup #G02    : {
        Data : [
         	 {Value : YENRVAT},//	예정신고미환급세액		
             {Value : YENOVAT},//	예정고지세액		
             {Value : PROVAT},//	사업양수자의대리납부기납부세액		
             {Value : GOLDVAT},//	금지금매입자납부특례기납부세액		
             {Value : CRECARDVAT}//	신용카드업자의대리납부기납부세액		
        ]
    },

);

