//
//  CreditCard.swift
//  InstaPosts
//
//  Created by Chameera De Silva on 10/02/2021.
//  Copyright © 2021 Chameera De. All rights reserved.
//

import SwiftUI

struct Bar: Shape {
    var tab: CGFloat
    
    var animatableData: Double {
        get { return Double(tab) }
        set { tab = CGFloat(newValue) }
    }
    
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        let widthFactor = rect.maxX/(CGFloat(TabItems.shared.items.count) + 1)
        let widthFactorTimesCount = (rect.maxX/(CGFloat(TabItems.shared.items.count) + 1)) * tab
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: widthFactorTimesCount + widthFactor, y: rect.minY))
        path.addCurve(to: CGPoint(x: widthFactorTimesCount, y: rect.midY),
                      control1: CGPoint(x: widthFactorTimesCount + 40, y: rect.minY),
                      control2: CGPoint(x: widthFactorTimesCount + 40, y: rect.minY + 50))
        path.addCurve(to: CGPoint(x: widthFactorTimesCount - widthFactor, y: rect.minY),
                      control1: CGPoint(x: widthFactorTimesCount - 40, y: rect.minY + 50),
                      control2: CGPoint(x: widthFactorTimesCount - 40, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX - widthFactorTimesCount, y: rect.minY))
        return path
    }
}
