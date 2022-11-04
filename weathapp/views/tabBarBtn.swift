//
//  tabBarBtn.swift
//  weathapp
//
//  Created by Zahra chouchane on 12/10/2022.
//

import SwiftUI

struct tabBarBtn: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top))  {
            
           


        
                       Image(systemName: "plus")
                           .font(.system(size: 28, weight: .bold))
                           .foregroundColor(Color("cardbg"))
                           .offset(x:  0, y:   0)
                           
                       
                   
                   .frame(width: 80, height: 80)
                   
                   .background(
                       ZStack{
                           LinearGradient(gradient: Gradient(colors: [.white
                                                                      ,.white                               ])
                                          , startPoint: .topLeading, endPoint: .bottomTrailing)
                           
                           
                         
                         
                                               
                           Circle()
                              
                           
                                                   .stroke(.clear, lineWidth: 7)
                           
                           
                           
                                                   .shadow(color: .blue, radius: 3, x: 3, y:  3)
                           
                           
                                                   
                            
                     
                           Circle()
                                                 

                               .stroke(LinearGradient(gradient: Gradient(colors:  [Color("cardbg").opacity(0.2), .black.opacity(0.9)] )
                                                       ,startPoint: .bottomTrailing, endPoint: .topLeading)
                                                        , lineWidth: 11)
                              
                                              
                            
                                                    
                               .shadow(color: .black, radius: 5, x: -3, y:  -4)
                           
                                               
                              
                       }
                       
                   )
                  
                   .clipShape(Circle())
                 
                   .shadow(color: .green.opacity(0.05), radius: 1, x: 1, y: 1)
            
            
                                
                                  
                                
                                  .shadow(color: .white.opacity(0.13), radius: 17, x: -15, y: -18)
            
                                 
                                
                                     .shadow(color: .black.opacity(0.1)
                                       , radius: 10, x: 14, y: 20)

                                     
                  

        }
        
    }
}

struct tabBarBtn_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}


struct CustomShape: Shape {
    
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
