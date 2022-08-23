using VatService as service from '../../srv/vat-service';
using from '../../srv/vat-service';
using from '../../db/schema';



annotate service.BSNC_VAT_0000H with @(
    // 검색 필터 필드
    UI.SelectionFields : [  
        CODE,
        NAME
        //insert your selection fields enhancement here
    ],
    
    //조회 페이지 컬럼
    UI.LineItem : [     
        {
            $Type : 'UI.DataField',
            Label : '코드',
            Value : CODE,
        },
        {
            $Type : 'UI.DataField',
            Label : '오브젝트',
            Value : OBJECTCODE,
        },
        {
            $Type : 'UI.DataField',
            Label : '취소',
            Value : CANCELED,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Commit',
            Value : COMMIT,
        },
        {
            $Type : 'UI.DataField',
            Label : '비활성',
            Value : UNACTIVE,
        },
        {
            $Type : 'UI.DataField',
            Value : STRDATE,
        },
    ],

    //검색결과
    PresentationVariant : {
        Text           : 'Default',
        Visualizations : ['@UI.LineItem'],
        SortOrder      : [{
        $Type      : 'Common.SortOrderType',
        Property   : CODE,
        Descending : true
        }]
    },

    
    //헤더
    UI.HeaderInfo : {
        TypeName       : 'Code',
        TypeNamePlural : 'Codes',
        TypeImageUrl   : 'sap-icon://activity-2',
        Title          : {Value : CODE},
        Description    : {Value : NAME}
    },

    //오브젝트 페이지
    UI.Facets           : [{
        $Type  : 'UI.CollectionFacet',
            Label  : '시스템코드관리', //'GeneralInformation',
            ID     : 'BSNC_VAT_0000L',
            Facets : [{ // 코드
                $Type  : 'UI.ReferenceFacet',
                ID     : 'HeaderCodeInfo',
                Target : '@UI.FieldGroup#CODE',
                Label  : '시스템코드관리'
            },

            ],
        },
        {
            $Type  : 'UI.ReferenceFacet',
            Label  : '코드리스트',
            ID     : '_',
            Target : 'BSNC_VAT_0010L/@UI.LineItem#CodeList',
        },
    ],

    UI.FieldGroup #CODE : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : CODE
            },
            {
                $Type : 'UI.DataField',
                Value : NAME
            },
            {
                $Type : 'UI.DataField',
                Value : REMARK
            },
       ]
    },
);


annotate service.BSNC_VAT_0000L with @(
    UI.LineItem #CodeList : [
        {
            $Type : 'UI.DataField',
            Value : LINEID
        },   
        {
            $Type : 'UI.DataField',
            Value : GCODE
        },
        {
            $Type : 'UI.DataField',
            Value : GNAME
        },
        {
            $Type : 'UI.DataField',
            Value : USEYN
        },
        {
            $Type : 'UI.DataField',
            Value : SEQ
        },
        {
            $Type : 'UI.DataField',
            Value : LINEMEMO
        },
        {
            $Type : 'UI.DataField',
            Value : REF1
        },
        {
            $Type : 'UI.DataField',
            Value : REF2
        },
        {
            $Type : 'UI.DataField',
            Value : REF3
        }
    ]
);
