//
//  countries.swift
//  weathapp
//
//  Created by Zahra chouchane on 14/10/2022.
//

import SwiftUI

struct countries: View {
    var body: some View {
        
        
        trapezeShape(offset: 200)
            .frame(height: 300)
            
            
    }
}

struct countries_Previews: PreviewProvider {
    static var previews: some View {
        countries()
    }
}

struct trapezeShape: Shape{
    var offset: CGFloat = 50
    
    func path(in rect: CGRect) -> Path {
       var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midX ))
        path.addLine(to: CGPoint(x: rect.maxY, y: rect.maxY))
        
      
       
       
        
        return path
    }
}

struct CustomShape2: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        return Path{path in
            
            path.move(to: CGPoint(x: 0, y: 70))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 70))
            
            let midX = rect.width / 2
            let width = rect.width
            
            let controlWidth = midX - 80
            
            path.move(to: CGPoint(x: 0, y: 70))
            
            let to = CGPoint(x: midX, y: -43)
            let control1 = CGPoint(x: controlWidth, y: 70)
            let control2 = CGPoint(x: controlWidth - 20, y: -55)
            
            let to1 = CGPoint(x: width, y: 70)
            let control3 = CGPoint(x: width - (controlWidth - 20), y: -55)
            let control4 = CGPoint(x: width - controlWidth, y: 70)
            
            path.addCurve(to: to, control1: control1, control2: control2)
            
            path.addCurve(to: to1, control1: control3, control2: control4)
        }
    }
}
