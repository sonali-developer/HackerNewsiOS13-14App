//
//  WebView.swift
//  HackerNewsiOS-13-14
//
//  Created by Sonali Patel on 12/1/20.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable, View {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
            if let safeString = urlString {
                if let url = URL(string: safeString) {
                    let request = URLRequest(url: url)
                    uiView.load(request)
                }
            }
    }
}
