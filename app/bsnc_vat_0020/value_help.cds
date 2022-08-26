using BSNC_VAT_0020_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';

annotate service.BSNC_VAT_0020L with {
	TAXTYPE @(
		Common: {
			//show text, not id for mitigation in the context of risks
			Text: TAXTYPE.NAME  , TextArrangement: #TextOnly,
			ValueList: {
				Label: '세금유형',
				CollectionPath: 'BSNC_VAT_0020_TAXTYPE',
				Parameters: [
					{ $Type: 'Common.ValueListParameterInOut',
						LocalDataProperty: TAXTYPE_CODE,
						ValueListProperty: 'CODE'
					},
					{ $Type: 'Common.ValueListParameterDisplayOnly',
						ValueListProperty: 'NAME'
					}
				]
			}
		}
	);
}