//
//  GameUIKitSlider.swift
//  SliderGameSwiftUI
//
//  Created by Igor Denisiuk on 6.04.21.
//

import SwiftUI

struct GameUIKitSlider: UIViewRepresentable {
    
    @Binding var value: Double
    
    let alpha: Int
    let color: UIColor
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider(frame: .zero)
        
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.tintColor = .red
        slider.value = Float(value)
        
        slider.addTarget(context.coordinator,
                         action: #selector(Coordinator.valueChanged),
                         for: .valueChanged
        )
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.thumbTintColor = color.withAlphaComponent(CGFloat(alpha) / 100)
        uiView.value = Float(value)
    }
    
    func makeCoordinator() -> GameUIKitSlider.Coordinator {
        Coordinator(value: $value)
    }
}

extension GameUIKitSlider {
    class Coordinator: NSObject {
        @Binding var value: Double
        
        init(value: Binding<Double>) {
            self._value = value
        }
        
        @objc func valueChanged(_ sender: UISlider) {
            value = Double(sender.value)
            
        }
    }
}

struct GameUIKitSlider_Previews: PreviewProvider {
    static var previews: some View {
        GameUIKitSlider(value: .constant(50), alpha: 100, color: UIColor.blue)
    }
}



