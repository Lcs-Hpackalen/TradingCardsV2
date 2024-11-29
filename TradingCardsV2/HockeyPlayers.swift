//
//  HockeyPlayers.swift
//  TradingCardsV2
//
//  Created by Hannu Packalen on 2024-11-26.
//

import Foundation
import SwiftUICore

struct HockeyPlayer: Identifiable{
    let playerName: String
    let id: Int
    let position: String
    let playernumber: String
    let shoots: String
    let points: Int
    let TOI: String
    let signature = ("player signature")
    let signatureview: String
    let playerPicture: String
    let funFact: String
}
let mitchMarner = HockeyPlayer(playerName: "Mitch Marner", id: 1, position: "Winger", playernumber: "#16", shoots: "Right", points: 85, TOI: "21:17", signatureview: "mitchSignature", playerPicture:"mitchView", funFact: "Mitch won the Red Tilson Trophy, the Wayne Gretzky 99 Award, the Ed Chynoweth Trophy and was CHL Player of the Year, as well as leading his team to a Memorial Cup victory")
let austonMathews = HockeyPlayer(playerName:"Auston Mathews", id: 2, position: "center", playernumber: "#34", shoots: "Left", points: 107, TOI: "20:49", signatureview: "austonSignature", playerPicture: "austonView", funFact: "Auston Mathews is the first player since 2008 to score 65+ goals in a season")
let williamNylander = HockeyPlayer(playerName: "William Nylander", id: 3, position: "Winger", playernumber: "88", shoots: "Right", points: 98, TOI: "19:17", signatureview: "nylanderSignature", playerPicture: "nylanderView", funFact: "Nylander was born in Calgary while his father, Michael, was playing for the Calgary Flames. He is a dual citizen of Sweden and Canada. He spent the majority of his youth in the United States where his father played for several NHL teams.")
 
let players = [
    mitchMarner,
 austonMathews,
    williamNylander
]
