using BSNC_VAT_0030_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';
using BSNC_VAT_0030_SERVICE.BSNC_VAT_0030L as BSNC_VAT_0030L from './layouts_0030L';
// using from '../../srv/vat-service';
// using from '../../db/schema';



annotate service.BSNC_VAT_0030H with @(
    // 검색 필터 필드
    UI.SelectionFields : [  
        CODE,
        NAME
        //insert your selection fields enhancement here
    ],
);
    
annotate service.BSNC_VAT_0030H with @(
    //조회 페이지 컬럼
    UI.LineItem : [     
        {
            $Type : 'UI.DataField',
            Label : '코드',
            Value : CODE,
            ![@HTML5.CssDefaults] : {width : '8rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '이름',
            Value : NAME,
            ![@HTML5.CssDefaults] : {width : '15rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '비고',
            Value : REMARK,
            ![@HTML5.CssDefaults] : {width : '15rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '생성유저',
            Value : createdBy,
            ![@HTML5.CssDefaults] : {width : '7rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '생성일',
            Value : createdAt,
            ![@HTML5.CssDefaults] : {width : '10rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '수정유저',
            Value : modifiedBy,
            ![@HTML5.CssDefaults] : {width : '7rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '수정일',
            Value : modifiedAt,
            ![@HTML5.CssDefaults] : {width : '10rem'}
        },
    ]
);

annotate service.BSNC_VAT_0030H with @(
    //검색결과
    UI.PresentationVariant : {
        Text           : 'Default',
        Visualizations : ['@UI.LineItem'],
        SortOrder      : [{
        $Type      : 'Common.SortOrderType',
        Property   : CODE,
        Descending : true
        }]
    }
);

annotate service.BSNC_VAT_0030H with @(
    UI.HeaderInfo :{
        TypeName        : '',
        TypeNamePlural  : '',
        Title           : {
           $Type : 'UI.DataField',
            Value : CODE,
        },
        Description     : {
            $Type : 'UI.DataField',
            Value : NAME,
        },
        ImageUrl : 'sap-icon://activity-2',
        Initials : 'VAT', //Up to two latin letters are displayed
    },
);

/**
    UI.HeaderFacets
    Search-Term: #HeaderFacets
 */


annotate service.BSNC_VAT_0030H with @(
     UI.Facets :[
        {
        $Type     : 'UI.ReferenceFacet',
        Target        : '@UI.FieldGroup#G01',
        Label         : '',
        //![@UI.Hidden] : IsActiveEntity,
        },
        {
            $Type   : 'UI.ReferenceFacet',
            Target  : 'BSNC_VAT_0030L/@UI.PresentationVariant',
            ID      : '0001LSection',
            Label   : '',
        },
    ],
);

annotate service.BSNC_VAT_0030H with @(
        UI.FieldGroup #G01       : {
        Data : [
            {Value : CODE},
            {Value : NAME},
           // {Value : REMARK},  
        ]
    },
    
);

