using BSNC_VAT_0040_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';
//using from '../../srv/vat-service';
//using from '../../db/schema';

annotate service.BSNC_VAT_0040L with @(
    UI.HeaderInfo : {
        TypeName        : ' ',
        TypeNamePlural  : ' ', 
        Title           : {
            $Type : 'UI.DataField',
            Value : 'BSNC_VAT_0040L',
        },
    },
);

annotate service.BSNC_VAT_0040L with @(
    UI.PresentationVariant : {
        SortOrder       : [
            {
                Property    : YEAR,
                Descending  : false,
            },
        ],
        Visualizations  : ['@UI.LineItem'],
    },
);


annotate service.BSNC_VAT_0040L with @(
    UI.LineItem : [
        // {
        //     $Type : 'UI.DataField',
        //     Value : LINEID
        // },
        {
            $Type : 'UI.DataField',
            Value : YEAR,
            ![@HTML5.CssDefaults] : {width : '20rem'}            
        },
        {
            $Type : 'UI.DataField',
            Value : GUBUN,
            ![@HTML5.CssDefaults] : {width : '20rem'}
        },   
        {
            $Type : 'UI.DataField',
            Value : INDUSTRY,
            ![@HTML5.CssDefaults] : {width : '20rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : BUSINESS,
            ![@HTML5.CssDefaults] : {width : '20rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : TYPECODE,
            ![@HTML5.CssDefaults] : {width : '20rem'}
        }
    ]
);