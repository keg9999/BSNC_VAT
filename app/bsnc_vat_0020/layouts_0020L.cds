using BSNC_VAT_0020_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';
//using from '../../srv/vat-service';
//using from '../../db/schema';

annotate service.BSNC_VAT_0020L with @(
    UI.HeaderInfo : {
        TypeName        : ' ',
        TypeNamePlural  : ' ', 
        Title           : {
            $Type : 'UI.DataField',
            Value : 'BSNC_VAT_0020L',
        },
    },
);

annotate service.BSNC_VAT_0020L with @(
    UI.PresentationVariant : {
        SortOrder       : [
            {
                Property    : TAXCODE,
                Descending  : false,
            },
        ],
        Visualizations  : ['@UI.LineItem'],
    },
);


annotate service.BSNC_VAT_0020L with @(
    UI.LineItem : [   
        {
            $Type : 'UI.DataField',
            Value : TAXCODE,
            //![@HTML5.CssDefaults] : {width : '7rem'}  //컬럼 사이즈
        },
        {
            $Type : 'UI.DataField',
            Value : TAXNAME,
            //![@HTML5.CssDefaults] : {width : '15rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : TAXTYPE,
            //![@HTML5.CssDefaults] : {width : '5rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : ETAX,
            //![@HTML5.CssDefaults] : {width : '5rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : FIXTAX,
            //![@HTML5.CssDefaults] : {width : '15rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : NONDEDCT,
            //![@HTML5.CssDefaults] : {width : '15rem'}
        },
                {
            $Type : 'UI.DataField',
            Value : CREDITCD,
            //![@HTML5.CssDefaults] : {width : '5rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : DEEMTAX,
            //![@HTML5.CssDefaults] : {width : '5rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : ETCTAX,
            //![@HTML5.CssDefaults] : {width : '15rem'}
        },
        {
            $Type : 'UI.DataField',
            Value : REMARK,
            //![@HTML5.CssDefaults] : {width : '15rem'}
        }
    ]
);