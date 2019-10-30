//
//  WebView.swift
//  SwiftUITalk
//
//  Created by Stefan Kofler on 10.10.19.
//  Copyright © 2019 QuickBird Studios GmbH. All rights reserved.
//

import SwiftUI
import UIKit
import WebKit

struct WebView: UIViewRepresentable {
    typealias UIViewType = WKWebView

    let htmlString: String
    let baseURL: URL?

    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
        WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        uiView.loadHTMLString(htmlString, baseURL: baseURL)
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(htmlString: "<span>Hello World</span>", baseURL: nil)
    }
}
