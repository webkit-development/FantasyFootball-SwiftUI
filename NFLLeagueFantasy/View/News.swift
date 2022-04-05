//
//  News.swift
//  NFLLeagueFantasy
//
//  Created by Kevin Stradtman on 4/4/22.
//

import SwiftUI

struct News: View {
    var body: some View {
        ZStack {
            Color.darkBackground
             ScrollView {
                    Text("News")
                 }
            }
        .ignoresSafeArea()
        .preferredColorScheme(.dark)
    }
}

struct News_Previews: PreviewProvider {
    static var previews: some View {
        News()
    }
}
