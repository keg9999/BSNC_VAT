using BSNC_VAT_0060_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';
// using from '../../srv/vat-service';
// using from '../../db/schema';

annotate service.BSNC_VAT_0060H_UI with @(
    // 검색 필터 필드
    UI.SelectionFields : [  
        YEAR,
        GUBUN
        //insert your selection fields enhancement here
    ],
);
    
annotate service.BSNC_VAT_0060H_UI with @(
    //조회 페이지 컬럼
    UI.LineItem : [     
        {
            $Type : 'UI.DataField',
            Label : '년도',
            Value : YEAR,
            ![@HTML5.CssDefaults] : {width : '8rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '구분',
            Value : GUBUN,
            ![@HTML5.CssDefaults] : {width : '15rem'}
        },
    
    ]
);

annotate service.BSNC_VAT_0060H_UI with @(
    //검색결과
    UI.PresentationVariant : {
        Text           : 'Default',
        Visualizations : ['@UI.LineItem'],
        SortOrder      : [{
        $Type      : 'Common.SortOrderType',
        Property   : YEAR,
        Descending : true
        }]
    }
);
annotate service.BSNC_VAT_0060H_UI with @(
    UI.HeaderInfo :{
        TypeName        : '',
        TypeNamePlural  : '',
        Title           : {
           $Type : 'UI.DataField',
            Value : 'BSNC_VAT_0060_UI',
        },
        Description     : {
            $Type : 'UI.DataField',
            Value : '부가세자료생성',
        },
        ImageUrl : 'sap-icon://activity-2',
        Initials : 'VAT', //Up to two latin letters are displayed
    },
);

annotate service.BSNC_VAT_0060H_UI with @(
     UI.Facets :[
         // G01
        {$Type     : 'UI.ReferenceFacet',
        Target        : '@UI.FieldGroup#G01',
        Label         : '',
        //![@UI.Hidden] : IsActiveEntity, // 저장데이터 표시여부 (사용시 편집에서만 보임 )
        },
    ],
);

// 필드 그룹 설정
annotate service.BSNC_VAT_0060H_UI with @(
    UI.FieldGroup #G01    : {
        Data : [            
            {Value : BPLID, Label : '사업장'},
            {Value : YEAR, Label : '년도'},
            {Value : GUBUN, Label : '구분'},
            {Value : REFDATE, Label : '집계기준일'},
            {Value : BILLYN,  Label : '계산서포함'}
        ]
    },
);
