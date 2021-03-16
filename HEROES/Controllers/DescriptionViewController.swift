//
//  DescriptionViewController.swift
//  HEROES
//
//  Created by Kevin willian Jorge souza on 11/03/21.
//

import UIKit

class DescriptionViewController: UIViewController {
    
    @IBOutlet weak var imHero: UIImageView!
    @IBOutlet weak var lbRealName: UILabel!
    @IBOutlet weak var lbAge: UILabel!
    @IBOutlet weak var lbDescription: UILabel!
    @IBOutlet weak var lbMovies: UILabel!
    @IBOutlet weak var lbHqs: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var heroes: HeroesModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.backButtonTitle = "SuperHeroes"
        title = "\(heroes.hero)"
        imHero.image = UIImage(named: "\(heroes.hero).png")
        lbRealName.text = "Real Name: \(heroes.realName)"
        lbAge.text = "Age: \(heroes.age)"
        lbDescription.text = "Description: \(heroes.description)"
        prepare(with: heroes.appears.first!)
        self.scrollView.showsVerticalScrollIndicator = false
    }
    func prepare(with appear: Appears) {
        lbMovies.text = "Movies: \(appear.Movies)"
        lbHqs.text = "Hqs: \(appear.Hqs)"
    }
}
