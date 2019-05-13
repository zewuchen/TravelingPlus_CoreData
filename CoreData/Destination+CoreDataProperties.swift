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
    @NSManaged public var warningTitle1: String?
    @NSManaged public var warningTitle2: String?
    @NSManaged public var warningTitle3: String?
    @NSManaged public var warningSubtitle1: String?
    @NSManaged public var warningSubtitle2: String?
    @NSManaged public var warningSubtitle3: String?
    @NSManaged public var warningText1: String?
    @NSManaged public var warningText2: String?
    @NSManaged public var warningText3: String?

}
