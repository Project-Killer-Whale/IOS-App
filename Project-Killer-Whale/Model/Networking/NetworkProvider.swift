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
    let manager = Alamofire.Session.default
    
    public func httpRequest(url: String, method: HTTPMethod, success: @escaping (_ beachResponse: BeachResponse) -> (), failure: @escaping (_ error: Error?) -> ()){
        manager.session.configuration.timeoutIntervalForRequest = 180
        
        manager.request(url, method: method).validate(statusCode: Constants.Network.okStatus).responseDecodable(of: BeachResponse.self){
            response in
            
         
            if let beachResponse = response.value{
                 success(beachResponse)
            } else{
                failure(response.error)
            }
            
        }
    }
}
