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
                        .frame(width: 200, height: 200)
                        .blur(radius: 10)
                        .foregroundStyle(.tint)
                    Image(providedPlayer.playerPicture)
                        .resizable()
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
