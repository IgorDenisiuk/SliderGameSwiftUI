//
//  GameSlider.swift
//  SliderGameSwiftUI
//
//  Created by Igor Denisiuk on 6.04.21.
//

import SwiftUI

struct GameSlider: View {
    @Binding var sliderValue: Double
    
    let targetValue: Int
    let alpha: Int
    let color: UIColor
    
    var body: some View {
        VStack {
            Text("Подвинь слайдер как можно ближе к: \(targetValue)")
            HStack {
                LabelValue(value: 0)
                GameUIKitSlider(value: $sliderValue, alpha: alpha, color: color)
                LabelValue(value: 100)
            }
        }
    }
}

struct GameSlider_Previews: PreviewProvider {
    static var previews: some View {
        GameSlider(sliderValue: .constant(50), targetValue: 100, alpha: 100, color: UIColor.blue)
    }
}
