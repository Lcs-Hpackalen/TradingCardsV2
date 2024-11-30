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
        NavigationStack{
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 30)
                        .scaledToFit()
                    RoundedRectangle(cornerRadius: 30)
                        .padding()
                        .foregroundStyle(.burgundy)
                        .scaledToFit()
                    Image(providedPlayer.playerPicture)
                        .resizable()
                        .scaledToFit()
                    .padding()
                }
                ZStack{
                    Ribbon()
                        .foregroundStyle(.burgundy)
                    HStack{
                        Text(providedPlayer.playerName)
                            .font(.title).fontWeight(.bold)
                        Text (providedPlayer.playernumber)
                            .font(.title2)
                    }
                    .padding()
                }
            }
        }
        }
    }

#Preview {
    TradingCardView(providedPlayer: hannuPackalen)
        .padding()
}
