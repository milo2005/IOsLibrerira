//
//  LibroTableViewCell.swift
//  Libreria
//
//  Created by Aplimovil on 16/10/17.
//  Copyright © 2017 Aplimovil. All rights reserved.
//

import UIKit

class LibroTableViewCell: UITableViewCell {

    @IBOutlet var name:UILabel!
    @IBOutlet var author:UILabel!
    @IBOutlet var pag:UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func deleteBook(_ sender:UIButton){
    }

}
