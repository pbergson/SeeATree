//
//  AppCoordinator.swift
//  SeeATree
//
//  Created by Pamela Bergson on 3/10/18.
//  Copyright © 2018 Bergson. All rights reserved.
//

import UIKit
import CoreData

class AppCoordinator {
    
    private let navigationController: UINavigationController
    private let persistentStoreContainer: NSPersistentContainer
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        
        persistentStoreContainer = NSPersistentContainer(name: "SeeATree")
        
        persistentStoreContainer.loadPersistentStores { (_, maybeError) in
            if (maybeError != nil) {
                assertionFailure("couldn't load persistent stores")
            }
        }
        
        
    }
}

