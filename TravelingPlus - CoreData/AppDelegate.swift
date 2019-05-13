//
//  AppDelegate.swift
//  TravelingPlus - CoreData
//
//  Created by Zewu Chen on 13/05/19.
//  Copyright © 2019 Zewu Chen. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let defaults = UserDefaults()
        let opened = defaults.bool(forKey: "opened")
        
        if !opened{
            
            //Inserção de países
            do {
                if let path = Bundle.main.path(forResource: "country", ofType: "json", inDirectory: nil)
                {
                    let url = URL(fileURLWithPath: path)
                    let jsonData = try Data(contentsOf: url)
                    let countries = try JSONDecoder().decode(Countries.self, from: jsonData)
                    
                    for i in 0...countries.count-1{
                        let registry = NSEntityDescription.insertNewObject(forEntityName: "Country", into: self.persistentContainer.viewContext) as! Country
                        
                        registry.name = countries[i].name
                        registry.documentsAdults = countries[i].documentsAdults
                        registry.documentsMinors = countries[i].documentsMinors
                        registry.location1 = countries[i].location1
                        registry.procedure = countries[i].procedure
                        registry.location2 = countries[i].location2
                        registry.cost = countries[i].cost
                        registry.vality = countries[i].vality
                        registry.others = countries[i].others
                        registry.visa = countries[i].visa
                        registry.vaccines = countries[i].vaccines
                        
                        self.saveContext()
                    }
                }
            } catch {
                print("Erro ao inserir os dados de Países")
            }
            
            //Inserção de Destination
            do {
                if let path = Bundle.main.path(forResource: "destination", ofType: "json", inDirectory: nil)
                {
                    let url = URL(fileURLWithPath: path)
                    let jsonData = try Data(contentsOf: url)
                    let destinations = try JSONDecoder().decode(Destinations.self, from: jsonData)
                    
                    for i in 0...destinations.count-1{
                        let registry = NSEntityDescription.insertNewObject(forEntityName: "Destination", into: self.persistentContainer.viewContext) as! Destination
                        
                        registry.name = destinations[i].name
                        registry.infoText1 = destinations[i].infoText1
                        registry.infoText2 = destinations[i].infoText2
                        registry.infoText3 = destinations[i].infoText3
                        registry.infoText4 = destinations[i].infoText4
                        registry.infoText5 = destinations[i].infoText5
                        registry.infoText6 = destinations[i].infoText6
                        registry.infoText7 = destinations[i].infoText7
                        registry.infoText8 = destinations[i].infoText8
                        registry.infoText9 = destinations[i].infoText9
                        registry.infoText10 = destinations[i].infoText10
                        registry.infoTitle1 = destinations[i].infoTitle1
                        registry.infoTitle2 = destinations[i].infoTitle2
                        registry.infoTitle3 = destinations[i].infoTitle3
                        registry.infoTitle4 = destinations[i].infoTitle4
                        registry.infoTitle5 = destinations[i].infoTitle5
                        registry.infoTitle6 = destinations[i].infoTitle6
                        registry.infoTitle7 = destinations[i].infoTitle7
                        registry.infoTitle8 = destinations[i].infoTitle8
                        registry.infoTitle9 = destinations[i].infoTitle9
                        registry.infoTitle10 = destinations[i].infoTitle10
                        registry.warningTitle1 = destinations[i].warningTitle1
                        registry.warningSubtitle1 = destinations[i].warningSubtitle1
                        registry.warningText1 = destinations[i].warningText1
                        registry.warningTitle2 = destinations[i].warningTitle2
                        registry.warningSubtitle2 = destinations[i].warningSubtitle2
                        registry.warningText2 = destinations[i].warningText2
                        registry.warningTitle3 = destinations[i].warningTitle3
                        registry.warningSubtitle3 = destinations[i].warningSubtitle3
                        registry.warningText3 = destinations[i].warningText3
                        
                        self.saveContext()
                    }
                }
            } catch {
                print("Erro ao inserir os dados de Destination")
            }
            
            defaults.set(true, forKey: "opened")
        }
        
        //Testes
//        do {
//            var registros:[Destination] = []
//            registros = try self.persistentContainer.viewContext.fetch(Destination.fetchRequest())
//
//            print(registros[1].name!, " ", registros[1].infoText1!, " ", registros[1].infoTitle1!)
//        } catch {
//            print("Não deu pra encontrar os registros")
//        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
        self.saveContext()
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
        */
        let container = NSPersistentContainer(name: "TravelingPlus___CoreData")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                 
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}

