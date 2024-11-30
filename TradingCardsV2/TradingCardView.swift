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
                    RoundedRectangle(cornerRadius: 30)
                        .padding(EdgeInsets(top: 50, leading: 50, bottom: 50, trailing: 50))
                        .foregroundStyle(.burgundy)
                    Image(providedPlayer.playerPicture)
                        .resizable()
                    .padding(EdgeInsets(top: 50, leading: 50, bottom: 50, trailing: 50))
                }
                    Text(providedPlayer.playerName)
                        .font(.title).fontWeight(.bold)
                Text (providedPlayer.playernumber)
                    .font(.title2)
            }
        }
        .frame(height:300)
            
        }
    }

#Preview {
    TradingCardView(providedPlayer: hannuPackalen)
}
