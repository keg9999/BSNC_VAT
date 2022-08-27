using BSNC_VAT_0110_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';

annotate service.BSNC_VAT_0110L with @(
    UI.HeaderInfo : {
        TypeName        : ' ',
        TypeNamePlural  : ' ', 
        Title           : {
            $Type : 'UI.DataField',
            Value : 'BSNC_VAT_0110L',
        },
    },
);

annotate service.BSNC_VAT_0110L with @(
    UI.PresentationVariant : {
        SortOrder       : [
            {
                Property    : DOCCODE,
                Descending  : false,
            },
        ],
        Visualizations  : ['@UI.LineItem'],
    },
);


annotate service.BSNC_VAT_0110L with @(
    UI.LineItem : [   
        {
            $Type : 'UI.DataField',
            Value : DOCCODE,
            //![@HTML5.CssDefaults] : {width : '15rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : DOCNAME,
            //![@HTML5.CssDefaults] : {width : '5rem'}
        }
    ]
);