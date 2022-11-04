//
//  tabBar.swift
//  weathapp
//
//  Created by Zahra chouchane on 12/10/2022.
//

import SwiftUI

struct tabBar: View {
    var body: some View {
        HStack{
            Image(systemName: "mappin.and.ellipse")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)

            Spacer()
            tabBarBtn()
            Spacer()

            Image(systemName: "line.3.horizontal")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)

            
        }.padding()
    }
}

struct tabBar_Previews: PreviewProvider {
    static var previews: some View {
        tabBar()
    }
}
