//
//  ButtonEx.swift
//  SwiftUITutorial
//
//  Created by Tan Huynh T. VN.Danang on 3/7/22.
//

import SwiftUI

struct ButtonViewEx: View {
    // @State theo dõi trạng thái và tự động cập nhật cho Text
    @State var count: Int = 0
    var body: some View {
        VStack {
            Text("Count: \(count)")
                .font(.title)
                .foregroundColor(.red)
            Button {
                count += 1
            } label: {
                Image(systemName: "clock")
                Text("Tap me!!!")
                Text("Subtitle!")
//                    .foregroundColor(.white)
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
        }
    }
}

struct ButtonViewEx_Previews: PreviewProvider {
    static var previews: some View {
        ButtonViewEx()
    }
}
