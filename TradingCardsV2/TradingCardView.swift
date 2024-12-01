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
                        .padding(.trailing)
                    RoundedRectangle(cornerRadius: 30)
                        .padding()
                        .foregroundStyle(.burgundy)
                        .scaledToFit()
                        .padding(.trailing)
                    Image(providedPlayer.playerPicture)
                        .resizable()
                        .scaledToFit()
                    .padding()
                    .padding()
                    .padding()
                }
                ZStack{
                    VStack{
                        Spacer()
                        Spacer()
                        Ribbon()
                    }
                        .foregroundStyle(.burgundy)
                    HStack{
                        Text(providedPlayer.playerName)
                            .font(.title).fontWeight(.bold)
                            .scaledToFill()
                        Text (providedPlayer.playernumber)
                            .font(.title2)
                            .scaledToFill()
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
