//
//  MenuButton.swift
//  CDCircularMenu
//
//  Created by Christophe Dellac on 4/8/20.
//  Copyright © 2020 Christophe Dellac. All rights reserved.
//

import SwiftUI

struct MenuButton: View {
    
        // MARK: - View properties
       var menuOpened: Bool
       
       // MARK: - Default properties
       let rotationEffectAngle: Double
       let scaleEffectValue: CGFloat
       
       // MARK: - Configuration properties
       let menuButtonSize: CGFloat
       let menuButtonColor: Color
    
    var body: some View {
        return Image(systemName: self.menuOpened ? "sun.min.fill" : "sun.min" ) // "circle.grid.hex.fill
            .resizable()
            .scaledToFit()
            .frame(width: self.menuButtonSize - 20, height: self.menuButtonSize - 20)
            .foregroundColor(.white)
            .background(
                Circle().fill(self.menuOpened ? Color.gray : self.menuButtonColor)
                    .frame(width: self.menuButtonSize, height: self.menuButtonSize))
            .rotationEffect(self.menuOpened ? Angle(degrees: 0) : Angle(degrees: self.rotationEffectAngle))
            .scaleEffect(self.menuOpened ? self.scaleEffectValue : 1)
    }
}

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        MenuButton(menuOpened: true, rotationEffectAngle: 160, scaleEffectValue: 0.8, menuButtonSize: 50, menuButtonColor: .green)
    }
}
