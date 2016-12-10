//
//  RestaurantListViewController.swift
//  TapAndMunch
//
//  Created by Esther Rios on 12/10/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class RestaurantListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let names = ["Pizzeria Don Quijote", "Off the Wall", "El Café de Tite", "Chalupas", "Café Rústico", "Happy Bowls"]
    let price = ["$", "$$", "$", "$", "$$", "$$"]
    let cuisine = ["Pizzeria", "Pub, Burgers, Chicken Wings", "Cafeteria", "Mexican", "Cafeteria", "Juice Bar"]
    let images = [UIImage(named: "pizzeria_donq"), UIImage(named: "off_the_wall"), UIImage(named: "cafe_de_tite"), UIImage(named: "chalupas"), UIImage(named: "cafe_rustico"), UIImage(named:"happy_bowls")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
        //return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductCell
        
        cell.my_logo.image = images[indexPath.row]
        cell.my_name.text = names[indexPath.row]
        cell.my_cuisine.text = cuisine[indexPath.row]
        cell.my_price.text = price[indexPath.row]
        
        return (cell)
    }
}