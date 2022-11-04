//
//  CountryView.swift
//  weathapp
//
//  Created by Zahra chouchane on 13/10/2022.
//

import SwiftUI

struct CountryView: View {
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [Color("bg1"), Color("bg2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            Circle()
                .foregroundColor(Color("blureffect3").opacity(0.8))
                .blur(radius: 70)
                .offset(x: 120,y:190)
            
            Circle()
                .frame(width: 250, height: 250)
                .foregroundColor(Color("blureffect3").opacity(0.8))
                .blur(radius: 70)
                .offset(x: 220,y: -150)
            
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(Color("blureffect3").opacity(0.8))
                .blur(radius: 150)
                .offset(x: -50,y: -150)
            
            VStack{
                
                Text("Tunis")
                    .font(.system(size: 34))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    
                
                Text("26° | Mostly Clear")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                    .foregroundColor(.gray.opacity(0.4))
                
  
                ZStack{
                    Ellipse()
                        .frame(width: 340, height: 2, alignment: .bottom)
                        .foregroundColor(Color("blureffect1"))
                        .blur(radius: 2)
                    
                    Ellipse()
                        .frame(width: 340, height: 15, alignment: .bottom)
                        .foregroundColor(Color("blureffect2").opacity(0.2))
                        .blur(radius: 10)
                        .offset(x: 0, y: 12)

                }
                    
                
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 50, height: 6)
                    .opacity(0.4)
                
               
                biggercard()
                
                VStack(spacing: 20){
                    
                    HStack(spacing: 20){
                        smallCard()
                        smallCardSunrise()
                    }.padding(.top,20)
                    HStack(spacing: 20){
                        SimilarTo()
                        RainFall()
                    }
                
            }
                
                
        }
            
            
        ZStack{
            
            
 
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
            
        }.offset(y:410)
            .padding()
            
    }
        
}
}
struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        CountryView()
    }
}


struct biggercard : View{
    
    var body: some View {
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 380, height: 200)
                .foregroundColor(Color("g"))
                .shadow(color: Color("blureffect1"), radius: 1, x: 0, y: 0)
            
        VStack(alignment: .leading, spacing: 17){
            HStack{
                Image(systemName: "aqi.medium")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.gray.opacity(0.4))
                
                Text("AIR QUALITY")
                    .font(.system(size: 19))
                    .fontWeight(.semibold)
                    .foregroundColor(.gray.opacity(0.6))
                    
                
            }
            
            Text("3-Low Health Risk")
                .font(.system(size: 25))
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            customSlider(width: 310, height: 5)
            
            Spacer()
                .frame(width: 330, height: 1)
                .background(.white.opacity(0.1))
            
            Text("See more")
                .font(.system(size: 22))
                .fontWeight(.regular)
                .foregroundColor(.white.opacity(0.9))
            
        }
        }
    }
    
}


struct customSlider: View{
    var width: CGFloat
    var height: CGFloat
    var body: some View{
        ZStack{
            Rectangle()
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color("gradient1"),Color("gradient2"),Color("gradient3"),Color("gradient4"),Color("gradient5")]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(25)
                .frame(width: width, height: height)
              
            
        
            
            ZStack{
                
                
            
                Circle()
                    .fill(.white)
                    .frame(width: 12, height: 12)
                
               
            }
              
        }
      
    }
}

struct smallCard : View{
    var body: some View{
        ZStack{
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 180, height: 200)
                .foregroundColor(Color("g"))
                .shadow(color: Color("blureffect1"), radius: 1, x: 0, y: 0)
   VStack(alignment: .leading, spacing: 17){
            HStack{
                Image(systemName: "aqi.medium")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.gray.opacity(0.4))
                
                Text("UV INDEX")
                    .font(.system(size: 19))
                    .fontWeight(.semibold)
                    .foregroundColor(.gray.opacity(0.6))
                    
                
            }
            
            Text("4")
                .font(.system(size: 25))
                .fontWeight(.semibold)
                .foregroundColor(.white)
                 
                 Text("Moderate")
                       .font(.system(size: 22))
                       .fontWeight(.regular)
                       .foregroundColor(.white.opacity(0.9))
            
            customSlider(width: 140, height: 5)
        }
        }
    }
}


struct smallCardSunrise : View{
    var body: some View{
        ZStack{
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 180, height: 200)
                .foregroundColor(Color("g"))
                .shadow(color: Color("blureffect1"), radius: 1, x: 0, y: 0)
            
        VStack(alignment: .leading, spacing: 17){
            HStack{
                Image(systemName: "humidity.fill")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.gray.opacity(0.4))
                
                Text("HUMIDTY")
                    .font(.system(size: 19))
                    .fontWeight(.semibold)
                    .foregroundColor(.gray.opacity(0.6))
            }
            
            Text("90%")
                .font(.system(size: 25))
                .fontWeight(.semibold)
                .foregroundColor(.white)
                 
                 
          
            
                

            
            Text("The drew point is 17 right now")
                  .font(.system(size: 18))
                  .fontWeight(.regular)
                  .foregroundColor(.white.opacity(0.9))
        }
        
    }
    
    }
}


struct RainFall : View{
    var body: some View{
        ZStack{
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 180, height: 200)
                .foregroundColor(Color("g"))
                .shadow(color: Color("blureffect1"), radius: 1, x: 0, y: 0)
            
        VStack(alignment: .leading, spacing: 17){
            HStack{
                Image(systemName: "drop.fill")
                    .resizable()
                    .frame(width: 15, height: 20)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.gray.opacity(0.4))
                
                Text("RAINFALL")
                    .font(.system(size: 19))
                    .fontWeight(.semibold)
                    .foregroundColor(.gray.opacity(0.6))
                    
                
            }
            
            Text("1.8 mm")
                .font(.system(size: 25))
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
                 
            
    
            
            Text("1.2 mm expected in next 24h.")
                  .font(.system(size: 18))
                  .fontWeight(.regular)
                  .foregroundColor(.white.opacity(0.9))
        }
        
    }
    
    }
}

struct SimilarTo : View{
    var body: some View{
        ZStack{
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 180, height: 200)
                .foregroundColor(Color("g"))
                .shadow(color: Color("blureffect1"), radius: 1, x: 0, y: 0)
            
        VStack(alignment: .leading, spacing: 17){
            HStack{
                Image(systemName: "thermometer.medium")
                    .resizable()
                    .frame(width: 15, height: 20)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.gray.opacity(0.4))
                
                Text("FEELS LIKE")
                    .font(.system(size: 19))
                    .fontWeight(.semibold)
                    .foregroundColor(.gray.opacity(0.6))
                    
                
            }
            
            Text("19°")
                .font(.system(size: 25))
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
                 
            
    
            
            Text("Similar to the actual temparature.")
                  .font(.system(size: 18))
                  .fontWeight(.regular)
                  .foregroundColor(.white.opacity(0.9))
        }
        
    }
    
    }
}

