//
//  Client.swift
//  Retrolux
//
//  Created by Christopher Bryan Henderson on 10/8/16.
//  Copyright © 2016 Bryan. All rights reserved.
//

import Foundation

public struct ClientResponse {
    let data: Data?
    let response: URLResponse?
    let error: Error?
    
    var status: Int? {
        return (response as? HTTPURLResponse)?.statusCode
    }
}

public protocol Client: class {
    var interceptor: ((inout URLRequest) -> Void)? { get set }
    func makeAsynchronousRequest(request: URLRequest, callback: @escaping (_ response: ClientResponse) -> Void) -> Task
}