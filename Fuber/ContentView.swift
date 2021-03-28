//
//  ContentView.swift
//  Fuber
//
//  Created by TIAN MBPR on 2021/3/28.
//  Copyright © 2021 PSC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  @State var showSplash:Bool = true
  
  // MARK: - BODY
  var body: some View {
    SplashScreen()
      .opacity(showSplash ? 1 : 0)
      .onAppear() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
          withAnimation() {
            self.showSplash = false
          }
        }
    }
  }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
