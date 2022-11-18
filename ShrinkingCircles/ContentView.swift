//
//  ContentView.swift
//  ShrinkingCircles
//
//  Created by Joyce Tao on 2022-11-18.
//

import SwiftUI

struct ShrinkingCircles: Shape {
    func path(in rect: CGRect) -> Path {
        
        // Create the path
        var path = Path()
        
        for i in 0...Int(rect.height) / 50 {
            let diameter = rect.height - Double(i * 50)
            
            path.addEllipse(in: CGRect(x: rect.midX - diameter / 2, y: rect.midY - diameter / 2, width: diameter, height: diameter))
        }
        
        // Return the path
        return path
        
    }
    
}

struct ContentView: View {
    var body: some View {
        ShrinkingCircles()
            .stroke(lineWidth: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
