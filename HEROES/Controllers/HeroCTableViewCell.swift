//
//  HeroCTableViewCell.swift
//  HEROES
//
//  Created by Kevin willian Jorge souza on 12/03/21.
//

import UIKit

class HeroCTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imHero: UIImageView!
    @IBOutlet weak var lbNameHero: UILabel!
    @IBOutlet weak var lbPower: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    func prepare(with hr: HeroesModel) {
        imHero.image = UIImage(named: hr.hero)
        lbNameHero.text = hr.hero
        lbPower.text = hr.power
    }
    
}
