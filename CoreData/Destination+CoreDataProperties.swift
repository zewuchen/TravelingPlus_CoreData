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

    @NSManaged public var infoText1: String?
    @NSManaged public var infoText2: String?
    @NSManaged public var infoText3: String?
    @NSManaged public var infoText4: String?
    @NSManaged public var infoText5: String?
    @NSManaged public var infoText6: String?
    @NSManaged public var infoText7: String?
    @NSManaged public var infoText8: String?
    @NSManaged public var infoText9: String?
    @NSManaged public var infoText10: String?
    @NSManaged public var name: String?
    @NSManaged public var warningSubtitle1: String?
    @NSManaged public var warningSubtitle2: String?
    @NSManaged public var warningSubtitle3: String?
    @NSManaged public var warningText1: String?
    @NSManaged public var warningText2: String?
    @NSManaged public var warningText3: String?
    @NSManaged public var warningTitle1: String?
    @NSManaged public var warningTitle2: String?
    @NSManaged public var warningTitle3: String?
    @NSManaged public var infoTitle1: String?
    @NSManaged public var infoTitle2: String?
    @NSManaged public var infoTitle3: String?
    @NSManaged public var infoTitle4: String?
    @NSManaged public var infoTitle5: String?
    @NSManaged public var infoTitle6: String?
    @NSManaged public var infoTitle7: String?
    @NSManaged public var infoTitle8: String?
    @NSManaged public var infoTitle9: String?
    @NSManaged public var infoTitle10: String?

}
