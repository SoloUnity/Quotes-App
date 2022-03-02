//
//  Quote.swift
//  Quotes
//
//  Created by Gordon Ng on 2022-03-01.
//

import Foundation

class Quote: Identifiable, Decodable{
    
    var id:UUID?
    var name:String
    var quotes:[String]
    var image:String
}
