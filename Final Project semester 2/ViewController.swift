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



}
