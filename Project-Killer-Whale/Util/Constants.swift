//
//  Constants.swift
//  Project-Killer-Whale
//
//  Created by Javier Plaza Sisqués on 17/9/21.
//

import Foundation

struct Constants{
    
    struct App {
        static let appName: String = "Project Killer Whale"
    }
    
    struct Map {
        //Default zoom for the map
        static let latitudeDelta: Double = 10
        static let longitudeDelta: Double = 10
    }
    
    struct Network {
        static let okStatus = 200...299
        static let numberOfBeaches = 1...3200
        
        static func beachInfo(id: Int) -> String{
            return "https://services1.arcgis.com/nCKYwcSONQTkPA4K/arcgis/rest/services/Playas_2015/FeatureServer/0/query?where=OBJECTID%20%3D%20\(id)&outFields=*&outSR=4326&f=json"
        }
    }
}
