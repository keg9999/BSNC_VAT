sap.ui.define([
    //	"sap/m/MessageBox",
        "sap/ui/core/library"
    ], function(coreLibrary) {
        "use strict";
        //Search-Term: CustomActions
        return {
            createTxt: function () {
                //let content = "test"
                var a = document.createElement("a");
                a.href = window.URL.createObjectURL(        
                    new Blob(["11I1032001298178206   410101202102C07winwin0403          1311110126936                                            (주)비에스엔씨                안승욱                        경기도 오산시 가장산업서북로 103-37(지곶동)                           070-4363-0356 경기도 오산시 가장산업서북로 103-37(지곶동)                           070-4363-0356 제조                          로봇제조및판매                                    292901 202110012021123120220125N              9100             yhlee@t-robotics.co.kr                                                                                             \n17I1032000000044198274020000441982737000000000000000000000000000000000482921280000000048291720000000000000000000000000000000000000000000038179092080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000828602873800000044681190900001149323108200011397784450000672798072000006727980800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012166029154000120705825300000452052840000004520516000004520528400000045205160000000000000000000000000000000000000000000000000000000004520528400000045205160000121208238700001202537737-000755725828000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000-000007557258280001985600000000008286028738000000000000000000000000000000000000000000000000001578059720\n15I10320001제조업                        사업용로봇제조업,무역,로봇제조업                  292901 000006250636610                                     \n15I10320001숙박 및 음식점업              피자,햄버거,샌드위치 및 유사음식점업              552118 000000048292128                                     \n15I10320001부동산업                      기타 부동산 임대업                                701400 000000001500000                                     \n15I10320002제조업                        사업용로봇제조업                                  292901 000001985600000                                     \n17I10340000000005312130000000531213000000000000000000005312130000000531213000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000     \n17I10580001과세표준신고서와 함께 제출                                  1     인보이스                                AKT                 2021100720211007USD011900000000000003600000000000042840000000000003600000000000042840000                         \n17I10580001과세표준신고서와 함께 제출                                  2     인보이스                                AKT                 2021101320211013USD011991000000000001680000000000020144880000000001680000000000020144880                         \n17I10580001과세표준신고서와 함께 제출                                  3     인보이스                                AKT                 2021111820211118USD011836000000000003924000000000046444464000000003924000000000046444464                         \n17I10580001과세표준신고서와 함께 제출                                  4     인보이스                                AKT                 2021112620211126USD011897000000000001200000000000014276400000000001200000000000014276400                         \n17I10580001과세표준신고서와 함께 제출                                  5     인보이스                                TES ELECTRON(SHENZHE2021112620211126USD011897000000000018404659000000218960228000000018404659000000218960228                         \n17I10580001과세표준신고서와 함께 제출                                  6     인보이스                                AKT                 2021122220211222USD011915000000000004800000000000057192000000000004800000000000057192000                         \n17I10580001과세표준신고서와 함께 제출                                  7     인보이스                                AKT                 2021123120211231USD011855000000000002620000000000031060100000000002620000000000031060100                         \n17I10580001과세표준신고서와 함께 제출                                  8     인보이스                                AKT                 2021123120211231USD011855000000000000132000000000001564860000000000132000000000001564860                         \n17I103600000001                                                                      00000000000000000000000050000000000000150000000000000000000000000000150000012981782060000010000                                                                      \n18I1036000000010000008         1                             850       0000089.95주식회사 앤로                 3578101637   20210501        000000000000000000005000000000001500000000000000000000000015000000000                                         \n17I10380000000000028000067279807200000672798080000000000500003410000000000034100000000000000000000000000000000000000000000000000000000000000000000000000000000000000002300003317980720000033179808      \n17I10330000000000037000000045205284000000004520516000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000                                             \n18I103300010000000000000000000000000000000000000                                                    \n18I103300020000000000000000000000000000000000000                                                    \n18I103300030000000003700000452052840000004520516                                                    \n18I103300040000000000000000000000000000000000000                                                    \n18I103300050000000000000000000000000000000000000                                                    \n18I103300060000000000000000000000000000000000000                                                    \n18I103300070000000000000000000000000000000000000                                                    \n18I103300080000000000000000000000000000000000000                                                    \n17I103900       000004419827402000000441982737000000048292128000000004829172000000000000000000003817909208000008286028738000012166029154000001207058253-00000045205284-00000004520516000000000000000000000000000000-00000755725828                                                                                                                                                                              \n18I1039000000(주)비에스엔씨                                              경기도 오산시 가장산업서북로103-37(지곶동)                            000004419827402000000441982737000000000000000000000000000000000000000000000000003817909208000008237736610000012163249154000001206780253-00000045205284-00000004520516000000000000000000000000000000-00000760277000                                                                                                                                                                                                                                                       \n18I1039000001봇                                                          서울특별시 성동구 아차산로 9길 8,1층(성수동)                          000000000000000000000000000000000000048292128000000004829172000000000000000000000000000000000000048292128000000002780000000000000278000000000000000000000000000000000000000000000000000000000000000000000004551172                                                                                                                                                                                                                                                       "])
                )
                a.download = "VAT_report.txt";
                a.click();
            },
            enabled : function() {
                return true;
            },
            enabledForSingleSelect: function(oBindingContext, aSelectedContexts) {
                if (aSelectedContexts && aSelectedContexts.length === 1) {
                   return true;
                }
                return false;
            }
        };
    });