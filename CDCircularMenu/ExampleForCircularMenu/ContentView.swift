//
//  ContentView.swift
//  CDCircularMenu
//
//  Created by Christophe Dellac on 4/8/20.
//  Copyright © 2020 Christophe Dellac. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var progress: CGFloat = 0
    
    var body: some View {
        VStack {
            // 1 Create a CircularMenu with your configuration
            CircularMenu(menuItems: testMenuItems, menuRadius: 120, menuButtonSize: 60, menuButtonColor: .black, buttonClickCompletion: buttonClickHandler(_:))
                .frame(width: 40, height: 40)
            
        }
    }
    
    // 2 Create your button click handler like so:
    func buttonClickHandler(_ index: Int) {
        /// Your actions here
    }
    
    // 3 Create your array of item
    private var testMenuItems: [MenuItem] {
        [
            MenuItem(id: 0, imageSFSymbol: "tortoise", foregroundSFSymbolColor: Color.white, imageAsset: nil, backgroundColor: .blue),
            MenuItem(id: 1, imageSFSymbol: "bolt", foregroundSFSymbolColor: Color.white, imageAsset: nil, backgroundColor: .yellow),
            MenuItem(id: 2, imageSFSymbol: nil, foregroundSFSymbolColor: nil, imageAsset: "forest", backgroundColor: .orange),
            MenuItem(id: 3, imageSFSymbol: "hare", foregroundSFSymbolColor: Color.white, imageAsset: nil, backgroundColor: .green),
            MenuItem(id: 4, imageSFSymbol: "flame", foregroundSFSymbolColor: Color.white, imageAsset: nil, backgroundColor: .red),
        ]
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
