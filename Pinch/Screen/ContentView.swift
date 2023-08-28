//
//  ContentView.swift
//  Pinch
//
//  Created by Hye Sung Park on 2023/08/28.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTY
  
  @State private var isAnimating: Bool = false
  @State private var imageScale: CGFloat = 1
  @State private var imageOffset: CGSize = CGSize(width: 0, height: 0)
  
  // MARK: - FUNCTION
  
  // MARK: - CONTENT
  var body: some View {
    
    NavigationView {
      ZStack {
        // MARK: - PAGE IMAGE
        Image("magazine-front-cover")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .cornerRadius(10)
          .padding()
          .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
          .opacity(isAnimating ? 1 : 0)
          .offset(x: imageOffset.width, y: imageOffset.height)
          .scaleEffect(imageScale)
          .onTapGesture(count: 2) {
            if imageScale == 1 {
              withAnimation(.spring()) {
                imageScale = 5
              }
            } else {
              withAnimation(.spring()){
                imageScale = 1
              }
            }
          }
          .gesture(
            DragGesture()
              .onChanged({ value in
                withAnimation(.linear(duration: 1)) {
                  imageOffset = value.translation
                }
              })
              .onEnded({ _ in
                <#code#>
              })
          )
          
      }
      .navigationTitle("Pinch & Zoom")
      .navigationBarTitleDisplayMode(.inline)
    }// : NAVIGATION
    .navigationViewStyle(.stack)
    .onAppear {
      withAnimation(.linear(duration: 1)) {
        isAnimating = true
      }
    }
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
