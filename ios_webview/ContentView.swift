//
//  ContentView.swift
//  ios_webview
//
//  Created by Sébastien Vermandele on 2023-05-25.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @State private var showWebView = false
    private let urlString: String = "https://registre.nagano.ca"
    
    var body: some View {
        VStack(spacing: 40) {
            WebView(url: Foundation.URL(string: urlString)!)
        }
    }
}

struct WebView: UIViewRepresentable {
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
