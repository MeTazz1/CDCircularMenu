//
//  ImageAsset.swift
//  CDCircularMenu
//
//  Created by Christophe Dellac on 4/8/20.
//  Copyright © 2020 Christophe Dellac. All rights reserved.
//

import SwiftUI

struct ImageAsset: View {
    
    let menuItem: MenuItem
    let menuButtonSize: CGFloat
    
    var body: some View {
        Image(self.menuItem.imageAsset!)
            .resizable()
            .scaledToFit()
            .frame(width: self.menuButtonSize - 20, height: self.menuButtonSize - 20)
            .foregroundColor(.white)
            .background(
                Circle().fill(self.menuItem.backgroundColor)
                    .frame(width: self.menuButtonSize, height: self.menuButtonSize))
    }
}

struct ImageAsset_Previews: PreviewProvider {
    static var previews: some View {
        ImageAsset(menuItem: MenuItem(id: 0, imageSFSymbol: nil, foregroundSFSymbolColor: nil, imageAsset: "forest",
                                      backgroundColor: .orange), menuButtonSize: 60)
    }
}
