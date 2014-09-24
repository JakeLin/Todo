//
//  Common.swift
//  Todo
//
//  Created by Jake Lin on 23/09/2014.
//  Copyright (c) 2014 Jake Lin. All rights reserved.
//

import Foundation

func dateFromString (dateStr: String) -> NSDate? {
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let date = dateFormatter.dateFromString(dateStr)
    return date
}