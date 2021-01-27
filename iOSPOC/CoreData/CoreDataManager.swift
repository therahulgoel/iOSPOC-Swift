//
//  CoreDataManager.swift
//  iOSPOC
//
//  Created by Rahul Goel on 20/06/19.
//  Copyright © 2019 Rahul Goel. All rights reserved.
//

import CoreData
import Foundation

final class CoreDataManager{
    
    static var shared:CoreDataManager = CoreDataManager() //Singleton Boject
    
    private init(){
    }
    
    lazy var persistentContainer: NSPersistentContainer = {
        
        let modelURL = Bundle(for: CoreDataManager.self).url(forResource: "iOSPOC", withExtension: "momd")
        
        var model: NSManagedObjectModel? = nil
        if let modelCheck = modelURL.flatMap(NSManagedObjectModel.init) {
            model = modelCheck
            print("Fail to load the trigger model!")
        }
        
        let container = NSPersistentContainer(name: "iOSPOC", managedObjectModel: model!)
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            guard let error = error as NSError? else { return }
            print("persistent store container initialization error \(error)")
            //Decide the merge Policy
            self.persistentContainer.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
            self.persistentContainer.viewContext.undoManager = nil
            self.persistentContainer.viewContext.shouldDeleteInaccessibleFaults = true
            
        })
        return container
    }()

    lazy var privateContext:NSManagedObjectContext  = persistentContainer.newBackgroundContext()
    
    func saveContext () {
        //To save Private Context changes If any
        if privateContext.hasChanges{
            do{
                try privateContext.save()
            }catch{
                print(error.localizedDescription)
            }
        }
        //To save Main Context changes If any
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func documentDirectoryPath()->String{
        let paths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
        return paths[0]
    }
    
    func persistentContainerDefaultURL()->URL{
        return NSPersistentContainer.defaultDirectoryURL()
    }
    
    func deleteCoreDataStack(){
        let storeURL = self.persistentContainerDefaultURL().appendingPathComponent("iOSPOC.sqlite")
            do {
                try FileManager.default.removeItem(at: storeURL)
            }catch{
                //Delete Failed
                return
            }
        
            //To Delete -shm and -wal file
            let _ = try? FileManager.default.removeItem(at: self.persistentContainerDefaultURL().appendingPathComponent("iOSPOC.sqlite-shm"))
            let _ = try? FileManager.default.removeItem(at: self.persistentContainerDefaultURL().appendingPathComponent("iOSPOC.sqlite-wal"))
    }
}
