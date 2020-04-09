//
//  AnimationModifier.swift
//  CDCircularMenu
//
//  Created by Christophe Dellac on 4/8/20.
//  Copyright © 2020 Christophe Dellac. All rights reserved.
//

import SwiftUI

struct AnimationModifier: ViewModifier {
    
    
    let menuOpened: Bool
    let rotationEffectAngle: Double
    let scaleEffectValue: CGFloat
    
    func body(content: Content) -> some View {
        content
            .opacity(self.menuOpened ? 1 : 0)
            .scaleEffect(self.menuOpened ? 1 : 0)
            .rotationEffect(self.menuOpened ? Angle(degrees: 0) : Angle(degrees: self.rotationEffectAngle))
    }
}
