//
//  RestaurantListViewController.swift
//  TapAndMunch
//
//  Created by Esther Rios on 12/10/16.
//  Copyright © 2016 HCI. All rights reserved.
//

import UIKit

class RestaurantListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {

    var signInTransition: String = ""
    
    var searchActive : Bool = false
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    let names = ["Pizzeria Don Quijote", "Off the Wall", "El Café de Tite", "Chalupas", "Café Rústico", "Happy Bowls", "Friends Café"]
    let price = ["$", "$$", "$", "$", "$$", "$$", "$"]
    let cuisine = ["Pizzeria", "Pub, Burgers", "Cafeteria", "Mexican", "Cafeteria", "Cafeteria, Juice Bar", "Cafeteria"]
    let images = [UIImage(named: "pizzeria_donq"), UIImage(named: "off_the_wall"), UIImage(named: "el_cafe_de_tite"), UIImage(named: "chalupas"), UIImage(named: "cafe_rustico"), UIImage(named:"happy_bowls"), UIImage(named:"friends_cafe")]
    
    var filtered:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.backgroundImage = UIImage()
        searchBar.delegate = self
        // Do any additional setup after loading the view.
    }
    
    //// Newly Added searchBar functionality
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchActive = true;
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        filtered = names.filter({ (text) -> Bool in
            let tmp: NSString = text as NSString
            
            let range = tmp.range(of: searchText, options:NSString.CompareOptions.caseInsensitive)
            
            return range.location != NSNotFound
        })
        if(filtered.count == 0){
            searchActive = false;
        } else {
            searchActive = true;
        }
        self.tableView.reloadData()
    }
    
    ////
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(searchActive) {
            return filtered.count
        }
        return names.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductCell
        
        if(searchActive){
            cell.my_name.text = filtered[indexPath.row]
            
        } else {
            cell.my_logo.image = images[indexPath.row]
            cell.my_name.text = names[indexPath.row]
            cell.my_cuisine.text = cuisine[indexPath.row]
            cell.my_price.text = price[indexPath.row]
        }
        
        return cell;
    }
    
    @IBAction func accountEditButton(_ sender: AnyObject) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let accountView = storyboard.instantiateViewController(withIdentifier: "accountInfo") as! AccountViewController
        
        self.present(accountView, animated: true, completion: nil)

    }
    
}
