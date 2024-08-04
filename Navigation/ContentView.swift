//
//  ContentView.swift
//  Navigation
//
//  Created by Mayur  on 01/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var title = "SwiftUI"
    var body: some View {
        NavigationStack{
            List(1..<100){ i in
                Text("\(i)")
            }
            HStack{
                Spacer()
                Button("Tap me"){
                    title = "Gmail"
                }
                .padding()
            }
            .padding()
                .navigationTitle($title)
        }
    }
}

#Preview {
    ContentView()
}
