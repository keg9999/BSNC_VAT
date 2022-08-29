using BSNC_VAT_0030_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';
//using from '../../srv/vat-service';
//using from '../../db/schema';

annotate service.BSNC_VAT_0030L with @(
    UI.HeaderInfo : {
        TypeName        : ' ',
        TypeNamePlural  : ' ', 
        Title           : {
            $Type : 'UI.DataField',
            Value : 'BSNC_VAT_0030L',
        },
    },
);

annotate service.BSNC_VAT_0030L with @(
    UI.PresentationVariant : {
        SortOrder       : [
            {
                Property    : LCODE,
                Descending  : false,
            },
        ],
        Visualizations  : ['@UI.LineItem'],
    },
);


annotate service.BSNC_VAT_0030L with @(
    UI.LineItem : [
        // {
        //     $Type : 'UI.DataField',
        //     Value : LINEID
        // },   
        {
            $Type : 'UI.DataField',
            Value : LCODE
        },
        {
            $Type : 'UI.DataField',
            Value : LNAME
        },
        {
            $Type : 'UI.DataField',
            Value : REMARK
        }
        
    ]
);