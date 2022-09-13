using BSNC_VAT_0100_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';
using BSNC_VAT_0100_SERVICE.BSNC_VAT_0100_UIL as BSNC_VAT_0100_UIL from './layouts_0100_UIL';

annotate service.BSNC_VAT_0100_UIH with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '사업장',
            Value : BPLID,
        },
        {
            $Type : 'UI.DataField',
            Label : '년도',
            Value : YEAR,
        },
        {
            $Type : 'UI.DataField',
            Label : '구분',
            Value : GUBUN,
        },
    ]
);

annotate service.BSNC_VAT_0100H with @(
    UI.HeaderInfo :{
        TypeName        : '',
        TypeNamePlural  : '',
        Title           : {
           $Type : 'UI.DataField',
            Value : '신고자료생성',
        },
        Description     : {
            $Type : 'UI.DataField',
            Value : 'BSNC_VAT_0100',
        },
        ImageUrl : 'sap-icon://travel-expense-report',
        Initials : 'VAT', //Up to two latin letters are displayed
    },
);

annotate service.BSNC_VAT_0100_UIH with @(
    UI.FieldGroup #G01 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '사업장',
                Value : BPLID,
            },
            {
                $Type : 'UI.DataField',
                Label : '년도',
                Value : YEAR,
            },
            {
                $Type : 'UI.DataField',
                Label : '구분',
                Value : GUBUN,
            },
        ],
    },

    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#G01',
        },
        {
            $Type   : 'UI.ReferenceFacet',
            Target  : 'BSNC_VAT_0100_UIL/@UI.PresentationVariant',
            ID      : '0001LSection',
            Label   : '',
        },
    ]
);
