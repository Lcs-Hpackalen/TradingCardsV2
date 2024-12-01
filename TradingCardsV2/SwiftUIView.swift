//
//  SwiftUIView.swift
//  TradingCardsV2
//
//  Created by Hannu Packalen on 2024-11-30.
//

import SwiftUI

struct Ribbon: Shape {
   func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX/7*1, y: rect.maxY/15*1))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY/15*2))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY/15*2))
            path.addLine(to: CGPoint(x: rect.maxX/7*6, y: rect.maxY/15*1))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
       }
    }
    }
#Preview {
    Ribbon()
}
