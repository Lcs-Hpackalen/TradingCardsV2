//
//  TradingCardView.swift
//  TradingCardsV2
//
//  Created by Hannu Packalen on 2024-11-19.
//

import SwiftUI

struct HockeyPlayer{
    let position: String
    let shoots: String
    let points: Int
    let TOI: String
    let signature = ("player signature")
    let signatureview: Image
}
let mitchMarner = HockeyPlayer(position: "Winger", shoots: "Right", points: 85, TOI: "21:17", signatureview: Image(systemName: "mitchsignature"))

struct HockeyCard: View {
    var body: some View {
        VStack{
            ZStack{
                Color
                    .blue
                    .blur(radius: 10)
                    .padding(EdgeInsets(top: 0, leading: 1, bottom: 0, trailing: 1))
                Color
                    .white
                    .frame(width: 360, height: 460)
                    .blur(radius: 5)
                Color
                    .blue
                    .frame(width: 330, height: 420)
                    .blur(radius: 5)
                VStack{
                    Text("Mitch Marner")
                        .padding(EdgeInsets(top: 60, leading: 0, bottom: 0, trailing: 0))
                        .font(.title)
                        .colorScheme(.light)
                    Image(.mitchview)
                        .resizable()
                        .frame(width: 300, height: 440)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 60, trailing: 0))
                }
                HStack{
                    Spacer(minLength: 100)
                    VStack{
                        Spacer()
                        Text("#16")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        Spacer()
                    }
                }
            }
            Text("Toronto MapleLeafs")
                .font(.title).fontWeight(.bold)
                .padding(EdgeInsets(top: 0, leading: 0, bottom:0, trailing: 100))
            HStack{
                VStack{
                    Text("Position: Winger")
                        .fontWeight(.semibold)
                    Text("Shoots: Right")
                        .fontWeight(.semibold)
                    Text("Points 23/24: 85")
                        .fontWeight(.semibold)
                    Text ("TOI: 21:17")
                        .fontWeight(.semibold)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                    Text("Player signature")
                        .fontWeight(.bold)
                    Image(.signatureview)
                        .resizable()
                        .border(Color.blue, width: 5)
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
                        Text("Marner was the second player (after Brad Richards in 2000) ever to win a Memorial Cup, a Stafford Smythe Memorial Trophy, CHL Player of the Year, a league MVP trophy (Red Tilson Trophy) and a league playoff MVP trophy (Wayne Gretzky 99 Award) in the same season.")
                    }
                }
            }
        }
    }
}

#Preview {
    HockeyCard()
}

