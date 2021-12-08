//
//  ColorPickerView.swift
//  PaintApp
//
//  Created by Tewodros Mengesha on 8.12.2021.
//

import SwiftUI

struct ColorPickerView: View {
    let colors = [Color.red, Color.green, Color.blue, Color.orange, Color.purple, Color.pink, Color.brown, Color.mint]
        @Binding var selectedColor: Color
        
        var body: some View {
            HStack {
                ForEach(colors, id: \.self) { color in
                
                    Image(systemName: selectedColor == color ? Constants.Icons.recordCircleFill : Constants.Icons.circleFill)
                        .foregroundColor(color)
                        .font(.system(size: 16))
                        .clipShape(Circle())
                        .onTapGesture {
                            selectedColor = color
                        }
                }
            }
        }
}

struct ColorListView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView(selectedColor: .constant(.blue))
    }
}

