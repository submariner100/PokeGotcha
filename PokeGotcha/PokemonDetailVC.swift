//
//  PokemonDetailVC.swift
//  PokeGotcha
//
//  Created by Macbook on 26/11/2016.
//  Copyright © 2016 Chappy-App. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

     var pokemon: Pokemon!

     
     @IBOutlet weak var nameLbl: UILabel!
     @IBOutlet weak var mainImg: UIImageView!
     @IBOutlet weak var descriptionLbl: UILabel!
     @IBOutlet weak var typeLbl: UILabel!
     @IBOutlet weak var defenceLbl: UILabel!
     @IBOutlet weak var heightLbl: UILabel!
     @IBOutlet weak var pokedexLbl: UILabel!
     @IBOutlet weak var weightLbl: UILabel!
     @IBOutlet weak var baseAttackLbl: UILabel!
     @IBOutlet weak var currentEvoImg: UIImageView!
     @IBOutlet weak var nextEvoImg: UIImageView!
     @IBOutlet weak var EvoImg: UILabel!
     

     override func viewDidLoad() {
        super.viewDidLoad()
     
          nameLbl.text = pokemon.name

       
    }

     @IBAction func backBtnPressed(_ sender: UIButton) {
     
     dismiss(animated: true, completion: nil)
     
     }
     
}
