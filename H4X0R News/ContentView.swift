//
//  ContentView.swift
//  H4X0R News
//
//  Created by xt w on 2024/8/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            List(posts){post in
                Text(post.title)
            }.navigationBarTitle("H4X0R NEWS")
        }

    }
}

#Preview {
    ContentView()
}

struct Post: Identifiable{
    let id: String;
    let title: String;
}

let posts = [
    Post(id: "1", title: "hello"),
    Post(id: "2", title: "bbb"),
    Post(id: "3", title: "aaa"),
]
