//
//  DragRectangle.swift
//  SwiftUITalk
//
//  Created by Stefan Kofler on 30.10.19.
//  Copyright © 2019 QuickBird Studios GmbH. All rights reserved.
//

import SwiftUI

struct DragRectangle: View {

    @State private var translation: CGSize = .zero
    @State private var isDragging = false

    var body: some View {
        BockView()
            .scaleEffect(isDragging ? 1.3 : 1)
            .offset(translation)
            .foregroundColor(
                Color(
                    red: Double(abs(translation.width) / (UIScreen.main.bounds.width / 2)),
                    green: Double(abs(translation.height) / (UIScreen.main.bounds.height / 2)),
                    blue: 1
                )
            )
            .animation(translation != .zero ? .linear(duration: 0) : .easeInOut)
            .gesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { value in
                        self.translation = value.translation
                        self.isDragging = true
                    }
                    .onEnded { value in
                        self.translation = .zero
                        self.isDragging = false
                    }
            )
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
        DragRectangle()
    }
}
