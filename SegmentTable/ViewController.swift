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
    
        burData =  [BurgerModel(title:"Big Mac",city:"Jalapenos,Cheese,Mayo",image:#imageLiteral(resourceName:"burger"),rating:"rating: 4.8",rupees:"Rs:220"),BurgerModel(title:"Quadro Cheetos Mac",city:"Jalapenos,Cheese,Mayo",image:#imageLiteral(resourceName: "quadra cheetos burger"),rating:"rating: 4.8",rupees:"Rs:520"),BurgerModel(title:"Quadro Cheetos Mac",city:"Jalapenos,Cheese,Mayo",image:#imageLiteral(resourceName: "burger1"),rating:"rating: 4.8",rupees:"Rs:520"),BurgerModel(title:"Quadro Cheetos Mac",city:"Jalapenos,Cheese,Mayo",image:#imageLiteral(resourceName: "burger2"),rating:"rating: 4.8",rupees:"Rs:520"),BurgerModel(title:"Quadro Cheetos Mac",city:"Jalapenos,Cheese,Mayo",image:#imageLiteral(resourceName: "burger3"),rating:"rating: 4.8",rupees:"Rs:520"),BurgerModel(title:"Quadro Cheetos Mac",city:"Jalapenos,Cheese,Mayo",image:#imageLiteral(resourceName: "burger4"),rating:"rating: 4.8",rupees:"Rs:520"),BurgerModel(title:"Quadro Cheetos Mac",city:"Jalapenos,Cheese,Mayo",image:#imageLiteral(resourceName: "burger5"),rating:"rating: 4.8",rupees:"Rs:520"),BurgerModel(title:"Quadro Cheetos Mac",city:"Jalapenos,Cheese,Mayo",image:#imageLiteral(resourceName: "burger3"),rating:"rating: 4.8",rupees:"Rs:520")]
        
        pizData =  [PizzaModel(title:"Arabic Ranch",city:"Hot Cheese,Ginger,Garlic,Mushroom",image:#imageLiteral(resourceName: "pizza") ,rating:"rating: 4.2",rupees:"Rs:500")]
        
        sandData =  [SandwichModel(title:"Club Sandwich",city:"Mayo,Chicken,Egg",image:#imageLiteral(resourceName: "club sandwich"),rating:"rating: 3.5",rupees:"Rs:200"),SandwichModel(title:"Club Sandwich",city:"Mayo,Chicken,Egg",image:#imageLiteral(resourceName: "sandwich1"),rating:"rating: 3.5",rupees:"Rs:200"),SandwichModel(title:"Club Sandwich",city:"Mayo,Chicken,Egg",image:#imageLiteral(resourceName: "sandwich2"),rating:"rating: 3.5",rupees:"Rs:200"),SandwichModel(title:"Club Sandwich",city:"Mayo,Chicken,Egg",image:#imageLiteral(resourceName: "sandwich3"),rating:"rating: 3.5",rupees:"Rs:200"),SandwichModel(title:"Club Sandwich",city:"Mayo,Chicken,Egg",image:#imageLiteral(resourceName: "sandwich4"),rating:"rating: 3.5",rupees:"Rs:200"),SandwichModel(title:"Club Sandwich",city:"Mayo,Chicken,Egg",image:#imageLiteral(resourceName: "sandwich5"),rating:"rating: 3.5",rupees:"Rs:200"),SandwichModel(title:"Club Sandwich",city:"Mayo,Chicken,Egg",image:#imageLiteral(resourceName: "sandwich6"),rating:"rating: 3.5",rupees:"Rs:200")]
        
        friData =  [FriesModel(title:"Garlic Mayo Fries",city:"Garlic Mayo,Spices",image:#imageLiteral(resourceName: "fries"),rating:"rating: 4.9",rupees:"Rs:100")]
    
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

