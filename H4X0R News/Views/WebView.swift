//
//  WebView.swift
//  H4X0R News
//
//  Created by xt w on 2024/8/31.
//
import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable{
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
