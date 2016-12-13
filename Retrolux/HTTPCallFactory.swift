//
//  HTTPCallFactory.swift
//  Retrolux
//
//  Created by Christopher Bryan Henderson on 10/8/16.
//  Copyright © 2016 Bryan. All rights reserved.
//

import Foundation

public struct HTTPCallFactory: CallFactory {
    public init() {
    
    }
    
    public func makeCall<T>(start: @escaping (@escaping (Response<T>) -> Void) -> Void, cancel: @escaping () -> Void) -> Call<T> {
        return HTTPCall(start: start, cancel: cancel)
    }
}
