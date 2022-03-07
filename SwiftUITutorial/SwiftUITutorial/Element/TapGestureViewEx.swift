//
//  TapGestureViewEx.swift
//  SwiftUITutorial
//
//  Created by Tan Huynh T. VN.Danang on 3/7/22.
//

import SwiftUI

struct TapGestureViewEx: View {
    @State var red: Double = 1.0
    @State var green: Double = 1.0
    @State var blue: Double = 1.0

    var body: some View {
        Text("Tap me!")
            .font(.title)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(Color(red: red, green: green, blue: blue))
            .onTapGesture {
                red = Double.random(in: 0...1)
                green = Double.random(in: 0...1)
                blue = Double.random(in: 0...1)
            }
        HStack {
            Text("Tap me!!!")
                .frame(width: 100, height: 100, alignment: .center)
                .background(Color(red: red, green: green, blue: blue))
                .onTapGesture {
                    print("Tapppppppppp!")
                    red = Double.random(in: 0...1)
                    green = Double.random(in: 0...1)
                    blue = Double.random(in: 0...1)
                }
            Image(systemName: "clock")
                .onTapGesture(count: 2) {
                    print("Double tapppppppp!")
                }
        }
    }
}

struct TapGestureViewEx_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureViewEx()
    }
}
