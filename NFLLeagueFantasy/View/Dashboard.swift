//
//  Dashboard.swift
//  NFLLeagueFantasy
//
//  Created by Kevin Stradtman on 4/4/22.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        ZStack {
            Color.darkBackground
             ScrollView {
                 Text("DASHBOARD")
                     .font(Font.custom("ArchivoBlack-Regular", size: 32))
                     .foregroundColor(Color.darkenedWhiteText)
                     .fontWeight(.regular)
                 ZStack {
                     Color.lightBackground
                     VStack {
                         GamePointHistory()
                     }
                     .padding(.top, 30)
                     .padding(.bottom, 30)
                 }
                 .cornerRadius(10)
                 .shadow(color: Color.black, radius: 10, x: 5, y: 5)
                 
                 }
             .padding()
             .offset(y: 150)
            }
        .ignoresSafeArea()
        .preferredColorScheme(.dark)
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
