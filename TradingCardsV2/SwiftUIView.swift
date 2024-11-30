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
            path.move(to: CGPoint(x: rect.minX, y: rect.maxY/5*2))
            path.addLine(to: CGPoint(x: rect.maxX/7*1, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY/5*3))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY/5*3))
            path.addLine(to: CGPoint(x: rect.maxX/7*6, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY/5*2))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY/5*2))
       }
    }
    }
#Preview {
    Ribbon()
}
