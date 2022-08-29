using BSNC_VAT_0050_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';
//using from '../../srv/vat-service';
//using from '../../db/schema';

annotate service.BSNC_VAT_0050M with @(
    UI.HeaderInfo : {
        TypeName        : ' ',
        TypeNamePlural  : ' ', 
        Title           : {
            $Type : 'UI.DataField',
            Value : 'BSNC_VAT_0050M',
        },
    },
);

annotate service.BSNC_VAT_0050M with @(
    UI.PresentationVariant : {
        SortOrder       : [
            {
                Property    : VCODE,
                Descending  : false,
            },
        ],
        Visualizations  : ['@UI.LineItem'],
    },
);


annotate service.BSNC_VAT_0050M with @(
    UI.LineItem : [
        // {
        //     $Type : 'UI.DataField',
        //     Value : LINEID
        // },
        {
            $Type : 'UI.DataField',
            Value : VCODE,
            ![@HTML5.CssDefaults] : {width : '20rem'}            
        },
        {
            $Type : 'UI.DataField',
            Value : VNAME,
            ![@HTML5.CssDefaults] : {width : '20rem'}
        },   
        {
            $Type : 'UI.DataField',
            Value : AMT,
            ![@HTML5.CssDefaults] : {width : '20rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : VAT,
            ![@HTML5.CssDefaults] : {width : '20rem'}
        }
    ]
);