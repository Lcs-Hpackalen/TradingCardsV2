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
                ZStack(alignment: .top){
                Color
                    .white
                    .padding(EdgeInsets(top: 40, leading: 40, bottom: 40, trailing: 40))
                    .blur(radius: 5)
                    Text(currentPlayer.playerName)
                        
                        .font(.title)
                        .colorScheme(.light)
                }
                    ZStack{
                        Color
                            .burgundy
                            .padding(EdgeInsets(top: 80, leading: 80, bottom: 80, trailing: 80))
                            .blur(radius: 7)
                        Image(currentPlayer.playerPicture)
                            .resizable()
                            .padding(EdgeInsets(top: 80, leading: 80, bottom: 80, trailing: 80))
                    }
                HStack{
                    Spacer()
                    VStack{
                        Spacer()
                        Spacer()
                        Spacer()
                        Image(.petesLogo)
                            .resizable()
                            .padding(EdgeInsets(top: 700, leading: 130, bottom: 0, trailing: 130))
                    }
                    Spacer()
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
                ZStack{
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundStyle(.burgundy)
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundStyle(.black)
                        .rotationEffect(Angle(degrees: -4))
                    VStack{
                        Text("Player signature")
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        ZStack{
                            Rectangle()
                                .frame(width:170, height: 80)
                                .foregroundStyle(.white)
                            Image(currentPlayer.signatureview)
                                .resizable()
                                .frame(width:170, height: 80)
                                .border(Color.black, width: 3)
                        }
                    }
                }
            }
            ZStack{
                RoundedRectangle(cornerRadius: 30)
                    .foregroundStyle(.burgundy)
                VStack{
                    Text("Fun Fact")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("\(currentPlayer.funFact)")
                        .foregroundStyle(.white)
                    Spacer()
                }
            }
        }
    }
}
#Preview {
    HockeyCard(currentPlayer: hannuPackalen)
}



