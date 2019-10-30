//
//  PostDetailView.swift
//  SwiftUITalk
//
//  Created by Stefan Kofler on 10.10.19.
//  Copyright © 2019 QuickBird Studios GmbH. All rights reserved.
//

import SwiftUI

struct PostDetailView: View {
    let post: Post

    var body: some View {
        Text("Hello World!")
    }

}

struct PostDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PostDetailView(post: DataService().getPosts().first!)
        }
    }
}
