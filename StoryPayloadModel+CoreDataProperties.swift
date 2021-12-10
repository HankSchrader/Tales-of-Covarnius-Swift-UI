//
//  StoryPayloadModel+CoreDataProperties.swift
//  Tales-of-Covarnius-Swift-UI (iOS)
//
//  Created by Erik Mikac on 12/8/21.
//
//

import Foundation
import CoreData


extension StoryPayloadModel {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<StoryPayloadModel> {
        return NSFetchRequest<StoryPayloadModel>(entityName: "StoryPayloadModel")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var decision1: String?
    @NSManaged public var decision2: String?
    @NSManaged public var text: String?
    @NSManaged public var image: String?
    @NSManaged public var firstChoiceId: UUID?
    @NSManaged public var secondChoiceId: UUID?
    


}

extension StoryPayloadModel : Identifiable {

}
