//
//  ContentView.swift
//  H4X0R News
//
//  Created by xt w on 2024/8/31.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            
            List(networkManager.posts){post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }.navigationBarTitle("H4X0R NEWS")
        }.onAppear{
            self.networkManager.fetchData()
        }

    }
}
	
#Preview {
    ContentView()
}


//let posts = [
//    Post(objectID: "1", points: 100, title: Title(value: "aaa"), url: Url(value: "https://example.com"))
//]
