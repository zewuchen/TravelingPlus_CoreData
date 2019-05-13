//
//  Country.swift
//  TravelingPlus - CoreData
//
//  Created by Zewu Chen on 13/05/19.
//  Copyright © 2019 Zewu Chen. All rights reserved.
//

import Foundation

typealias Countries = [CountryData]

struct CountryData: Codable {
    public var name: String?
    public var documentsAdults: String?
    public var documentsMinors: String?
    public var location1: String?
    public var procedure: String?
    public var location2: String?
    public var cost: String?
    public var vality: String?
    public var others: String?
}
