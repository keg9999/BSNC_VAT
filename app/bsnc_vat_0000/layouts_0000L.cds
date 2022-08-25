using BSNC_VAT_0000_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';
//using from '../../srv/vat-service';
//using from '../../db/schema';

annotate service.BSNC_VAT_0000L with @(
    UI.HeaderInfo : {
        TypeName        : ' ',
        TypeNamePlural  : ' ', 
        Title           : {
            $Type : 'UI.DataField',
            Value : 'BSNC_VAT_0000L',
        },
    },
);

annotate service.BSNC_VAT_0000L with @(
    UI.PresentationVariant : {
        SortOrder       : [
            {
                Property    : GCODE,
                Descending  : false,
            },
        ],
        Visualizations  : ['@UI.LineItem'],
    },
);


annotate service.BSNC_VAT_0000L with @(
    UI.LineItem : [
        // {
        //     $Type : 'UI.DataField',
        //     Value : LINEID
        // },   
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