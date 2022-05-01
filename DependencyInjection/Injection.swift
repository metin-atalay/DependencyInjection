//
//  Injection.swift
//  DependencyInjection
//
//  Created by Metin Atalay on 1.05.2022.
//

import Foundation
import Accessibility

public protocol InjectionKey {
    associatedtype Value
    
    static var currentValue: Self.Value {get set}
}

struct NetworkProviderKey: InjectionKey {
    static var currentValue: NetworkProviding = NetworkProvider()
}

struct RouterProviderKey: InjectionKey {
    static var currentValue: RouterProviding = RouterTesterPage()
}

extension InjectedValues {
    var networkProvider: NetworkProviding {
        get { Self[NetworkProviderKey.self]}
        set { Self[NetworkProviderKey.self] = newValue}
    }
}

extension InjectedValues {
    var routerTesterPage: RouterProviding {
        get { Self[RouterProviderKey.self]}
        set { Self[RouterProviderKey.self] = newValue}
    }
}


struct InjectedValues {
    
    private static var current = InjectedValues()
    
    static subscript<K>(key: K.Type) -> K.Value where K : InjectionKey {
        get { key.currentValue }
        set { key.currentValue = newValue }
    }
    
    static subscript<T>(_ keyPath: WritableKeyPath<InjectedValues, T>) -> T {
        get { current[keyPath: keyPath] }
        set { current[keyPath: keyPath] = newValue }
    }
}

@propertyWrapper
struct Injected<T> {
    private let keyPath: WritableKeyPath<InjectedValues, T>
    var wrappedValue: T {
        get { InjectedValues[keyPath] }
        set { InjectedValues[keyPath] = newValue }
    }
    
    init(_ keyPath: WritableKeyPath<InjectedValues, T>) {
        self.keyPath = keyPath
    }
}
