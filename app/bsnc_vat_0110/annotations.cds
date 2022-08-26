using BSNC_VAT_0110_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';
using from '../../srv/BSNC_VAT_SERVICE';
using from '../../db/BSNC_VAT_0110';



annotate service.BSNC_VAT_0110H with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'BPLID',
            Value : BPLID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'YEAR',
            Value : YEAR,
        },
        {
            $Type : 'UI.DataField',
            Label : 'GUBUN',
            Value : GUBUN,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FDATE',
            Value : FDATE,
        },
        {
            $Type : 'UI.DataField',
            Label : 'TDATE',
            Value : TDATE,
        },
    ]
);
