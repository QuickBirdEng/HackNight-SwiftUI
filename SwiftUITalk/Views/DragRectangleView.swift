//
//  DragRectangle.swift
//  SwiftUITalk
//
//  Created by Stefan Kofler on 30.10.19.
//  Copyright © 2019 QuickBird Studios GmbH. All rights reserved.
//

import SwiftUI

struct DragRectangleView: View {

    var body: some View {
        BlockView()
        // Exercise 3.1: Make BlockView draggable and follow your finger
        // Exercise 3.2: Animate only the movement back to the original position when lifting up your finger
        // Exercise 3.3: Add scaleEffect when Block is being moved
        // Exercise 3.4: Change the rectangles color based on its position

        // Hint 1: DragGesture and .offset are your friend
        // Hint 2: Use minimumDistance: 0 to react to touch events without movements as well
        // Hint 3: An animation duration of 0 can help you deactivate animations for specic usecases
    }

}

struct BlockView: View {

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
