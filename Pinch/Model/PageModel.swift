//
//  PageModel.swift
//  Pinch
//
//  Created by Hye Sung Park on 2023/08/29.
//

import Foundation


struct Page: Identifiable {
  let id: Int
  let imageName: String
  
}


extension Page {
  var thumbnailName: String {
    return "thumb-" + imageName
  }
}
