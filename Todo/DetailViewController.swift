//
//  DetailViewController.swift
//  Todo
//
//  Created by Jake Lin on 21/09/2014.
//  Copyright (c) 2014 Jake Lin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var childButton: UIButton!
    @IBOutlet weak var phoneButton: UIButton!
    @IBOutlet weak var shoppingCartButton: UIButton!
    @IBOutlet weak var travelButton: UIButton!
    @IBOutlet weak var todoItem: UITextField!
    @IBOutlet weak var todoDate: UIDatePicker!

    var todo:TodoModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        todoItem.delegate = self
    
        if todo == nil {
            childButton.selected = true
            navigationController?.title = "新建Todo"
        }
        else {
            navigationController?.title = "修改Todo"
            if todo?.image == "child-selected"{
                childButton.selected = true
            }
            else if todo?.image == "phone-selected"{
                phoneButton.selected = true
            }
            else if todo?.image == "shopping-cart-selected"{
                shoppingCartButton.selected = true
            }
            else if todo?.image == "travel-selected"{
                travelButton.selected = true
            }
            
            todoItem.text = todo?.title
            todoDate.setDate((todo?.date)!, animated: false)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // clear selected status
    func resetButtons() {
        childButton.selected = false
        phoneButton.selected = false
        shoppingCartButton.selected = false
        travelButton.selected = false
    }

    @IBAction func childTapped(sender: AnyObject) {
        resetButtons()
        childButton.selected = true
    }
    
    @IBAction func phoneTapped(sender: AnyObject) {
        resetButtons()
        phoneButton.selected = true
    }
    
    @IBAction func shoppingCartTapped(sender: AnyObject) {
        resetButtons()
        shoppingCartButton.selected = true
    }
    
    @IBAction func travelTapped(sender: AnyObject) {
        resetButtons()
        travelButton.selected = true
    }
    
    // Save the todo item
    @IBAction func okTapped(sender: AnyObject) {
        var image = ""
        if childButton.selected {
            image = "child-selected"
        }
        else if phoneButton.selected {
            image = "phone-selected"
        }
        else if shoppingCartButton.selected {
            image = "shopping-cart-selected"
        }
        else if travelButton.selected {
            image = "travel-selected"
        }
        
        if todo == nil {
            // New todo
            // let uuid = NSUUID.UUID().UUIDString
            let uuid = NSUUID().UUIDString // Spport Xcode 6.1
            todo = TodoModel(id: uuid, image: image, title: todoItem.text!, date: todoDate.date)
            todos.append(todo!)
        }
        else {
            todo?.image = image
            todo?.title = todoItem.text!
            todo?.date = todoDate.date
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    // Dismiss the keyboard
    // MARK: - Textfield
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        todoItem.resignFirstResponder()
    }
}
