//
//  TradingCardView.swift
//  TradingCardsV2
//
//  Created by Hannu Packalen on 2024-11-28.
//

import SwiftUI

struct TradingCardView: View {
    //Mark:stored properties
    let providedPlayer: HockeyPlayer
    
    //Mark:computed properties
    var body: some View {
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .scaledToFit()
                        .foregroundStyle(.black)
                        .padding(.trailing)
                    RoundedRectangle(cornerRadius: 15)
                        .padding()
                        .foregroundStyle(.burgundy)
                        .padding(.trailing)
                        .scaledToFit()
                    Image(providedPlayer.playerPicture)
                        .resizable()
                        .padding()
                        .padding()
                        .padding()
                        .padding(.trailing)
                        .padding(.bottom)
                        .padding(.top)
                    .scaledToFit()
                }
                        VStack{
                            Text(providedPlayer.playerFirstName)
                                .font(.title).fontWeight(.bold)
                            Text(providedPlayer.playerLastName)
                                .font(.title).fontWeight(.bold)
                        Text (providedPlayer.playernumber)
                            .font(.title2)
                    }
                    .padding()
        }
        }
    }

#Preview {
    TradingCardView(providedPlayer: hannuPackalen)
        .padding()
}
