//
//  ContentView.swift
//  HackerNewsiOS-13-14
//
//  Created by Sonali Patel on 11/30/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.posts) {
                post in
                NavigationLink(
                    destination: DetailView(url: post.url)) {
                        HStack {
                            Text("\(post.points)")
                            Text(post.title)
                        }
                    }
            }
            .navigationBarTitle("Hacker News 2020")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let posts = [
//    Post(id: "1", text: "Hello"),
//    Post(id: "2", text: "Hello1"),
//    Post(id: "3", text: "Hello2"),
//    Post(id: "4", text: "Hello3"),
//    Post(id: "5", text: "Hello4")
//]

