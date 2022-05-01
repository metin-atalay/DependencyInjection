//
//  Network.swift
//  DependencyInjection
//
//  Created by Metin Atalay on 1.05.2022.
//

/*

Writing a solution using Swift features like static subscripts, extensions, and Property Wrappers

*/

import Foundation

protocol NetworkProviding {
    func requestData()
}

struct NetworkProvider: NetworkProviding {
    func requestData() {
        print("Data requested using the Network Provider")
    }
}

struct MockedNetworkProvider: NetworkProviding {
    func requestData() {
        print("Data requested using the `MockedNetworkProvider`")
    }
}

struct NetworkDataController {
    @Injected(\.networkProvider) var networkProvider: NetworkProviding
    
    func performDataRequest() {
        networkProvider.requestData()
    }
}



