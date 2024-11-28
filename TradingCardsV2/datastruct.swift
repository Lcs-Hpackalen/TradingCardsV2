//
//  datastruct.swift
//  TradingCardsV2
//
//  Created by Hannu Packalen on 2024-11-28.
//
import SwiftUI

struct DataStruct: View {
    //Mark: stored properties
    let dataToShow: String
    let dataValue: String
    //Mark: computed properties
    var body: some View {
        HStack() {
            Text(dataToShow)
                .fontWeight(.bold)
            Text(dataValue)
                .fontWeight(.semibold)
            Spacer()
        }
    }
}
