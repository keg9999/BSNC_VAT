using BSNC_VAT_0010_SERVICE as service from '../../srv/BSNC_VAT_0010_SERVICE';
//using from '../../srv/vat-service';
//using from '../../db/schema';

annotate service.BSNC_VAT_0010L with @(
    UI.HeaderInfo : {
        TypeName        : ' ',
        TypeNamePlural  : ' ', 
        Title           : {
            $Type : 'UI.DataField',
            Value : 'BSNC_VAT_0010L',
        },
    },
);

annotate service.BSNC_VAT_0010L with @(
    UI.PresentationVariant : {
        SortOrder       : [
            {
                Property    : VALCD,
                Descending  : false,
            },
        ],
        Visualizations  : ['@UI.LineItem'],
    },
);


annotate service.BSNC_VAT_0010L with @(
    UI.LineItem : [
        // {
        //     $Type : 'UI.DataField',
        //     Value : LINEID
        // },   
        {
            $Type : 'UI.DataField',
            Value : VALCD
        },
        {
            $Type : 'UI.DataField',
            Value : VALNM
        },
        {
            $Type : 'UI.DataField',
            Value : USERYN
        },
        {
            $Type : 'UI.DataField',
            Value : SORT
        },
        {
            $Type : 'UI.DataField',
            Value : RMK1
        },
        {
            $Type : 'UI.DataField',
            Value : RMK2
        }
    ]
);