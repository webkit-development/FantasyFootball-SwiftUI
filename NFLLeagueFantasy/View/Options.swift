//
//  Options.swift
//  NFLLeagueFantasy
//
//  Created by Kevin Stradtman on 4/4/22.
//

import SwiftUI

struct Options: View {
    var body: some View {
        ZStack {
            Color.darkBackground
             ScrollView {
                    Text("Options")
                 }
            }
        .ignoresSafeArea()
        .preferredColorScheme(.dark)
    }
}

struct Options_Previews: PreviewProvider {
    static var previews: some View {
        Options()
    }
}
