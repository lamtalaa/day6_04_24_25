//
//  ViewController.swift
//  LoginApp
//
//  Created by Yassine Lamtalaa on 5/2/25.
//
// Create a table with 100 cell, first cell color should be Red, second should be Green and third should be Blue. then repeat recursively

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        switch indexPath.row % 3 {
            case 0:
                cell.backgroundColor = .red
            case 1:
                cell.backgroundColor = .green
            case 2:
                cell.backgroundColor = .blue
            default:
                cell.backgroundColor = .white
            }
        
        return cell
    }
}

