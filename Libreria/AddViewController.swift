//
//  AddViewController.swift
//  Libreria
//
//  Created by Aplimovil on 16/10/17.
//  Copyright © 2017 Aplimovil. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet var name:UITextField!
    @IBOutlet var author:UITextField!
    @IBOutlet var pag:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveBook(){
        let book:Libro = Libro()
        book.nombre = name.text!
        book.autor = author.text!
        book.paginas = Int(pag.text!)
    }
    
}
