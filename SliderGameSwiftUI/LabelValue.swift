//
//  LabelValue.swift
//  SliderGameSwiftUI
//
//  Created by Igor Denisiuk on 6.04.21.
//

import SwiftUI

struct LabelValue: View {
    var value: Int
    
    var body: some View {
        Text("\(value)")
            .foregroundColor(.black)
            .font(.title3)
            .frame(width:50)
            .padding()
    }
}

struct LabelValue_Previews: PreviewProvider {
    static var previews: some View {
        LabelValue(value: 100)
    }
}
