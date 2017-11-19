//
//  ViewController.swift
//  Libreria
//
//  Created by Aplimovil on 16/10/17.
//  Copyright © 2017 Aplimovil. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet var table:UITableView!
    var data:[Libro] = []
    let client:LibroClient = LibroClient()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        client.getBooks { books in
            self.data = books
            self.table.reloadData()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Datasource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:LibroTableViewCell = tableView.dequeueReusableCell(withIdentifier: "celda") as! LibroTableViewCell
        let libro = data[indexPath.row]
        cell.name.text = libro.nombre!
        cell.author.text = libro.autor!
        cell.pag.text = "Pag. \(libro.paginas!)"
        return cell
    }


}

