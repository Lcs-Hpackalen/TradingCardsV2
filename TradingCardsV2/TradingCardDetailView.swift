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
                        .frame(height:520)
                        .blur(radius: 10)
                        .scaledToFill()
                ZStack(alignment: .top){
                    Color
                        .white
                        .blur(radius: 5)
                        .padding()
                        .padding()
                    Ribbon()
                        .padding()
                        .padding()
                    HStack{
                        Text(currentPlayer.playerFirstName)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text(currentPlayer.playerLastName)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            
                    }
                    .padding(.top)
                    .padding(.top)
                    .padding(.top)
                    }
                ZStack{
                    Color
                        .burgundy
                        .padding(.all)
                        .padding()
                        .padding()
                        .padding(.top)
                        .padding(.top)
                        .padding(.top)
                        .blur(radius: 7)
                    Image(currentPlayer.playerPicture)
                        .resizable()
                        .padding()
                        .padding()
                        .padding()
                        .padding(.top)
                }
                HStack{
                    Spacer(minLength: 100)
                    VStack{
                        Spacer()
                            Text(currentPlayer.playernumber)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.blue)
                                .padding(.trailing)
                        Spacer()
                    }
                }
                HStack{
                    Spacer()
                    VStack{
                        Spacer()
                        Image(.petesLogo)
                            .resizable()
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.top)
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.leading)
                            .padding(.trailing)
                            .padding(.leading)
                            .padding(.trailing)
                    }
                }
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
                            .foregroundStyle(.burgundy)
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundStyle(.black)
                            .rotationEffect(Angle(degrees: -7))
                        RoundedRectangle(cornerRadius: 30)
                            .foregroundStyle(.burgundy)
                            .rotationEffect(Angle(degrees: -14))
                        VStack{
                            Text("Player signature")
                                .fontWeight(.bold)
                                .foregroundStyle(.white)
                                .padding()
                            ZStack{
                                Image(currentPlayer.signatureview)
                                    .resizable()
                            }
                        }
                    }
                }
                ZStack{
                    VStack{
                        ZStack{
                            Capsule()
                                .foregroundStyle(.burgundy)
                            Text("U15 AAA PETES")
                                .font(.title)
                        }
                        RoundedRectangle(cornerRadius: 30)
                            .blur(radius: 10)
                            .scaledToFill()
                            .ignoresSafeArea()
                    }
                        .foregroundStyle(.black)
                        VStack{
                            Text("Fun Fact")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundStyle(.burgundy)
                            
                            Text("\(currentPlayer.funFact)")
                                .foregroundStyle(.white)
                                .padding(.leading)
                    }
                }
            }
        }
    }
}
#Preview {
    HockeyCard(currentPlayer: hannuPackalen)
}



