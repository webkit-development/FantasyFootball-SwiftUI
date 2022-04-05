//
//  GamePointHistory.swift
//  NFLLeagueFantasy
//
//  Created by Kevin Stradtman on 4/5/22.
//

import SwiftUI
import SwiftUICharts

struct GamePointHistory: View {
    var body: some View {
        MultiLineChartView(data: [([8,32,11,23,40,28], GradientColors.green), ([34,56,72,38,43,100,50], GradientColors.orange), ([90,99,78,111,70,60,77], GradientColors.blue)], title: "Game History Points", style: Styles.barChartStyleOrangeDark, form: ChartForm.extraLarge)
    }
}

struct GamePointHistory_Previews: PreviewProvider {
    static var previews: some View {
        GamePointHistory()
    }
}
