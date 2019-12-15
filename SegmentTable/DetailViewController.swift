//
//  DetailViewController.swift
//  SegmentTable
//
//  Created by HigherVisibility on 08/12/2019.
//  Copyright © 2019 ahmedHigherVisibility. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var lblimg: UIImageView!
    @IBOutlet var lblname: UILabel!
    @IBOutlet var lblrecipe: UILabel!
    @IBOutlet var lblrating: UILabel!
    @IBOutlet var lblrupees: UILabel!
    
    var burData : BurgerModel?
    var pizData : PizzaModel?
    var sandData : SandwichModel?
    var friData : FriesModel?
    
    @IBAction func backbtn(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if burData?.dot == "."{
            lblimg.image = burData?.image
            lblname.text = burData?.title
            lblrecipe.text = burData?.city
            lblrating.text = burData?.rating
            lblrupees.text = burData?.rupees
            
        }
            
        else if pizData?.dot == "."{
            lblimg.image = pizData?.image
            lblname.text = pizData?.title
            lblrecipe.text = pizData?.city
            lblrating.text = pizData?.rating
            lblrupees.text = pizData?.rupees
        }
        else if sandData?.dot == "."{
            lblimg.image = sandData?.image
            lblname.text = sandData?.title
            lblrecipe.text = sandData?.city
            lblrating.text = sandData?.rating
            lblrupees.text = sandData?.rupees
        }
            
        else if friData?.dot == "."{
            lblimg.image = friData?.image
            lblname.text = friData?.title
            lblrecipe.text = friData?.city
            lblrating.text = friData?.rating
            lblrupees.text = friData?.rupees
        }
        
    }
    
}
