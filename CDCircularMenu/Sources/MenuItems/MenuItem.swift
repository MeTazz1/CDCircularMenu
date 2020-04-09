//
//  MenuItem.swift
//  CDCircularMenu
//
//  Created by Christophe Dellac on 4/8/20.
//  Copyright © 2020 Christophe Dellac. All rights reserved.
//

import Foundation
import SwiftUI

/// MenuItem object representation model
public struct MenuItem: Identifiable {
    
    /// Identifiable ID
    public let id: Int
    
    /// The SFSymbol name, optional
    let imageSFSymbol: String?
    
    /// The foreground color for SFSymbol, optional
    let foregroundSFSymbolColor: Color?
    
    /// The image name from Assets, optional
    let imageAsset: String?
    
    /// The button's background color
    let backgroundColor: Color
    
    public init(id: Int, imageSFSymbol: String?, foregroundSFSymbolColor: Color?, imageAsset: String?, backgroundColor: Color) {
        self.id = id
        self.imageSFSymbol = imageSFSymbol
        self.foregroundSFSymbolColor = foregroundSFSymbolColor
        self.imageAsset = imageAsset
        self.backgroundColor = backgroundColor
    }
}
