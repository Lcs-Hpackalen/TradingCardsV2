//
//  HockeyCardList.swift
//  TradingCardsV2
//
//  Created by Hannu Packalen on 2024-11-29.
//

import SwiftUI

struct HockeyCardList: View {
    var body: some View {
        NavigationStack{
            List(players){ currentHouse in
                
                NavigationLink{
                    HockeyCard(currentPlayer: currentHouse)
                } label: {TradingCardView(providedPlayer: currentHouse)
                }
            }
            .navigationTitle("U15 AAA Petes")
        }
        }
    }

#Preview {
    HockeyCardList()
}
