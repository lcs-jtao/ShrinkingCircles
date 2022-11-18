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
        
        // Draw the circles using a loop
        // Determine the number of circles by the height of the canvas
        for i in 0...Int(rect.height) / 50 {
            let diameter = rect.height - Double(i * 50)
            
            path.addEllipse(in: CGRect(x: rect.midX - diameter / 2, y: rect.midY - diameter / 2, width: diameter, height: diameter))
        }
        
        // Return the path
        return path
        
    }
    
}

struct ShrinkingCirclesRecursively: Shape {
    
    // MARK: Stored property
    let desiredDepth: Int
    
    // MARK: Functions
    func path(in rect: CGRect) -> Path {
        // Make the path
        var path = Path()
        
        // Begin calling the recursive helper
        let allThePaths = recursiveHelper(currentDepth: 1)
        path.addPath(allThePaths)
        
        // Return the path
        return path
    }
    
    func recursiveHelper(currentDepth: Int) -> Path {
        
        // Make the path
        var path = Path()
        
        
        
        // Return the path
        return path
    }
    
}

struct ContentView: View {
    var body: some View {
        VStack {
            ShrinkingCircles()
                .stroke(lineWidth: 5)
            
            ShrinkingCirclesRecursively(desiredDepth: 4)
                .stroke(lineWidth: 5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
