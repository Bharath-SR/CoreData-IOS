import Foundation
import CoreData

class CoreDataManager{
    
    static let shared:CoreDataManager=CoreDataManager()
    
    lazy var context = persistentContainer.viewContext
    
    private init(){
        
    }

    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Core_Data")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    func saveContext () {
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    func save(car: Car){
        
    }
    
    func fetch() ->[Car]?{
        return []
    }
    
    func delete(car: Car)->Bool{
        return true
    }
    
    func update(car: Car)->Bool?{
        return true
    }

}
