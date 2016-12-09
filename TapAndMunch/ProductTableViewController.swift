//
//  ProductTableViewController.swift
//  TapAndMunch
//
//  Created by Esther Rios on 12/9/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class ProductTableViewController: UITableViewController {
    
    var products: [Product]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product1 = Product()
        let product2 = Product()
        let product3 = Product()
        let product4 = Product()
        let product5 = Product()
        
        product1.name = "Zazones Cuisine"
        //  product1.productImage = "background"
        product1.cellImage = "food_icon"
        
        product2.name = "Mona"
        //  product2.productImage = "background"
        product2.cellImage = "food_icon"
        
        product3.name = "Desecheo"
        //  product3.productImage = "background"
        product3.cellImage = "food_icon"
        
        product4.name = "Atlantic Restaurant"
        //  product4.productImage = "background"
        product4.cellImage = "food_icon"
        
        product5.name = "La Vista Smokehouse"
        //  product5.productImage = "background"
        product5.cellImage = "food_icon"
        
        
        products = [product1, product2, product3, product4, product5]
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let p = products{
            return p.count
        }
        return 0
    }
    
    override func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
        let product = products?[indexPath.row]
        
        if let p = product{
            cell.textLabel?.text = p.name
            if let i = p.cellImage{
                cell.imageView?.image = UIImage(named: i)
            }
        }
        
        return cell
    }
}
