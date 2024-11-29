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
                Image(providedPlayer.playerPicture)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                VStack(alignment: .leading){
                    Text(providedPlayer.playerName)
                        .font(.title)
                }
            }
        }
        
            
        }
    }

#Preview {
    TradingCardView(providedPlayer: mitchMarner)
}
