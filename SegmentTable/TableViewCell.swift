//
//  TableViewCell.swift
//  SegmentTable
//
//  Created by HigherVisibility on 04/12/2019.
//  Copyright © 2019 ahmedHigherVisibility. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var titlelbl: UILabel!
    @IBOutlet weak var citylbl: UILabel!
    @IBOutlet weak var ratinglbl: UILabel!
    @IBOutlet weak var rupeeslbl: UILabel!
    
    var burModel:BurgerModel!{
        didSet{
            titlelbl.text = burModel.title
            citylbl.text = burModel.city
            img.image = burModel.image
            ratinglbl.text = burModel.rating
            rupeeslbl.text = burModel.rupees
            
        }
    }
    var pizModel:PizzaModel!{
           didSet{
               titlelbl.text = pizModel.title
               citylbl.text = pizModel.city
               img.image = pizModel.image
               ratinglbl.text = pizModel.rating
           rupeeslbl.text = pizModel.rupees
           }
       }
    var sandModel:SandwichModel!{
           didSet{
               titlelbl.text = sandModel.title
               citylbl.text = sandModel.city
               img.image = sandModel.image
               ratinglbl.text = sandModel.rating
            rupeeslbl.text = sandModel.rupees
           }
       }
    var friModel:FriesModel!{
           didSet{
               titlelbl.text = friModel.title
               citylbl.text = friModel.city
               img.image = friModel.image
               ratinglbl.text = friModel.rating
        rupeeslbl.text = friModel.rupees
           }
       }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }

}
