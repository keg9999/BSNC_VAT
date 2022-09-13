using BSNC_VAT_0120_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';
using from '../../srv/BSNC_VAT_SERVICE';
using from '../../db/BSNC_VAT_0120';



annotate service.BSNC_VAT_0120H with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'COMPANYCD',
            Value : COMPANYCD,
        },
        {
            $Type : 'UI.DataField',
            Label : 'OBJECTCODE',
            Value : OBJECTCODE,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CANCELED',
            Value : CANCELED,
        },
        {
            $Type : 'UI.DataField',
            Label : 'COMMIT',
            Value : COMMIT,
        },
        {
            $Type : 'UI.DataField',
            Label : 'UNACTIVE',
            Value : UNACTIVE,
        },
    ]
);
