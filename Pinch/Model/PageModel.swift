//
//  PageModel.swift
//  Pinch
//
//  Created by Maya Ghamloush on 18/02/2024.
//

import Foundation
struct Page: Identifiable{
    let id: Int
    let imageName: String
    
    
}

extension Page{
    var thumbnailName: String{
        return "thumb-" + imageName
    }
    
}
