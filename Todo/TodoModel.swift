//
//  TodoModel.swift
//  Todo
//
//  Created by Jake Lin on 19/09/2014.
//  Copyright (c) 2014 Jake Lin. All rights reserved.
//

import Foundation

class TodoModel : NSObject{
    var id: String
    var image: String
    var title: String
    var date: NSDate
    
    init (id: String, image: String, title: String, date: NSDate) {
        self.id = id
        self.image = image
        self.title = title
        self.date = date
    }
}

/*
struct TodoModel{
    var id: String
    var image: String
    var title: String
    var date: NSDate
}
*/