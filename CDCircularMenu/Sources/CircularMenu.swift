//
//  CircularMenu.swift
//  CDCircularMenu
//
//  Created by Christophe Dellac on 4/8/20.
//  Copyright © 2020 Christophe Dellac. All rights reserved.
//

import SwiftUI

public struct CircularMenu: View {
    
    // MARK: - View properties
    @State private var menuOpened: Bool = false
    
    // MARK: - Default properties
    private let rotationEffectAngle: Double = 160
    private let scaleEffectValue: CGFloat = 0.6
    
    // MARK: - Configuration properties
    let menuItems: [MenuItem]
    /// The menu radius size
    let menuRadius: CGFloat
    /// The menu button size
    let menuButtonSize: CGFloat
    /// The menu button background color
    let menuButtonColor: Color
    /// The completion handler called every time a button is pressed
    let buttonClickCompletion: (Int) -> Void
    
    public init(menuItems: [MenuItem], menuRadius: CGFloat, menuButtonSize: CGFloat, menuButtonColor: Color, buttonClickCompletion: @escaping (Int) -> Void) {
        self.menuItems = menuItems
        self.menuRadius = menuRadius
        self.menuButtonSize = menuButtonSize
        self.menuButtonColor = menuButtonColor
        self.buttonClickCompletion = buttonClickCompletion
    }
    
    public var body: some View {
        VStack {
            ZStack {
                ZStack {
                    Circle()
                        .stroke(Color.gray, lineWidth: 5)
                        .opacity(0.3)
                }
                .frame(width: self.menuRadius * 2, height: self.menuRadius * 2)
                .modifier(AnimationModifier(menuOpened: self.menuOpened, rotationEffectAngle: self.rotationEffectAngle, scaleEffectValue: self.scaleEffectValue))

                VStack {
                    ZStack {
                        ForEach (0 ..< menuItems.count, id: \.self) { index in
                            
                            Button(action: {
                                withAnimation {
                                    
                                    /// Calling the button click completion handler
                                    print("[CDCircularMenu] Button id[\(self.menuItems[index].id)] has been clicked.")
                                    self.buttonClickCompletion(self.menuItems[index].id)
                                    
                                    self.menuOpened.toggle()
                                }
                            } , label: {
                           
                                if self.canDisplaySFSymbol(self.menuItems[index]) {
                                    
                                    /// This SF Symbol image if user has set a SF Symbol
                                    ImageSFSymbol(menuItem: self.menuItems[index], menuButtonSize: self.menuButtonSize)
                                    
                                } else if self.canDisplayImageAsset(self.menuItems[index]) {
                                    
                                    /// This Asset Image if user has set imageAsset
                                    ImageAsset(menuItem: self.menuItems[index], menuButtonSize: self.menuButtonSize)

                                }
                            })
                                /// The offset allowing icons to be well placed around the menu button
                            .offset(x: self.xOffset(index),
                                    y: self.yOffset(index))
                        }
                    }
                }
                .modifier(AnimationModifier(menuOpened: self.menuOpened, rotationEffectAngle: self.rotationEffectAngle, scaleEffectValue: self.scaleEffectValue))

                Button(action: {
                    withAnimation {
                        self.menuOpened.toggle()
                    }
                }, label: {
                    MenuButton(menuOpened: self.menuOpened, rotationEffectAngle: self.rotationEffectAngle, scaleEffectValue: self.scaleEffectValue, menuButtonSize: self.menuButtonSize, menuButtonColor: self.menuButtonColor)
                })
            }
        }
    }
    
    
    /// Compute the x value for the specific index menu item
    /// - Parameter index: the menuItem index
    /// - Returns: the x offset
    private func xOffset(_ index: Int) -> CGFloat {
        let slice = CGFloat(2 * .pi / CGFloat(self.menuItems.count))
        return menuRadius * cos(slice * CGFloat(index))
    }
    
    /// Compute the y value for the specific index menu item
    /// - Parameter index: the menuItem index
    /// - Returns: the y offset
    private func yOffset(_ index: Int) -> CGFloat {
        let slice = CGFloat(2 * .pi / CGFloat(self.menuItems.count))
        return menuRadius * sin(slice * CGFloat(index))
    }
    
    /// Verify if the menuItem's image is a SFSymbol
    /// - Parameter menuItem: the menu item
    /// - Returns: the verification
    private func canDisplaySFSymbol(_ menuItem: MenuItem) -> Bool {
        menuItem.imageSFSymbol != nil
    }
    
    /// Verify if the menuItem's image is an Asset Image
    /// - Parameter menuItem: the menu item
    /// - Returns: the verification
    private func canDisplayImageAsset(_ menuItem: MenuItem) -> Bool {
        menuItem.imageAsset != nil
    }
}

#if DEBUG
struct CircularMenu_Previews: PreviewProvider {
    
    static func buttonClickHandler(index: Int) {
        
    }
    
    static var previews: some View {
        CircularMenu(menuItems: [
            MenuItem(id: 0, imageSFSymbol: "tortoise", foregroundSFSymbolColor: Color.white, imageAsset: nil, backgroundColor: .blue),
            MenuItem(id: 1, imageSFSymbol: "bolt", foregroundSFSymbolColor: Color.white, imageAsset: nil, backgroundColor: .yellow),
            MenuItem(id: 2, imageSFSymbol: nil, foregroundSFSymbolColor: nil, imageAsset: "forest", backgroundColor: .orange),
            MenuItem(id: 3, imageSFSymbol: "hare", foregroundSFSymbolColor: Color.white, imageAsset: nil, backgroundColor: .green),
            MenuItem(id: 4, imageSFSymbol: "flame", foregroundSFSymbolColor: Color.white, imageAsset: nil, backgroundColor: .red),
        ], menuRadius: 120, menuButtonSize: 60, menuButtonColor: .green, buttonClickCompletion: CircularMenu_Previews.buttonClickHandler)
    }
}
#endif
