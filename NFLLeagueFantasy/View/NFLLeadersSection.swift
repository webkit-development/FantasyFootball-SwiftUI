//
//  NFLLeadersSection.swift
//  NFLLeagueFantasy
//
//  Created by Kevin Stradtman on 4/5/22.
//

import SwiftUI



struct NFLLeadersSection: View {
    var body: some View {
        Image("")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(minWidth: 20, idealWidth: 50, maxWidth: 70, minHeight: 20, idealHeight: 50, maxHeight: 70)
                NavigationLink {
                    ZStack {
                        Color.darkBackground
                        ScrollView {
                            Text("Cooper Kupp")
                                .font(Font.custom("ArchivoBlack-Regular", size: 32))
                                .foregroundColor(Color.darkenedWhiteText)
                                .fontWeight(.regular)
                                .autocapitalization(.words)
                            Spacer()
                        }
                        .offset(y: 100)
                    }
                    .ignoresSafeArea()
                } label: {
                    Text("Cooper Kupp")
                        .font(Font.custom("Oswald", size: 14))
                        .foregroundColor(Color(red: 0.117, green: 0.564, blue: 1.0))
                        .fontWeight(.light)
                }
    }
}

struct NFLLeadersSection_Previews: PreviewProvider {
    static var previews: some View {
        NFLLeadersSection()
    }
}
