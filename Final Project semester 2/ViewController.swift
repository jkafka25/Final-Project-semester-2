//
//  ViewController.swift
//  Final Project semester 2
//
//  Created by Jack Kafka on 5/14/20.
//  Copyright © 2020 Jack Kafka. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var listTableView: UITableView!
    
    var todos: [String] = ["finish senior year","graduate", "have a good summer"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        listTableView.delegate = self
        listTableView.dataSource = self
        listTableView.rowHeight = 80
    }
    
    @IBAction func addButton(_ sender: Any) {
   
        let todoAlert = UIAlertController(title: "Add Todo", message: "add a new todo", preferredStyle: .alert)
        todoAlert.addTextField()
        
        let addTodoAction = UIAlertAction(title: "+", style: .default) { (action) in
            let newTodo = todoAlert.textFields![0]
            self.todos.append(newTodo.text!)
            self.listTableView.reloadData()
            
        }
    
        let cancelAction = UIAlertAction(title: "cancel", style: .default)
        
        todoAlert.addAction(addTodoAction)
        todoAlert.addAction(cancelAction)
        
        present(todoAlert, animated: true, completion: nil)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath) as! todolistcell
        
        
        cell.listLabel.text = todos[indexPath.row] 
        
       
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! todolistcell
        
        if cell.isChecked == false {
            cell.checkImage.image = UIImage(named: "checkmark")
            cell.isChecked = true
        
    }
        else{
            cell.isChecked = false
            cell.checkImage.image = nil
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            todos.remove(at: indexPath.row)
            listTableView.reloadData()
        }
    }


}
