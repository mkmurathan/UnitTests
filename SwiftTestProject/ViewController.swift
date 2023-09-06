//
//  ViewController.swift
//  SwiftTestProject
//
//  Created by Murathan karagöz on 7.09.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tableVİew: UITableView!
    
    var toDoList = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableVİew.dataSource = self
        tableVİew.delegate = self
        tableVİew.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }

    
    
    @IBAction func addButton(_ sender: Any) {
        let alert = UIAlertController(title: "add item", message: "enter yout massage item", preferredStyle: .alert)
        alert.addTextField { textField in
            textField.placeholder = "Enter İtem"
        }
        
        let okButton = UIAlertAction(title: "ok", style: .default) { action in
            guard let textField = alert.textFields?[0], let inputText = textField.text, !inputText.isEmpty else {
                return
            }
            self.toDoList.insert(inputText, at: 0)
            self.tableVİew.insertRows(at: [.init(row: 0, section: 0)], with: .automatic)
        }
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = toDoList[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            self.toDoList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    

}

