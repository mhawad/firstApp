//
//  Tip.swift
//  Trekr
//
//  Created by Mirna Sokar on 7/26/22.
//

import Foundation

struct Tip: Decodable {
    
    let text: String
    let children: [Tip]?
}
