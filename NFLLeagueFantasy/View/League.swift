//
//  League.swift
//  NFLLeagueFantasy
//
//  Created by Kevin Stradtman on 4/4/22.
//

import SwiftUI

struct League: View {
    let player = "player"
    let playersName: [String] = ["Cooper Kupp", "Josh Allen", "Justin Herbert", "Tom Brady", "Jonathan Taylor", "Patrick Mahomes", "Davante Adams", "Austin Ekeler", "Deebo Samuel", "Aaron Rodgers", "Justin Jeffereson", "Matthew Stafford", "Dak Prescott", "Joe Burrow", "Jalen Hurts", "Ja'Marr Chase", "Mark Andrews", "Najee Harris", "Kyler Murray", "Kirk Cousins"]
    
    
    let playersImage: [String] = ["cupp", "allen", "herbert", "brady", "taylor", "mahomes", "adams", "ekeler", "samuel", "rodgers", "jefferson", "stafford", "prescott", "burrow", "hurts", "chase", "andrews", "harris", "murray", "cousins"]
    let amountOfPlayers = 20
    var body: some View {
        ZStack {
            Color.darkBackground
             ScrollView {
                 ZStack {
                     Color.lightBackground
                 VStack {
                    Text("LEAGUE")
                         .font(Font.custom("ArchivoBlack-Regular", size: 32))
                         .foregroundColor(Color.darkenedWhiteText)
                         .fontWeight(.regular)
                        VStack {
                            HStack {
                                NavigationLink {
                                    ZStack {
                                        Color.darkBackground
                                        Text("Schedule")
                                            .font(Font.custom("Oswald", size: 16))
                                            .fontWeight(.bold)
                                    }
                                    .ignoresSafeArea()
                                } label: {
                                    Text("Schedule")
                                        .font(Font.custom("Oswald", size: 16))
                                        .foregroundColor(.white)
                                        .bold()
                                }

                                .padding()
                                NavigationLink {
                                    ZStack {
                                        Color.darkBackground
                                        Text("Stats & Awards")
                                            .font(Font.custom("Oswald", size: 16))
                                            .foregroundColor(.white)
                                            .fontWeight(.bold)
                                    }
                                    .ignoresSafeArea()
                                } label: {
                                    Text("Stats & Awards")
                                        .font(Font.custom("Oswald", size: 16))
                                        .foregroundColor(.white)
                                        .bold()
                                }
                            }
                            HStack {
                                NavigationLink {
                                    ZStack {
                                        Color.darkBackground
                                        Text("League Trasactions")
                                            .font(Font.custom("Oswald", size: 16))
                                            .fontWeight(.bold)
                                    }
                                    .ignoresSafeArea()
                                } label: {
                                    Text("League Transactions")
                                        .font(Font.custom("Oswald", size: 16))
                                        .foregroundColor(.white)
                                        .bold()
                                }
                                .padding()
                                NavigationLink {
                                    ZStack {
                                        Color.darkBackground
                                        Text("League History")
                                            .font(Font.custom("Oswald", size: 16))
                                            .fontWeight(.bold)
                                    }
                                    .ignoresSafeArea()
                                } label: {
                                    Text("League History")
                                        .font(Font.custom("Oswald", size: 16))
                                        .foregroundColor(.white)
                                        .bold()
                                }
                                }
                            }
                        }
                 .padding(.bottom, 20)
                 .padding(.top, 20)
                    }
                 .cornerRadius(10)
                 .padding()
                 .shadow(color: Color.black, radius: 10, x: 5, y: 5)
                 .offset(y: 150)
                 ZStack {
                     Color.lightBackground
                     VStack {
                         HStack {
                             ScrollView {
                                 VStack {
                                     Text("LEAGUE LEADERS")
                                          .font(Font.custom("ArchivoBlack-Regular", size: 32))
                                          .foregroundColor(Color.darkenedWhiteText)
                                          .fontWeight(.regular)
                                 HStack {
                                     VStack {
                                 Image(playersImage[0])
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .frame(minWidth: 20, idealWidth: 50, maxWidth: 70, minHeight: 20, idealHeight: 50, maxHeight: 70)
                                         NavigationLink {
                                             ZStack {
                                                 Color.darkBackground
                                                 ScrollView {
                                                     Text(playersName[0])
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
                                             Text(playersName[0])
                                                 .font(Font.custom("Oswald", size: 14))
                                                 .foregroundColor(Color(red: 0.117, green: 0.564, blue: 1.0))
                                                 .fontWeight(.light)
                                                 .lineLimit(1)
                                         }
                                     }
                                     VStack {
                                 Image(playersImage[1])
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .frame(minWidth: 20, idealWidth: 50, maxWidth: 70, minHeight: 20, idealHeight: 50, maxHeight: 70)
                                     Text(playersName[1])
                                         .font(Font.custom("Oswald", size: 14))
                                         .foregroundColor(.white)
                                         .fontWeight(.light)
                                         .lineLimit(1)
                                     }
                                     VStack {
                                     Image(playersImage[2])
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .frame(minWidth: 20, idealWidth: 50, maxWidth: 70, minHeight: 20, idealHeight: 50, maxHeight: 70)
                                     Text(playersName[2])
                                         .font(Font.custom("Oswald", size: 14))
                                         .foregroundColor(.white)
                                         .fontWeight(.light)
                                         .lineLimit(1)
                                     }
                                     VStack {
                                     Image(playersImage[3])
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .frame(minWidth: 20, idealWidth: 50, maxWidth: 70, minHeight: 20, idealHeight: 50, maxHeight: 70)
                                     Text(playersName[3])
                                         .font(Font.custom("Oswald", size: 14))
                                         .foregroundColor(.white)
                                         .fontWeight(.light)
                                         .lineLimit(1)
                                     }
                                 }
                                 
                                 HStack {
                                     VStack {
                                 Image(playersImage[4])
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .frame(minWidth: 20, idealWidth: 50, maxWidth: 70, minHeight: 20, idealHeight: 50, maxHeight: 70)
                                     Text(playersName[4])
                                         .font(Font.custom("Oswald", size: 14))
                                         .foregroundColor(.white)
                                         .fontWeight(.light)
                                         .lineLimit(1)
                                     }
                                     VStack {
                                     Image(playersImage[5])
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .frame(minWidth: 20, idealWidth: 50, maxWidth: 70, minHeight: 20, idealHeight: 50, maxHeight: 70)
                                     Text(playersName[5])
                                         .font(Font.custom("Oswald", size: 14))
                                         .foregroundColor(.white)
                                         .fontWeight(.light)
                                         .lineLimit(1)
                                     }
                                     VStack {
                                     Image(playersImage[6])
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .frame(minWidth: 20, idealWidth: 50, maxWidth: 70, minHeight: 20, idealHeight: 50, maxHeight: 70)
                                     Text(playersName[6])
                                         .font(Font.custom("Oswald", size: 14))
                                         .foregroundColor(.white)
                                         .fontWeight(.light)
                                         .lineLimit(1)
                                     }
                                     VStack {
                                     Image(playersImage[7])
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .frame(minWidth: 20, idealWidth: 50, maxWidth: 70, minHeight: 20, idealHeight: 50, maxHeight: 70)
                                     Text(playersName[7])
                                         .font(Font.custom("Oswald", size: 14))
                                         .foregroundColor(.white)
                                         .fontWeight(.light)
                                         .lineLimit(1)
                                     }
                                     
                                 }
                                 
                                 HStack {
                                     VStack {
                                 Image(playersImage[8])
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .frame(minWidth: 20, idealWidth: 50, maxWidth: 70, minHeight: 20, idealHeight: 50, maxHeight: 70)
                                     Text(playersName[8])
                                         .font(Font.custom("Oswald", size: 14))
                                         .foregroundColor(.white)
                                         .fontWeight(.light)
                                         .lineLimit(1)
                                     }
                                     VStack {
                                     Image(playersImage[9])
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .frame(minWidth: 20, idealWidth: 50, maxWidth: 70, minHeight: 20, idealHeight: 50, maxHeight: 70)
                                     Text(playersName[9])
                                         .font(Font.custom("Oswald", size: 14))
                                         .foregroundColor(.white)
                                         .fontWeight(.light)
                                         .lineLimit(1)
                                     }
                                     VStack {
                                     Image(playersImage[10])
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .frame(minWidth: 20, idealWidth: 50, maxWidth: 70, minHeight: 20, idealHeight: 50, maxHeight: 70)
                                     Text(playersName[10])
                                         .font(Font.custom("Oswald", size: 14))
                                         .foregroundColor(.white)
                                         .fontWeight(.light)
                                         .lineLimit(1)
                                     }
                                     VStack {
                                     Image(playersImage[11])
                                     .resizable()
                                     .aspectRatio(contentMode: .fit)
                                     .frame(minWidth: 20, idealWidth: 50, maxWidth: 70, minHeight: 20, idealHeight: 50, maxHeight: 70)
                                     Text(playersName[11])
                                         .font(Font.custom("Oswald", size: 14))
                                         .foregroundColor(.white)
                                         .fontWeight(.light)
                                         .lineLimit(1)
                                     }
                                    }
                                     HStack {
                                         VStack {
                                         Image(playersImage[12])
                                         .resizable()
                                         .aspectRatio(contentMode: .fit)
                                         .frame(minWidth: 20, idealWidth: 50, maxWidth: 70, minHeight: 20, idealHeight: 50, maxHeight: 70)
                                         Text(playersName[12])
                                             .font(Font.custom("Oswald", size: 14))
                                             .foregroundColor(.white)
                                             .fontWeight(.light)
                                             .lineLimit(1)
                                         }
                                         
                                         VStack {
                                         Image(playersImage[13])
                                         .resizable()
                                         .aspectRatio(contentMode: .fit)
                                         .frame(minWidth: 20, idealWidth: 50, maxWidth: 70, minHeight: 20, idealHeight: 50, maxHeight: 70)
                                         Text(playersName[13])
                                             .font(Font.custom("Oswald", size: 14))
                                             .foregroundColor(.white)
                                             .fontWeight(.light)
                                             .lineLimit(1)
                                         }
                                         
                                         VStack {
                                         Image(playersImage[14])
                                         .resizable()
                                         .aspectRatio(contentMode: .fit)
                                         .frame(minWidth: 20, idealWidth: 50, maxWidth: 70, minHeight: 20, idealHeight: 50, maxHeight: 70)
                                         Text(playersName[14])
                                             .font(Font.custom("Oswald", size: 14))
                                             .foregroundColor(.white)
                                             .fontWeight(.light)
                                             .lineLimit(1)
                                         }
                                         
                                         VStack {
                                         Image(playersImage[15])
                                         .resizable()
                                         .aspectRatio(contentMode: .fit)
                                         .frame(minWidth: 20, idealWidth: 50, maxWidth: 70, minHeight: 20, idealHeight: 50, maxHeight: 70)
                                         Text(playersName[15])
                                             .font(Font.custom("Oswald", size: 14))
                                             .foregroundColor(.white)
                                             .fontWeight(.light)
                                             .lineLimit(1)
                                         }
                                     }
                                 }
                             }
                         }
                     }
                     .padding(.bottom, 20)
                     .padding(.top, 20)
                 }
                 .cornerRadius(10)
                 .padding()
                 .shadow(color: Color.black, radius: 10, x: 5, y: 5)
                 .offset(y: 150)
                }
            }
        .ignoresSafeArea()
        .preferredColorScheme(.dark)
    }
//    func getLeagueLeaders() {
//        do {
//            let content = try! String(contentsOf: URL(string: "https://fantasy.espn.com/football/leaders")!)
//            let doc: Document = try! SwiftSoup.parse(content)
//            let table = try doc.select("table.Table.Table--align-right.Table--fixed.Table--fixed-left").first()
//            let tbody = try table.select("tbody.Table__TBODY")
//            let rows = try tbody.select("tr.Table__TR.Table__TR--lg.Table__odd")
//            let data = try rows.select("td.Table__TD.Table__TD--fixed-width")
//            let image = try data.select("img")
//        } catch let error {
//            fatalError("There was an error pulling the HTML \(error.localizedDescription)")
//        }
//    }
}

struct League_Previews: PreviewProvider {
    static var previews: some View {
        League()
    }
}

