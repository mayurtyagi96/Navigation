//
//  ContentView.swift
//  Navigation
//
//  Created by Mayur  on 01/08/24.
//

import SwiftUI

struct DetailView: View {
    var number: Int
    var body: some View {
        
        Text("\(number)")
        
    }
    
    init(number: Int) {
        self.number = number
        print("\(number)")
    }
    
}

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List(0..<100){ i in
                NavigationLink("select \(i)", value: i)
            }
            .navigationDestination(for: Int.self) { ii in
                DetailView(number: ii)
            }
        }
    }
}

#Preview {
    ContentView()
}
