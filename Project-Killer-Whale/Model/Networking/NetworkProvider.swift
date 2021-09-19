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
    
    public func httpRequest(url: String, method: HTTPMethod, success: @escaping (_ beachResponse: BeachResponse) -> (), failure: @escaping (_ error: Error?) -> ()){
        
        AF.request(url, method: method).validate(statusCode: Constants.Network.okStatus).responseDecodable(of: BeachResponse.self){
            response in
            
         
            if let beachResponse = response.value{
                 success(beachResponse)
            } else{
                failure(response.error)
            }
            
        }
    }
}
