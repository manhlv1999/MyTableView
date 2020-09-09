//
//  List.swift
//  MyTableview
//
//  Created by Le Manh on 8/3/20.
//  Copyright © 2020 Le Manh. All rights reserved.
//

import Foundation
class List {
    var image: String = ""
    var title: String = ""
    var subtitle: String = ""
    
    init(image: String, title: String, subtitle: String){
        self.image = image
        self.title = title
        self.subtitle = subtitle
        
    }
}

struct HeaderAction {
    var title = ""
    var icon = ""

}

class Header {
    var name : String = ""
    var avatarname : String = ""
    var image : String = ""
    var actions = [HeaderAction]()

    init(name : String, avatarname : String, image : String, actions: [HeaderAction]){
        self.name = name
        self.avatarname = avatarname
        self.image = image
        self.actions = actions
        
    }
}
