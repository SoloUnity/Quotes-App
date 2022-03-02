//
//  DataService.swift
//  Quotes
//
//  Created by Gordon Ng on 2022-03-01.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Quote] {
        // Parse local json file
        
        // Get url path to the json file
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        // Check if pathString is not nil, otherwise
        guard pathString != nil else{
            return [Quote]()
        }
        
        
        // Creates url object
        let url = URL(fileURLWithPath: pathString!)
        
        // Create a data object
        do{
            let data = try Data(contentsOf: url)
            
            // Decode with JSON decoder
            let decoder = JSONDecoder()
            
            do{
                let quoteData = try decoder.decode([Quote].self , from: data)
                
                // Add unique IDs
                for item in quoteData{
                    item.id = UUID()
                }
                // Return the recipes
                return quoteData
            }
            catch{
                print(error)
            }
        }
        catch{
            print(error)
        }
        return [Quote]()
    }
}
