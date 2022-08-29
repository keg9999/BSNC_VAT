using BSNC_VAT_0080_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';


annotate service.BSNC_VAT_0080H with @(
    // 검색 필터 필드
    UI.SelectionFields : [  
        BPLID_CODE,
        SDATE, EDATE,
        CARDCODE,
       
        //insert your selection fields enhancement here
    ],
    
);
annotate service.BSNC_VAT_0080H with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '사업장',
            Value : BPLID_CODE,
             ![@HTML5.CssDefaults] : {width : '8rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '전기일',
            Value : DOCDATE,
             ![@HTML5.CssDefaults] : {width : '8rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '전기일',
            Value : DUEDATE,
             ![@HTML5.CssDefaults] : {width : '8rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '거래처코드',
            Value : CARDCODE,
             ![@HTML5.CssDefaults] : {width : '8rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '거래처명',
            Value : CARDNAME,
             ![@HTML5.CssDefaults] : {width : '8rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '사업자번호',
            Value : VATNUM,
             ![@HTML5.CssDefaults] : {width : '8rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '부가세코드',
            Value : VATGROUP,
             ![@HTML5.CssDefaults] : {width : '8rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '공급가액',
            Value : AMOUNT,
             ![@HTML5.CssDefaults] : {width : '8rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '부가세액',
            Value : VATAMT,
             ![@HTML5.CssDefaults] : {width : '8rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '합계액',
            Value : SUM,
             ![@HTML5.CssDefaults] : {width : '8rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '젼표유형',
            Value : TRANSTYPE,
             ![@HTML5.CssDefaults] : {width : '8rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '비고',
            Value : REMARK,
             ![@HTML5.CssDefaults] : {width : '8rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '전표번호',
            Value : TRANSID,
             ![@HTML5.CssDefaults] : {width : '8rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '업태',
            Value : INDUSTRY,
             ![@HTML5.CssDefaults] : {width : '8rem'}
        },
        {
            $Type : 'UI.DataField',
            Label : '업종',
            Value : BUSINESS,
             ![@HTML5.CssDefaults] : {width : '8rem'}
        },
    ]
);
annotate service.BSNC_VAT_0080H with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'BPLID',
                Value : BPLID_CODE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DOCDATE',
                Value : DOCDATE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DUEDATE',
                Value : DUEDATE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CARDCODE',
                Value : CARDCODE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CARDNAME',
                Value : CARDNAME,
            },
            {
                $Type : 'UI.DataField',
                Label : 'VATNUM',
                Value : VATNUM,
            },
            {
                $Type : 'UI.DataField',
                Label : 'VATGROUP',
                Value : VATGROUP,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AMOUNT',
                Value : AMOUNT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'VATAMT',
                Value : VATAMT,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SUM',
                Value : SUM,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TRANSTYPE',
                Value : TRANSTYPE,
            },
            {
                $Type : 'UI.DataField',
                Label : 'REMARK',
                Value : REMARK,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TRANSID',
                Value : TRANSID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'INDUSTRY',
                Value : INDUSTRY,
            },
            {
                $Type : 'UI.DataField',
                Label : 'BUSINESS',
                Value : BUSINESS,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
