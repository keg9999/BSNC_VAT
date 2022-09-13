using BSNC_VAT_0100_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';

annotate service.BSNC_VAT_0100_UIL with @(
    UI.HeaderInfo : {
        TypeName        : ' ',
        TypeNamePlural  : ' ', 
        Title           : {
            $Type : 'UI.DataField',
            Value : 'BSNC_VAT_0100_UIL',
        },
    },
);

annotate service.BSNC_VAT_0100_UIL with @(
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


annotate service.BSNC_VAT_0100_UIL with @(
    UI.LineItem : [   
        {
            $Type : 'UI.DataField',
            Label : '코드',
            Value : DOCCODE,
            //![@HTML5.CssDefaults] : {width : '15rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '신고서종류',
            Value : DOCNAME,
            //![@HTML5.CssDefaults] : {width : '5rem'}
        }
    ]
);