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
            BurgerModel(title:"Big Mac",city:"Jalapenos,Cheese,Onion",image:#imageLiteral(resourceName:"burger"),rating:"★★★☆☆",rupees:"Rs.600",dot:"."),
                    
                    BurgerModel(title:"Chicken Submarine",city:"Zagreb,Croatia,Cheese,Mayo",image:#imageLiteral(resourceName: "quadra cheetos burger"),rating:"★★★★☆",rupees:"Rs.450",dot:"."),
                    
                    BurgerModel(title:"BBQ Grilled",city:"Chicken Kabab,Ketchup,Mayo",image:#imageLiteral(resourceName: "burger1"),rating:"★★★☆☆",rupees:"Rs.250",dot:"."),
                   
                    BurgerModel(title:"Ham Burger",city:"Onion,Garlic Sauce,Mushroom",image:#imageLiteral(resourceName: "burger2"),rating:"★★★★★",rupees:"Rs.290",dot:"."),
                  
                    BurgerModel(title:"Bread Meats Bread",city:"Chicken Kabab,Spicy Sauce,Mayo",image:#imageLiteral(resourceName: "burger4"),rating:"★★★★☆",rupees:"Rs.300",dot:"."),
                
                    BurgerModel(title:"Extreme Zingerata",city:"Ketchup,Cheese,Pepper",image:#imageLiteral(resourceName: "burger5"),rating:"★★☆☆☆",rupees:"Rs.435",dot:"."),
                 
                    BurgerModel(title:"Quadro Cheetos Mac",city:"Ginger Sauce,Cheese,Vegitables",image:#imageLiteral(resourceName: "burger3"),rating:"★★★★☆",rupees:"Rs.650",dot:".")]
        
        pizData =  [
            PizzaModel(title:"Mama Mia",city:"Olives,Garlic,Mushroom",image:#imageLiteral(resourceName: "pizza") ,rating:"★★★★★",rupees:"Rs.1700",dot:"."),
            PizzaModel(title:"Super Sicilian",city:"Cheese,Vegitables,Mushroom",image:#imageLiteral(resourceName: "pizza1") ,rating:"★★☆☆☆",rupees:"Rs.1050",dot:"."),
            PizzaModel(title:"Spicy Ranch",city:"Ginger,Garlic,Mushroom",image:#imageLiteral(resourceName: "pizza2") ,rating:"★★★★☆",rupees:"Rs.1200",dot:"."),
            PizzaModel(title:"Afghani Tikka",city:"Cheese,Garlic Sauce,Tomotoes",image:#imageLiteral(resourceName: "pizza3") ,rating:"★★★★☆",rupees:"Rs.1400",dot:"."),
            PizzaModel(title:"Onions Green Peppers,",city:"Hot Grilled,Olives,Peppar",image:#imageLiteral(resourceName: "pizza4") ,rating:"★★★☆☆",rupees:"Rs.1250",dot:"."),
            PizzaModel(title:"Fajita Sicilian",city:"Ginger,Garlic,Pepper Sauce",image:#imageLiteral(resourceName: "pizza5") ,rating:"★☆☆☆☆",rupees:"Rs.1050",dot:"."),
            PizzaModel(title:"Smoked Chicken",city:"Chilli,Olives,Garlic,Mushroom",image:#imageLiteral(resourceName: "pizza6") ,rating:"★★★☆☆",rupees:"Rs.1300",dot:".")]
        
        sandData =  [
            SandwichModel(title:"Veggie Delite",city:"Vegitable,Egg,Chicken,Mayo",image:#imageLiteral(resourceName: "club sandwich"),rating:"★★★☆☆",rupees:"Rs.300",dot:"."),
            SandwichModel(title:"Steak & Cheese",city:"Chees,Chicken,Mayo",image:#imageLiteral(resourceName: "sandwich1"),rating:"★★★★★",rupees:"Rs.450",dot:"."),
            SandwichModel(title:"Turkey Thigh",city:"Hot Mayo,Chicken,Garlic Sauce",image:#imageLiteral(resourceName: "sandwich2"),rating:"★★☆☆☆",rupees:"Rs.399",dot:"."),
            SandwichModel(title:"Oven Roasted Chicken",city:"Chees,Chicken,Egg,Vegitable",image:#imageLiteral(resourceName: "sandwich3"),rating:"★★★☆☆",rupees:"Rs.500",dot:"."),
            SandwichModel(title:"Club Sandwich",city:"Mayo,Onion,Chicken,Egg",image:#imageLiteral(resourceName: "sandwich4"),rating:"★☆☆☆☆",rupees:"Rs.200",dot:"."),
            SandwichModel(title:"Sweet Onion Chicken Teriyaki",city:"Onion,Sugar,Chicken,Vegitable",image:#imageLiteral(resourceName: "sandwich5"),rating:"★★★☆☆",rupees:"Rs.260",dot:"."),
            SandwichModel(title:"Chicken Sandwich",city:"Vegitable,Chicken,Mayo",image:#imageLiteral(resourceName: "sandwich6"),rating:"★★★★☆",rupees:"Rs.180",dot:".")]
        
        friData =  [FriesModel(title:"Garlic Mayo Fries",city:"Garlic Mayo,Spices",image:#imageLiteral(resourceName: "fries"),rating:"★★★☆☆",rupees:"Rs.100",dot:".")]
    
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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dv = self.storyboard?.instantiateViewController(identifier: "DetailViewController")as! DetailViewController
        switch segOut.selectedSegmentIndex {
        case 0:
                  dv.burData = burData[indexPath.row]
            break
           case 1:
            dv.pizData = pizData[indexPath.row]
            break
            case 2:
                dv.sandData = sandData[indexPath.row]
           break
        case 3:
            dv.friData = friData[indexPath.row]
            break
        default:
            break
        }
  
        
        self.navigationController?.pushViewController(dv, animated: true)
    }
    
}

