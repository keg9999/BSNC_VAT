using BSNC_VAT_0020_SERVICE as service from '../../srv/BSNC_VAT_SERVICE';

//설정할 사항이 있을 경우 
//(설정사항 없이 모든 필드를 valuelist로 넣을 때는 스키마 폴더의 엔티티 위에 @cds.odata.valuelist 어노테이션만 달면 됨. )
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