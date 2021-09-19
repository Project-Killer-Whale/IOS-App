//
//  HttpRequest.swift
//  Project-Killer-Whale
//
//  Created by Javier Plaza Sisqués on 19/9/21.
//

import Foundation
import Alamofire

class NetworkProvider {
    
    static let shared = NetworkProvider()
    
    private func httpRequest(url: String, method: HTTPMethod) -> String{
        AF.request(url, method: method).validate(statusCode: Constants.Network.okStatus)
        return "HTTP_Request"
    }
}
