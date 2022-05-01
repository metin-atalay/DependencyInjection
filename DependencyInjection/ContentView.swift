//
//  ContentView.swift
//  DependencyInjection
//
//  Created by Metin Atalay on 1.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Text("Why would you need dependency injection?")
                    .padding()
                    .font(.headline)
                    .foregroundColor(.red)
                    
                
                Text("*Mocking data for tests should be easy        \n\n*Readability should be maintained by staying close to Swift’s standard APIs          \n\n*Compile-time safety is prefered to prevent hidden crashes. If the app builds, we know all dependencies are configured correctly          \n\n*Big initialisers as a result of injecting dependencies should be avoided          \n\n*The AppDelegate should not be the place to define all shared instances          \n\n*No 3rd party dependency to prevent potential learning curves          \n\n*Force unwrapping shouldn’t be needed          \n\n*Defining standard dependency should be possible without exposing private/internal types within packages          \n\n*The solution should be defined in a package that can be shared across libraries for reusability")
                    .padding()
                    .foregroundColor(.white)
                    .font(.system(size: 14,weight: .medium, design: .rounded))
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
