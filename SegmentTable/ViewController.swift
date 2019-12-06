//
//  ViewController.swift
//  SegmentTable
//
//  Created by HigherVisibility on 04/12/2019.
//  Copyright © 2019 ahmedHigherVisibility. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myView: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segOut: UISegmentedControl!

    
    var burData:[BurgerModel] = []
    var pizData:[PizzaModel] = []
    var sandData:[SandwichModel] = []
    var friData:[FriesModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(myView)
       
        _ = [NSAttributedString.Key.foregroundColor: UIColor.systemPink]
        
UISegmentedControl.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.systemPink], for: .selected)

        // color of other options
        UISegmentedControl.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
    
        burData =  [
                    BurgerModel(title:"Big Mac",city:"Jalapenos,Cheese,Onion",image:#imageLiteral(resourceName:"burger"),rating:"★★★☆☆",rupees:"Rs.600"),
                    BurgerModel(title:"Chicken Submarine",city:"Zagreb,Croatia,Cheese,Mayo",image:#imageLiteral(resourceName: "quadra cheetos burger"),rating:"★★★★☆",rupees:"Rs.450"),
                    BurgerModel(title:"BBQ Grilled",city:"Chicken Kabab,Ketchup,Mayo",image:#imageLiteral(resourceName: "burger1"),rating:"★★★☆☆",rupees:"Rs.250"),
                    BurgerModel(title:"Ham Burger",city:"Onion,Garlic Sauce,Mushroom",image:#imageLiteral(resourceName: "burger2"),rating:"★★★★★",rupees:"Rs.290"),
                    BurgerModel(title:"Bread Meats Bread",city:"Chicken Kabab,Spicy Sauce,Mayo",image:#imageLiteral(resourceName: "burger4"),rating:"★★★★☆",rupees:"Rs.300"),
                    BurgerModel(title:"Extreme Zingerata",city:"Ketchup,Cheese,Pepper",image:#imageLiteral(resourceName: "burger5"),rating:"★★☆☆☆",rupees:"Rs.435"),
                    BurgerModel(title:"Quadro Cheetos Mac",city:"Jalapenos,Garlic Sauce,Cheese,Vegitables",image:#imageLiteral(resourceName: "burger3"),rating:"★★★★☆",rupees:"Rs.650")]
        
        pizData =  [
            PizzaModel(title:"Mama Mia",city:"Olives,Garlic,Mushroom",image:#imageLiteral(resourceName: "pizza") ,rating:"rating: ★★★★★",rupees:"Rs.1700"),
            PizzaModel(title:"Super Sicilian",city:"Cheese,Vegitables,Mushroom",image:#imageLiteral(resourceName: "pizza1") ,rating:"rating: ★★☆☆☆",rupees:"Rs.1050"),
            PizzaModel(title:"Spicy Ranch",city:"Ginger,Garlic,Mushroom",image:#imageLiteral(resourceName: "pizza2") ,rating:"rating: ★★★★☆",rupees:"Rs.1200"),
            PizzaModel(title:"Afghani Tikka",city:"Cheese,Garlic Sauce,Tomotoes",image:#imageLiteral(resourceName: "pizza3") ,rating:"rating: ★★★★☆",rupees:"Rs.1400"),
            PizzaModel(title:"Onions Green Peppers,",city:"Hot Grilled,Olives,Peppar",image:#imageLiteral(resourceName: "pizza4") ,rating:"rating: ★★★☆☆",rupees:"Rs.1250"),
            PizzaModel(title:"Fajita Sicilian",city:"Ginger,Garlic,Pepper Sauce",image:#imageLiteral(resourceName: "pizza5") ,rating:"rating: ★☆☆☆☆",rupees:"Rs.1050"),
            PizzaModel(title:"Smoked Chicken",city:"Chilli,Olives,Garlic,Mushroom",image:#imageLiteral(resourceName: "pizza6") ,rating:"rating: ★★★☆☆",rupees:"Rs.1300")]
        
        sandData =  [
            SandwichModel(title:"Veggie Delite",city:"Vegitable,Egg,Chicken,Mayo",image:#imageLiteral(resourceName: "club sandwich"),rating:"rating: ★★★☆☆",rupees:"Rs.300"),
            SandwichModel(title:"Steak & Cheese",city:"Chees,Chicken,Mayo",image:#imageLiteral(resourceName: "sandwich1"),rating:"rating: ★★★★★",rupees:"Rs.450"),
            SandwichModel(title:"Turkey Thigh",city:"Hot Mayo,Chicken,Garlic Sauce",image:#imageLiteral(resourceName: "sandwich2"),rating:"rating: ★★☆☆☆",rupees:"Rs.399"),
            SandwichModel(title:"Oven Roasted Chicken",city:"Chees,Chicken,Egg,Vegitable",image:#imageLiteral(resourceName: "sandwich3"),rating:"rating: ★★★☆☆",rupees:"Rs.500"),
            SandwichModel(title:"Club Sandwich",city:"Mayo,Onion,Chicken,Egg",image:#imageLiteral(resourceName: "sandwich4"),rating:"rating: ★☆☆☆☆",rupees:"Rs.200"),
            SandwichModel(title:"Sweet Onion Chicken Teriyaki",city:"Onion,Sugar,Chicken,Vegitable",image:#imageLiteral(resourceName: "sandwich5"),rating:"rating: ★★★☆☆",rupees:"Rs.260"),
            SandwichModel(title:"Chicken Sandwich",city:"Vegitable,Chicken,Mayo",image:#imageLiteral(resourceName: "sandwich6"),rating:"rating: ★★★★☆",rupees:"Rs.180")]
        
        friData =  [FriesModel(title:"Garlic Mayo Fries",city:"Garlic Mayo,Spices",image:#imageLiteral(resourceName: "fries"),rating:"rating: ★★★☆☆",rupees:"Rs.100")]
    
}
  
    @IBAction func btnSegOut(_ sender: Any) {self.tableView.reloadData()
    }

}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var value = segOut.selectedSegmentIndex
        
        switch value {
        case 0:
            value = burData.count
            break
        case 1:
            value = pizData.count
            break
        case 2:
            value = sandData.count
            break
        case 3:
            value = friData.count
            break
        default:
           break
        }
       return value
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        
        switch segOut.selectedSegmentIndex {
        case 0:
            cell.burModel = burData[indexPath.row]
            break
        case 1:
            cell.pizModel = pizData[indexPath.row]
            break
        case 2:
            cell.sandModel = sandData[indexPath.row]
            break
        case 3:
            cell.friModel = friData[indexPath.row]
            break
        default:
            break
        }
        return cell
    }
    
}

