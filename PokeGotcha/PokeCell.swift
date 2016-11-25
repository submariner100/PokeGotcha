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
     
     // Rounded the corners in a collectionView Cell 50 5.0
     
     required init?(coder aDecoder: NSCoder) {
          super.init(coder: aDecoder)
          
          layer.cornerRadius = 5.0
          
     }
     
     func configureCell(_ pokemon: Pokemon) {
          
          self.pokemon = pokemon
          
          nameLbl.text = self.pokemon.name.capitalized // swift 3.0
          thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
          
     }

    
}
