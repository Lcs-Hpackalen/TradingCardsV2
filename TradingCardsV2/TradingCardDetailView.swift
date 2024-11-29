//
//  TradingCardView.swift
//  TradingCardsV2
//
//  Created by Hannu Packalen on 2024-11-19.
//

import SwiftUI



struct HockeyCard: View {
    //Mark: stored properties
    let currentPlayer: HockeyPlayer
    
    //Mrak: computed properties
    var body: some View {
        VStack{
            ZStack{
                Color
                    .black
                    .blur(radius: 10)
                    .padding(EdgeInsets(top: 0, leading: 1, bottom: 0, trailing: 1))
                Color
                    .white
                    .frame(width: 330, height: 460)
                    .blur(radius: 5)
                Color
                    .burgundy
                    .frame(width: 280, height: 400)
                    .blur(radius: 7)
                VStack{
                    Text(currentPlayer.playerName)
                        .padding(EdgeInsets(top:60, leading: 0, bottom: 0, trailing: 0))
                        .font(.title)
                        .colorScheme(.light)
                    ZStack{
                        Image(currentPlayer.playerPicture)
                            .resizable()
                            .frame(width: 300, height: 440)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                        HStack{
                            Spacer()
                            VStack{
                                Spacer()
                                Spacer()
                                Spacer()
                                Image(.petesLogo)
                                    .resizable()
                                    .frame(width: 170, height: 170)
                            }
                            Spacer()
                        }
                    }
                }
                HStack{
                    Spacer(minLength: 100)
                    VStack{
                        Spacer()
                        Text(currentPlayer.playernumber)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                        Spacer()
                    }
                }
            }
            Text("Peteborough Petes")
                .font(.title).fontWeight(.bold)
            HStack{
                VStack{
                    DataStruct(dataToShow:"Position:", dataValue: "\(currentPlayer.position)")
                    DataStruct(dataToShow: "Shoots:", dataValue: "\(currentPlayer.shoots)")
                    DataStruct(dataToShow: "Points:", dataValue: "\(currentPlayer.points)")
                    DataStruct(dataToShow: "TOI:", dataValue:" \(currentPlayer.TOI)")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                    Text("Player signature")
                        .fontWeight(.bold)
                    Image(currentPlayer.signatureview)
                        .resizable()
                        .frame(width:170, height: 80)
                        .border(Color.blue, width: 3)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 220, height: 280)
                        .blur(radius: 10)
                        .foregroundStyle(.tint)
                        .border(.black, width: 3)
                    VStack{
                        Text("Fun Fact")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("\(currentPlayer.funFact)")
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    HockeyCard(currentPlayer: morganRielly     )
}



