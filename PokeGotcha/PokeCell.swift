//
//  PokeCell.swift
//  PokeGotcha
//
//  Created by Macbook on 24/11/2016.
//  Copyright © 2016 Chappy-App. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {

     @IBOutlet weak var thumbImg: UIImageView!
     @IBOutlet weak var nameLbl: UILabel!
     
     var pokemon: Pokemon!
     
     func configureCell(pokemon: Pokemon) {
          
          self.pokemon = pokemon
          
          nameLbl.text = self.pokemon.name.capitalized // swift 3.0
          thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
          
     }

    
}
