//
//  DragRectangle.swift
//  SwiftUITalk
//
//  Created by Stefan Kofler on 30.10.19.
//  Copyright © 2019 QuickBird Studios GmbH. All rights reserved.
//

import SwiftUI

struct DragRectangleView: View {

    @State private var translation: CGSize = .zero
    @State private var isDragging = false

    var body: some View {
        BockView()
    }

}

struct BockView: View {

    var body: some View {
        Rectangle()
            .cornerRadius(16)
            .frame(width: 100, height: 100)
    }

}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        DragRectangleView()
    }
}
