//
//  TapFeedbackSwiftUI.swift
//  Storyweaver
//
//  Created by Wita Dewisari Tasya on 21/06/23.
//

import SwiftUI

struct TapFeedbackView: View {
    @State private var circlePosition: CGPoint = .zero
    @State private var isTapped: Bool = false
    @GestureState private var tapLocation: CGPoint = .zero
    
    var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            //Replace Circle with Asset Later
            Circle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
                .position(circlePosition)
                .opacity(isTapped ? 0.5 : 0.0)
                .animation(.easeInOut(duration: 0.01))
            
            //Add UI View Here
            
            GeometryReader { geometry in
                Color.clear
                    .contentShape(Rectangle())
                    .gesture(
                        DragGesture(minimumDistance: 0)
                            .updating($tapLocation) { value, state, _ in
                                state = value.location
                            }
                            .onChanged { gesture in
                                isTapped = true
                                let location = gesture.location
                                circlePosition = CGPoint(x: location.x, y: location.y)
                            }
                            .onEnded { _ in
                                withAnimation {
                                    isTapped = false
                                }                            }
                    )
            }
        }
    }
}

struct TapFeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        TapFeedbackView()
    }
}

