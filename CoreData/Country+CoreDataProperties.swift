//
//  Country+CoreDataProperties.swift
//  TravelingPlus - CoreData
//
//  Created by Zewu Chen on 13/05/19.
//  Copyright © 2019 Zewu Chen. All rights reserved.
//
//

import Foundation
import CoreData


extension Country {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Country> {
        return NSFetchRequest<Country>(entityName: "Country")
    }

    @NSManaged public var cost: String?
    @NSManaged public var documentsAdults: String?
    @NSManaged public var documentsMinors: String?
    @NSManaged public var location1: String?
    @NSManaged public var location2: String?
    @NSManaged public var name: String?
    @NSManaged public var others: String?
    @NSManaged public var procedure: String?
    @NSManaged public var vality: String?
    @NSManaged public var visa: String?
    @NSManaged public var vaccines: String?

}
