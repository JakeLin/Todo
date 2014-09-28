// Playground - noun: a place where people can play

import UIKit

var dateString = "2014-07-15" // change to your date format

var dateFormatter = NSDateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd"

var date = dateFormatter.dateFromString(dateString)
println(date)


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

var todos = [TodoModel(id: "1", image: "child-selected", title: "1. 去游乐场", date: NSDate()),
    TodoModel(id: "2", image: "shopping-cart-selected", title: "2. 购物", date: NSDate()),
    TodoModel(id: "3", image: "phone-selected", title: "3. 打电话", date: NSDate()),
    TodoModel(id: "4", image: "travel-selected", title: "4. Travel to Europe", date: NSDate())]

// swap(&todos[sourceIndexPath.row], &todos[destinationIndexPath.row])


        