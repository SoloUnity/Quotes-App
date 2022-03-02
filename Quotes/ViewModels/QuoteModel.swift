//
//  QuoteModel.swift
//  Quotes
//
//  Created by Gordon Ng on 2022-03-01.
//

import Foundation

class QuoteModel: ObservableObject {
     
    @Published var quotes = [Quote]()
    
    init() {
        self.quotes = DataService.getLocalData()
    }
}
