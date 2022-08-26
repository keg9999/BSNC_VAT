using BSNC_VAT_0050_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';
//using from '../../srv/vat-service';
//using from '../../db/schema';

annotate service.BSNC_VAT_0050O with @(
    UI.HeaderInfo : {
        TypeName        : ' ',
        TypeNamePlural  : ' ', 
        Title           : {
            $Type : 'UI.DataField',
            Value : 'BSNC_VAT_0050O',
        },
    },
);

annotate service.BSNC_VAT_0050O with @(
    UI.PresentationVariant : {
        SortOrder       : [
            {
                Property    : INDUSTRY,
                Descending  : false,
            },
        ],
        Visualizations  : ['@UI.LineItem'],
    },
);


annotate service.BSNC_VAT_0050O with @(
    UI.LineItem : [
        // {
        //     $Type : 'UI.DataField',
        //     Value : LINEID
        // },
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
        },
        {
            $Type : 'UI.DataField',
            Value : AMT,
            ![@HTML5.CssDefaults] : {width : '20rem'}
        }
    ]
);