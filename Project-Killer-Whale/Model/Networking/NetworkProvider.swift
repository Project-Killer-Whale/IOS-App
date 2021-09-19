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
    
    public func httpRequest(url: String, method: HTTPMethod){
        
        AF.request(url, method: method).validate(statusCode: Constants.Network.okStatus).responseDecodable(of: BeachResponse.self){
            response in
            
         
            if let beachResponse = response.value{
                print(beachResponse.features?[0].geometry?.x)
                    
            } else{
                print(response.error)
            }
            
        }
    }
}
