//
//  ContentView.swift
//  Pinch
//
//  Created by Hye Sung Park on 2023/08/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      // MARK: - PROPERTY
      
      // MARK: - FUNCTION
      
      // MARK: - CONTENT
      
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}