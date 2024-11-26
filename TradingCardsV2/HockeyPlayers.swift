//
//  HockeyPlayers.swift
//  TradingCardsV2
//
//  Created by Hannu Packalen on 2024-11-26.
//

import SwiftUI

struct HockeyPlayer{
    let position: String
    let shoots: String
    let points: Int
    let TOI: String
    let signature = ("player signature")
    let signatureview: Image
    let playerPicture: Image
    let funFact: String
}
let mitchMarner = HockeyPlayer(position: "Winger", shoots: "Right", points: 85, TOI: "21:17", signatureview: Image(.mitchSignature), playerPicture: Image(.mitchView), funFact: "Mitch won the Red Tilson Trophy, the Wayne Gretzky 99 Award, the Ed Chynoweth Trophy and was CHL Player of the Year, as well as leading his team to a Memorial Cup victory")
let austonMathews = HockeyPlayer(position: "center", shoots: "Left", points: 107, TOI: "20:49", signatureview: Image(.austonSignature), playerPicture: Image(.austonView), funFact: "Auston Mathews is the first player since 2008 to score 65+ goals in a season")
 
let players = [
    mitchMarner,
 austonMathews
]
