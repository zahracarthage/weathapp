//
//  HomePage.swift
//  weathapp
//
//  Created by Zahra chouchane on 11/10/2022.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack{
           
           Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            Image("housebg")
                .offset(y:70)
            
            VStack{
               Spacer()
                Text("Tunis")
                    .font(.system(size: 34))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    
                    
                 Text("24°")
                    .font(.system(size: 96))
                    .fontWeight(.thin)
                    .foregroundColor(.white)
                
                
                Text("Mostly Clear")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(.gray.opacity(0.4))
                  
                HStack{
                    Text("H:24°")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        
                        
                    Text("L:19°")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                }
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                ZStack{
                    
                    
                    hourlyForecast()
                     
                
                        
                        
                    ZStack{
                        
                        
                        
                        
                       // .offset(y: 150)
                       
            
                        LinearGradient(gradient: Gradient(colors:  [Color("blureffect1").opacity(0.2), Color("blureffect1").opacity(0.2)] )
                                                  ,startPoint: .top, endPoint: .bottom)
                        
                        .clipShape(CustomShape())
                        .frame(height: 63)
                        .offset(y: 23)

                        LinearGradient(gradient: Gradient(colors:  [Color("shape1"), Color("shape2")] )
                                                  ,startPoint: .top, endPoint: .bottom)
                        
                        .clipShape(CustomShape())

                       // .offset(y: 200)
                        .frame(height: 60)
                        .offset(y: 23)

                        tabBar()
                        .frame(alignment: .bottom)
                        
                    }.offset(y:160)
                        .padding()
                      
                     
                   
                      
                        
                    
                    
                  
                }
                    
                  
                      
               

                               
                
                
            }
          
           


                
           
           
        }
         
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}


struct Blur: UIViewRepresentable {
    let style: UIBlurEffect.Style = .systemUltraThinMaterialDark
    






    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}


struct hourlyForecast : View {
    
    var body: some View {
        
        ZStack(alignment: .topLeading){
            
            
            Blur()
                .frame(width: 430, height: 360)
                .clipShape(RoundedRectangle(cornerRadius: 40, style: .continuous))
                   
            
            
            Ellipse()
                .frame(width: 340, height: 3, alignment: .bottom)
                .foregroundColor(Color("blureffect1"))
                .blur(radius: 4)
                .offset(x: 40)
            
            Ellipse()
                .frame(width: 340, height: 4, alignment: .bottom)
                .foregroundColor(Color("blureffect2").opacity(0.5))
                .blur(radius: 4)
                .offset(x: 40, y:4)
                
            
            Ellipse()
                .frame(width: 250, height: 250, alignment: .bottom)
                .foregroundColor(Color("blureffect3"))
                .blur(radius: 100)
                .offset(x: 290, y:40)
            
            
            VStack{
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 50, height: 6)
                    .opacity(0.4)
                
                HStack(spacing: 70){
                    Text("Hourly Forecast")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                        
                    Text("Weekly Forecast")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                        .fontWeight(.thin)

                    
                }.padding()
                
                Spacer()
                    .frame(width: 400, height: 1)
                    .background(.white.opacity(0.4))
                
                HStack(spacing: 20){
                    Card(date: "12PM", tem: 25, img: "sun.max.fill")
                    CardCurrent()
                    Card(date: "1 PM", tem: 26, img: "cloud.sun.fill")
                    Card(date: "2 PM", tem: 28, img: "cloud.sun.fill")
                    Card(date: "3 PM", tem: 27, img: "sun.max.fill")


                    
                }.padding(.top,15)
               
            }.padding()
                

            
            
          
        }.offset(y:40)
        
    }
}

struct CardCurrent: View{
    
    var body: some View
    {
        ZStack{
            
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 62, height: 140)
                .foregroundColor(.white.opacity(0.2))
            
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 60, height: 138)
                .foregroundColor(Color("cardbg"))
            
            VStack(spacing: 15){
                
                Text("Now")
                    .fontWeight(.regular)
                    .font(.system(size: 17))
                    .foregroundColor(.white)
                
                Image(systemName: "sun.max.fill")
                    .foregroundColor(.yellow)
                
                Text("24°")
                    .fontWeight(.regular)
                    .font(.system(size: 17))
                    .foregroundColor(.white)
                
        }
      
        }
    }
}


struct Card: View{
     var date: String
     var tem: Int
     var img: String
    var body: some View
    {
        ZStack{
            
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 62, height: 140)
                .foregroundColor(.white.opacity(0.2))
            
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 60, height: 138)
                .foregroundColor(Color("cardbg").opacity(0.3))
            
            VStack(spacing: 15){
                
                Text(date)
                    .fontWeight(.regular)
                    .font(.system(size: 17))
                    .foregroundColor(.white)
                
                Image(systemName: img)
                    .foregroundColor(.yellow)
                
                Text("\(tem)°")
                    .fontWeight(.regular)
                    .font(.system(size: 17))
                    .foregroundColor(.white)
                
        }
      
        }
    }
}
