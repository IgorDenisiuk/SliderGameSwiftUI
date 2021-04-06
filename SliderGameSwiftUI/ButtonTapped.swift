//
//  ButtonTapped.swift
//  SliderGameSwiftUI
//
//  Created by Igor Denisiuk on 6.04.21.
//

import SwiftUI

struct ButtonTapped: View {
    
    @Binding var showAlert: Bool
    
    var title: String
    var action: () -> Void
    var score: Int
    
    var body: some View {
        Button(action: action) {
            Text("\(title)")
                .font(.title2)
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Your Score"), message: Text("\(score)"))
        }
    }
}

struct ButtonTapped_Previews: PreviewProvider {
    static var previews: some View {
        ButtonTapped(showAlert: .constant(false), title: "", action: {}, score: 50)
    }
}
