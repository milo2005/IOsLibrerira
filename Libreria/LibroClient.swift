//
//  LibroClient.swift
//  Libreria
//
//  Created by Aplimovil on 18/10/17.
//  Copyright © 2017 Aplimovil. All rights reserved.
//

import Foundation
import Alamofire

class LibroClient{

    func getBooks(callback:@escaping (_ data:[Libro])->Void){
        Alamofire.request("http://192.168.128.52:3000/api/books", method: .get).responseJSON { (data) in
            
            let json =  data  as! [[String:Any]]
            var books:[Libro] = []
            for  obj in json {
                let book = Libro()
                book._id = obj["_id"] as! String
                book.autor = obj["autor"] as! String
                book.nombre = obj["nombre"] as! String
                book.paginas = obj["paginas"] as! Int
                books.append(book)
            }
            callback(books)
            
        }
    }

    func insertBook(book:Libro){
    }
}
