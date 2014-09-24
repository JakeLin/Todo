// Playground - noun: a place where people can play

import UIKit

var dateString = "2014-07-15" // change to your date format

var dateFormatter = NSDateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd"

var date = dateFormatter.dateFromString(dateString)
println(date)
