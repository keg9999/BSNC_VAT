using BSNC_VAT_0090_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';

annotate service.BSNC_VAT_0090H_UI with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '사업장',
                Value : BPLID,
            },
            {
                $Type : 'UI.DataField',
                Label : '년도',
                Value : YEAR,
            },
            {
                $Type : 'UI.DataField',
                Label : '구분',
                Value : GUBUN,
            },
            {
                $Type : 'UI.DataField',
                Label : '집계기준일',
                Value : REFDATE,
            },
            {
                $Type : 'UI.DataField',
                Label : '계산서 포함',
                Value : BILLYN,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '과세표준생성',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
