//
//  ContentView.swift
//  H4X0R News  SwiftUI
//
//  Created by 🧔🏻Alikhan Batchaev on 22.02.2020.
//  Copyright © 2020 Alikhan Batchaev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.post) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//let posts = [
//
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Привет"),
//    Post(id: "3", title: "Hola")
//]
