//
//  Car+CoreDataProperties.swift
//  Core_Data
//
//  Created by YE002 on 07/03/23.
//
//

import Foundation
import CoreData


extension Car {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Car> {
        return NSFetchRequest<Car>(entityName: "Car")
    }

    @NSManaged public var brand: String?
    @NSManaged public var color: String?

}

extension Car : Identifiable {

}
