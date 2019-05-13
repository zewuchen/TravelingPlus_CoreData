//
//  Destination+CoreDataProperties.swift
//  TravelingPlus - CoreData
//
//  Created by Zewu Chen on 13/05/19.
//  Copyright © 2019 Zewu Chen. All rights reserved.
//
//

import Foundation
import CoreData


extension Destination {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Destination> {
        return NSFetchRequest<Destination>(entityName: "Destination")
    }

    @NSManaged public var name: String?
    @NSManaged public var info1: String?
    @NSManaged public var info2: String?
    @NSManaged public var info3: String?
    @NSManaged public var info4: String?
    @NSManaged public var info5: String?
    @NSManaged public var info6: String?
    @NSManaged public var info7: String?
    @NSManaged public var info8: String?
    @NSManaged public var info9: String?
    @NSManaged public var info10: String?
    @NSManaged public var title1: String?
    @NSManaged public var title2: String?
    @NSManaged public var title3: String?
    @NSManaged public var subtitle1: String?
    @NSManaged public var subtitle2: String?
    @NSManaged public var subtitle3: String?
    @NSManaged public var text1: String?
    @NSManaged public var text2: String?
    @NSManaged public var text3: String?

}
