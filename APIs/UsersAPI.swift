//
// UsersAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class UsersAPI {
    /**
     Get person by Id
     
     - parameter userId: (path) ID of the person 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPersonById(userId: String, completion: @escaping ((_ error: Error?) -> Void)) {
        getPersonByIdWithRequestBuilder(userId: userId).execute { (response, error) -> Void in
            completion(error);
        }
    }


    /**
     Get person by Id
     - GET /user/{userId}
     - Get person by Id
     
     - parameter userId: (path) ID of the person 

     - returns: RequestBuilder<Void> 
     */
    open class func getPersonByIdWithRequestBuilder(userId: String) -> RequestBuilder<Void> {
        var path = "/user/{userId}"
        path = path.replacingOccurrences(of: "{userId}", with: "\(userId)", options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
