//
//  Router.swift
//  DependencyInjection
//
//  Created by Metin Atalay on 1.05.2022.
//

import Foundation


protocol RouterProviding {
    func createPage(screenName: String)
}

class RouterProvider: RouterProviding {
    func createPage(screenName: String) {
        print("\(screenName) screen opened")
    }
}

class RouterTesterPage : RouterProviding {
    func createPage(screenName: String) {
        print("opened the test page")
    }
}

class RouterController {
    @Injected(\.routerTesterPage) var testPageProvider: RouterProviding
    
    
    func test_StartUITest () {
        testPageProvider.createPage(screenName: "Main")
    }
    
}
