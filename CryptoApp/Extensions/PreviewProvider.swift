//
//  PreviewProvider.swift
//  CryptoApp
//
//  Created by Dariy Kutelov on 21.12.22.
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    static let instance = DeveloperPreview()
    
    let stat1 = StatisticModel(title: "Current Price",
                               value: "$21,000.00",
                               percentageChange: 1.23)
    
    let stat2 = StatisticModel(title: "Market Capitalization",
                               value: "$413.15Bn",
                               percentageChange: 1.67)
    
    let stat3 = StatisticModel(title: "Rank",
                               value: "1",
                               percentageChange: nil)
    
    let stat4 = StatisticModel(title: "Volume",
                               value: "35.00Bn",
                               percentageChange: nil)
    
    lazy var sectionModel = CoinDetailSectionModel(title: "Overview",
                                                   stats: [stat1, stat2, stat3, stat4])
    
    //    let sectionModel = CoinDetailSectionModel(title: "Overview",
    //                                              stats: [StatisticModel(title: "Current Price",
    //                                                                     value: "$21,000.00",
    //                                                                     percentageChange: 1.23),
    //                                                      StatisticModel(title: "Market Capitalization",
    //                                                                     value: "$413.15Bn",
    //                                                                     percentageChange: 1.67),
    //                                                      StatisticModel(title: "Rank",
    //                                                                     value: "1",
    //                                                                     percentageChange: nil),
    //                                                      StatisticModel(title: "Volume",
    //                                                                     value: "35.00Bn",
    //                                                                     percentageChange: nil)
    //                                              ])
    
    let coin = Coin(
        id: "bitcoin",
        symbol: "BTC",
        name: "Bitcoin",
        image: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
        currentPrice: 16619.91,
        marketCapRank: 1,
        marketCap: 319072710220,
        fullyDilutedValuation: 348294412395,
        totalVolume: 14542721788,
        high24H: 16824.07,
        low24H: 16586.38,
        priceChange24H: -68.14586784562198,
        priceChangePercentage24H: -0.40835,
        marketCapChange24H: -2105144627.124939,
        marketCapChangePercentage24H: -0.65545,
        circulatingSupply: 19238112,
        totalSupply: 21000000,
        maxSupply: 21000000,
        ath: 69045,
        athChangePercentage: -75.98195,
        athDate: "2021-11-10T14:24:11.849Z",
        atl: 67.81,
        atlChangePercentage: -75.98195,
        atlDate:"2013-07-06T00:00:00.000Z",
        lastUpdated: "2022-12-19T16:49:07.252Z",
        sparklineIn7D: SparklineIn7D(price: [ 16968.256384911616,
                                              17005.785315790898,
                                              16997.45327646412,
                                              17014.475164752963,
                                              17015.945277213206,
                                              17012.06714792757,
                                              17029.92963316488,
                                              17036.254550600373,
                                              17112.211035105876,
                                              17184.478048793702,
                                              17167.67245478578,
                                              17179.596038203494,
                                              17170.018989715805,
                                              17155.58519999063,
                                              17153.74733685863,
                                              17168.41754743758,
                                              17179.5698065701,
                                              17189.406840691983,
                                              17197.364546272052,
                                              17140.60548138368,
                                              17174.034273470377,
                                              17210.72002776358,
                                              17410.484699120272,
                                              17444.549783421004,
                                              17440.008735335232,
                                              17896.63794043742,
                                              17876.156324994943,
                                              17751.566895957814,
                                              17740.78415566179,
                                              17620.759911427933,
                                              17712.636085522903,
                                              17742.030510327524,
                                              17767.258062640074,
                                              17766.140067044948,
                                              17786.015294466444,
                                              17777.458744424264,
                                              17816.611688540124,
                                              17782.95132677744,
                                              17792.134625790597,
                                              17791.23148339623,
                                              17772.999456094236,
                                              17800.046121558615,
                                              17792.82899843946,
                                              17810.024661230713,
                                              17840.5985486017,
                                              17809.505398029214,
                                              17830.930517173772,
                                              17834.959919586003,
                                              17887.59850620282,
                                              17887.166044611622,
                                              18104.21450887395,
                                              18080.424251724922,
                                              18098.978579860133,
                                              18107.11717517513,
                                              18320.817235248396,
                                              17802.077505049147,
                                              17756.386568896087,
                                              17836.280464145602,
                                              17826.100927376596,
                                              17808.71617265881,
                                              17792.463286267983,
                                              17609.452110536447,
                                              17717.3368675109,
                                              17747.955110062376,
                                              17707.95792450238,
                                              17712.63932471557,
                                              17722.087278587398,
                                              17698.19093532516,
                                              17656.4668983357,
                                              17690.48356761683,
                                              17680.24462938627,
                                              17730.21141729955,
                                              17681.97580269816,
                                              17492.319432348842,
                                              17431.25238780143,
                                              17415.141970234385,
                                              17400.155860140232,
                                              17415.114879178556,
                                              17386.41235893099,
                                              17449.16284885023,
                                              17424.72499229698,
                                              17401.580882697668,
                                              17337.361803435062,
                                              17339.041306526968,
                                              17395.849051184872,
                                              17404.376508771165,
                                              17405.082795085407,
                                              17429.179928466623,
                                              17398.884046749805,
                                              17406.56460283094,
                                              17424.231583277706,
                                              17478.099781794448,
                                              17322.423782731094,
                                              17038.03486291264,
                                              17006.093872801273,
                                              17030.093171173317,
                                              17026.541187147137,
                                              16950.108584317724,
                                              17041.266821488814,
                                              16990.957258352533,
                                              16857.932957564597,
                                              16795.027486993735,
                                              16801.289278372602,
                                              16867.953398993403,
                                              16900.973907630367,
                                              16835.617180502344,
                                              16741.045696324552,
                                              16650.249618566282,
                                              16728.983400886078,
                                              16691.56509052243,
                                              16674.39509220079,
                                              16683.936174366154,
                                              16711.414041698303,
                                              16683.292961092266,
                                              16713.881655025845,
                                              16751.94476314647,
                                              16726.965596935883,
                                              16688.03114553932,
                                              16758.925191744926,
                                              16726.6695227166,
                                              16696.283426948874,
                                              16669.073491391344,
                                              16666.158285394344,
                                              16722.0298566167,
                                              16704.665669617465,
                                              16687.554229624264,
                                              16711.235756194714,
                                              16693.459160096158,
                                              16703.869610834106,
                                              16712.04496994232,
                                              16743.301540704586,
                                              16783.53340219785,
                                              16750.346727894248,
                                              16719.082857138997,
                                              16730.503288426054,
                                              16744.639033495845,
                                              16770.568230858167,
                                              16749.762160167145,
                                              16739.78108544553,
                                              16749.250848794843,
                                              16758.194607923175,
                                              16715.961741046463,
                                              16712.43010170271,
                                              16716.814489555978,
                                              16726.747265314072,
                                              16717.25625011873,
                                              16700.173594898668,
                                              16687.996635176445,
                                              16699.176459648053,
                                              16723.528737207333,
                                              16727.598455018484,
                                              16747.635769365188,
                                              16768.395537160493,
                                              16751.702730900273,
                                              16800.559333751997,
                                              16742.816663834055,
                                              16785.691429958326,
                                              16794.452547453122,
                                              16731.349256217814,
                                              16677.792432462764,
                                              16727.81508838868,
                                              16707.968130065932,
                                              16755.394570976838,
                                              16722.104840442138,
                                              16767.824595657472,
                                              16768.0823180821,
                                              16771.18952736832,
                                              16745.775582508722
                                            ]),
        priceChangePercentage24HInCurrency: -0.40835113349984203)
}
