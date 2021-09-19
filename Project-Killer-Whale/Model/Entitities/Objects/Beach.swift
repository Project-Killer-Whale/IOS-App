//
//  Beach.swift
//  Project-Killer-Whale
//
//  Created by Javier Plaza Sisqués on 19/9/21.
//

import Foundation

final class Beach{
    
    private var id: Int?
    private var info: BeachResponse?
    
    init(id: Int, info: BeachResponse) {
        self.id = id
        self.info = info
    }
}
