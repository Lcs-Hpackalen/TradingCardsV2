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
                    .scaledToFill()
                ZStack{
                    Color
                        .white
                        .blur(radius: 5)
                        .padding()
                    ZStack{
                        Ribbon()
                        Text(currentPlayer.playerName)
                            .padding()
                            .font(.title)
                            .colorScheme(.light)
                    }
                    .padding()
                }
                ZStack{
                    Color
                        .burgundy
                        .padding()
                        .blur(radius: 7)
                    Image(currentPlayer.playerPicture)
                        .resizable()
                        .padding()
                }
                HStack{
                    Spacer(minLength: 100)
                    VStack{
                        Spacer()
                        Text(currentPlayer.playernumber)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                            .padding(.trailing)
                        Spacer()
                    }
                }
            }
            ZStack{
                Ribbon()
                Text("Peteborough Petes")
                    .font(.title).fontWeight(.bold).foregroundStyle(.white)
            }
            
            HStack{
                VStack{
                    DataStruct(dataToShow:"Position:", dataValue: "\(currentPlayer.position)")
                    DataStruct(dataToShow: "Shoots:", dataValue: "\(currentPlayer.shoots)")
                    DataStruct(dataToShow: "Points:", dataValue: "\(currentPlayer.points)")
                    DataStruct(dataToShow: "TOI:", dataValue:" \(currentPlayer.TOI)")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundStyle(.black)
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundStyle(.white)
                            .rotationEffect(Angle(degrees: -5))
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundStyle(.burgundy)
                            .rotationEffect(Angle(degrees: -10))
                        VStack{
                            Text("Player signature")
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                            ZStack{
                                Image(currentPlayer.signatureview)
                                    .resizable()
                            }
                        }
                    }
                }
                ZStack{
                    Circle()
                        .foregroundStyle(.black)
                    VStack{
                        Text("Fun Fact")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(.burgundy)
                        
                        Text("\(currentPlayer.funFact)")
                            .foregroundStyle(.white)
                    }
                }
            }
        }
    }
}
#Preview {
    HockeyCard(currentPlayer: hannuPackalen)
}



