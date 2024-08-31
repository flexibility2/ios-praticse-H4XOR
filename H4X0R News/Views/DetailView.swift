//
//  DetailView.swift
//  H4X0R News
//
//  Created by xt w on 2024/8/31.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}




