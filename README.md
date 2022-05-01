### Dependency Injection without 3rd party library
Writing a solution using Swift features like static subscripts, extensions, and Property Wrappers

## Table of contents
* [General info](#general-info)

## General info
Dependency Injection is a software design pattern in which an object receives other instances that it depends on.
It’s a commonly used technique that allows reusing code, insert mocked data, and simplify testing.
	
	
```
 //FIRST EX
 class RouterController {
    @Injected(\.routerTesterPage) var testPageProvider: RouterProviding
    
    func test_StartUITest () {
        testPageProvider.createPage(screenName: "Main")
    }
}

 //SECOND EX
 struct NetworkDataController {
    @Injected(\.networkProvider) var networkProvider: NetworkProviding
    
    func performDataRequest() {
        networkProvider.requestData()
    }
}
```
