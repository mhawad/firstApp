//
//  Locations.swift
//  Trekr
//
//  Created by Mirna Sokar on 7/26/22.
//

import Foundation


//we want to load json file once and share it everywhere
// observable is watching for changes
class Locations: ObservableObject {
    
    let places: [Location]
    
    var primary: Location {
        places[0]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
    
    
    
}
