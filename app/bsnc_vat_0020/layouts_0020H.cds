using BSNC_VAT_0020_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';
using BSNC_VAT_0020_SERVICE.BSNC_VAT_0020L as BSNC_VAT_0020L from './layouts_0020L';


annotate service.BSNC_VAT_0020H with @(
    // 검색 필터 필드
    UI.SelectionFields : [  
        CODE,
        NAME,
        REMARK
    ],
);
    
annotate service.BSNC_VAT_0020H with @(
    UI.LineItem : [     
        {
            $Type : 'UI.DataField',
            Label : '분류',
            Value : CODE,
            ![@HTML5.CssDefaults] : {width : '8rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '분류명',
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

annotate service.BSNC_VAT_0020H with @(
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

annotate service.BSNC_VAT_0020H with @(
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
annotate service.BSNC_VAT_0020H with @(
    UI.HeaderFacets : [
        {
            $Type   : 'UI.ReferenceFacet',
            Target  : '@UI.DataPoint#G01',
        },
        {
            $Type   : 'UI.ReferenceFacet',
            Target  : '@UI.DataPoint#G02',
        },
        {
            $Type   : 'UI.ReferenceFacet',
            Target  : '@UI.DataPoint#G03',
        },
    ],
);

annotate service.BSNC_VAT_0020H with @(
    UI.DataPoint #G01: {
        Value           : CODE,
        Title           : '분류',
    },
    UI.DataPoint #G02: {
        Value           : NAME,
        Title           : '분류명',
    },
    UI.DataPoint #G03: {
        Value           : REMARK,
        Title           : '비고',
    },
);

annotate service.BSNC_VAT_0020H with @(
     UI.Facets :[
        {
        //Search-Terms: #Form, #HidingContent
        $Type     : 'UI.ReferenceFacet',
        Target        : '@UI.FieldGroup#G4_ShowWhenInEdit',
        Label         : '',
        ![@UI.Hidden] : IsActiveEntity,
        },
        {
            $Type   : 'UI.ReferenceFacet',
            Target  : 'BSNC_VAT_0020L/@UI.PresentationVariant',
            ID      : '0001LSection',
            Label   : '',
        },
    ],
);

annotate service.BSNC_VAT_0020H with @(
        UI.FieldGroup #G4_ShowWhenInEdit       : {
        Data : [
            {Value : CODE},
            {Value : NAME},
            {Value : REMARK},  
        ]
    }, 
);