//
//  ViewController.swift
//  LoginApp
//
//  Created by Yassine Lamtalaa on 5/2/25.
//
// Create a table with 100 cells, create a model of 10 product object, display bellow product objects in tableView
// struct Product {
//    let name: String
//    let price: String
//    let image: String
// }

import UIKit

struct Product {
    let name: String
    let price: String
    let image: String
}

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let Products: [Product] = [
        Product(name: "iPhone", price: "$999", image: "iphone"),
        Product(name: "iPad", price: "$799", image: "ipad"),
        Product(name: "MacBook", price: "$1299", image: "laptopcomputer"),
        Product(name: "AirPods", price: "$199", image: "airpods"),
        Product(name: "Apple Watch", price: "$399", image: "applewatch"),
        Product(name: "HomePod", price: "$299", image: "hifispeaker"),
        Product(name: "Magic Mouse", price: "$99", image: "cursorarrow.rays"),
        Product(name: "Magic Keyboard", price: "$149", image: "keyboard"),
        Product(name: "Apple TV", price: "$179", image: "tv"),
        Product(name: "Studio Display", price: "$1599", image: "display")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ProductTableViewCell
        
        let product = Products[indexPath.row % Products.count]

        cell?.nameLabel.text = product.name
        cell?.priceLabel.text = product.price
        cell?.productImageView.image = UIImage(systemName: product.image)
        
        return cell ?? UITableViewCell()
    }
}
