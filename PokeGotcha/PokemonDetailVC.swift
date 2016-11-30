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

     
     @IBOutlet weak var evoLbl: UILabel!
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

     

     override func viewDidLoad() {
        super.viewDidLoad()
     
          nameLbl.text = pokemon.name.capitalized
          
          let img = UIImage(named: "\(pokemon.pokedexId)")
          mainImg.image = img
          currentEvoImg.image = img
          pokedexLbl.text = "\(pokemon.pokedexId)"
          
          
          
          pokemon.downloadPokemonDetail {
               //Whatever we write will only be called after the network call is completed!
               
               print("Did arrive here")
               
          self.updateUI()
          
          } 
    }
    
    func updateUI() {
    
          baseAttackLbl.text = pokemon.attack
          defenceLbl.text = pokemon.defense
          heightLbl.text = pokemon.height
          weightLbl.text = pokemon.weight
          typeLbl.text = pokemon.type
          descriptionLbl.text = pokemon.description
     
     
          if pokemon.nextEvolutionId == "" {
               evoLbl.text = "No Evolutions"
               nextEvoImg.isHidden = true
               
     } else {
               
               nextEvoImg.isHidden = false
               nextEvoImg.image = UIImage(named: pokemon.nextEvolutionId)
               let str = "Next Evolution: \(pokemon.nextEvolutionName) - LVL \(pokemon.nextEvolutionLevel)"
               evoLbl.text = str
               
     }
     
     
     
     
     
     }

     @IBAction func backBtnPressed(_ sender: UIButton) {
     
     dismiss(animated: true, completion: nil)
     
     }
     
}
