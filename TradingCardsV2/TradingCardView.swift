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
                    RoundedRectangle(cornerSize: 5)
                    Color.blue
                    Image(providedPlayer.playerPicture)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                }
                    
                VStack(alignment: .leading){
                    Text(providedPlayer.playerName)
                        .font(.title).fontWeight(.bold)
                }
                Text (providedPlayer.playernumber)
                    .font(.title2)
            }
        }
        
            
        }
    }

#Preview {
    TradingCardView(providedPlayer: mitchMarner)
}
