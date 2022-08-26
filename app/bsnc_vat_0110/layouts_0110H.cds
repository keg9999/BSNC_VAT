using BSNC_VAT_0110_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';
using BSNC_VAT_0110_SERVICE.BSNC_VAT_0110L as BSNC_VAT_0110L from './layouts_0110L';


annotate service.BSNC_VAT_0110H with @(
    // 검색 필터 필드
    UI.SelectionFields : [  
        BPLID
    ],
);
    
annotate service.BSNC_VAT_0110H with @(
    UI.LineItem : [     
        {
            $Type : 'UI.DataField',
            Label : '사업장',
            Value : BPLID,
            ![@HTML5.CssDefaults] : {width : '13rem'}
        },
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
            ![@HTML5.CssDefaults] : {width : '13rem'}
        },
        {
            //과세기간
            $Type               : 'UI.DataFieldForAnnotation',
            Target              : '@UI.FieldGroup#G01', 
            Label               : '과세기간',
            ![@HTML5.CssDefaults] : {width : '12rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '작성일',
            Value : DOCDATE,
            ![@HTML5.CssDefaults] : {width : '12rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '신고일',
            Value : SUMDATE,
            ![@HTML5.CssDefaults] : {width : '12rem'}
        }
    ]
);

annotate service.BSNC_VAT_0110H with @(
    //검색결과
    UI.PresentationVariant : {
        Text           : 'Default',
        Visualizations : ['@UI.LineItem'],
        SortOrder      : [{
        $Type      : 'Common.SortOrderType',
        Property   : BPLID,
        Descending : true
        }]
    }
);

annotate service.BSNC_VAT_0110H with @(
    UI.HeaderInfo :{
        TypeName        : '',
        TypeNamePlural  : '',
        Title           : {
           $Type : 'UI.DataField',
            Value : BPLID,
        },
        Description     : {
            $Type : 'UI.DataField',
            Value : YEAR,
        },
        ImageUrl : 'sap-icon://travel-expense-report',
        Initials : 'VAT', //Up to two latin letters are displayed
    },
);

/**
    UI.HeaderFacets
 */
annotate service.BSNC_VAT_0110H with @(
    UI.HeaderFacets : [
        {
            $Type   : 'UI.ReferenceFacet',
            Target  : '@UI.FieldGroup#G02',
            Label   : '기본정보',
        },
        {
            $Type   : 'UI.ReferenceFacet',
            Target  : '@UI.FieldGroup#G03',
            Label   : '세부정보',
        },

    ],
);


/**
    UI.FieldGroup
 */
annotate service.BSNC_VAT_0110H with @(
    UI.FieldGroup #G01            : {   //G01: 리스트페이지 - 과세기간
        Data  : [
            {Value : FDATE},
            {Value : TDATE},
        ]
    },
    UI.FieldGroup #G02            : {
        Data  : [
            {Value : BPLID},
            {Value : YEAR},
            {Value : GUBUN},
        ]
    },
    UI.FieldGroup #G03            : {
        Data  : [
            {Value : FDATE},
            {Value : TDATE},
            {Value : DOCDATE},
            {Value : SUMDATE},
            {Value : FILEPATH},
        ]
    },
    UI.FieldGroup #G04_ShowWhenInEdit : {Data : [
        {Value : BPLID},
        {Value : YEAR},
        {Value : GUBUN},
        ]
    },
    UI.FieldGroup #G05_ShowWhenInEdit : {Data : [
        {
            $Type  : 'UI.DataFieldForAnnotation',
            Target : '@UI.ConnectedFields#G03_DATE',
        },
        {Value : DOCDATE},
        {Value : SUMDATE},
        {Value : FILEPATH},
    ]},
);

/**
    UI.ConnectedFields
 */
annotate service.BSNC_VAT_0110H with @(
    //Connected Fields only possible for sections on object pages
    UI.ConnectedFields #G03_DATE : {
        Label       : '과세기간',
        Template    : '{FDATE} - {TDATE}',
        Data        : {
            FDATE    : {
                $Type : 'UI.DataField', //Without $Type, it wont work
                Value : FDATE,
            },
            TDATE     : {
                $Type : 'UI.DataField',
                Value : TDATE,
            },
        },
    },
);

annotate service.BSNC_VAT_0110H with @(
     UI.Facets :[
        {
            $Type   : 'UI.CollectionFacet',
            ID      : 'collectionFacetSection',
            Label   : '',
            Facets  : [
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#G04_ShowWhenInEdit',
                    Label   : '',
                    ![@UI.Hidden] : IsActiveEntity,
                },
                {
                    $Type   : 'UI.ReferenceFacet',
                    Target  : '@UI.FieldGroup#G05_ShowWhenInEdit',
                    Label   : '',
                    ![@UI.Hidden] : IsActiveEntity,
                }
            ]
        },   
        {
            $Type   : 'UI.ReferenceFacet',
            Target  : 'BSNC_VAT_0110L/@UI.PresentationVariant',
            ID      : '0001LSection',
            Label   : '',
        },
    ],
);
