//
//  ImageSFSymbol.swift
//  CDCircularMenu
//
//  Created by Christophe Dellac on 4/8/20.
//  Copyright © 2020 Christophe Dellac. All rights reserved.
//

import SwiftUI

struct ImageSFSymbol: View {
    
    let menuItem: MenuItem
    let menuButtonSize: CGFloat
    
    var body: some View {
        
        Image(systemName: self.menuItem.imageSFSymbol!)
            .resizable()
            .scaledToFit()
            .frame(width: self.menuButtonSize - 20, height: self.menuButtonSize - 20)
            .foregroundColor(.white)
            .background(
                Circle().fill(self.menuItem.backgroundColor)
                    .frame(width: self.menuButtonSize, height: self.menuButtonSize))
        
    }
}

struct ImageSFSymbol_Previews: PreviewProvider {
    static var previews: some View {
        ImageSFSymbol(menuItem: MenuItem(id: 0, imageSFSymbol: "tortoise", foregroundSFSymbolColor: Color.white,
                                         imageAsset: nil, backgroundColor: .blue), menuButtonSize: 60)
    }
}
