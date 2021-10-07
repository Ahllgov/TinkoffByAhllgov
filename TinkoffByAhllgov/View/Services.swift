//
//  Services.swift
//  TinkoffByAhllgov
//
//  Created by Магомед Ахильгов on 03.10.2021.
//

import SwiftUI

struct Services: View {
    var body: some View {
        TabView{
            BoardView()
                .padding(.bottom,50)
            BoardView()
                .padding(.bottom,50)
            BoardView()
                .padding(.bottom,50)
            
        }.tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle.init(backgroundDisplayMode: .always))
    }
}

struct Services_Previews: PreviewProvider {
    static var previews: some View {
        Services()
    }
}

struct BoardView: View {
    
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 4), spacing: 0) {
            ForEach(0..<16) {i in
                VStack {
                    Image(systemName: "person")
                        .font(.system(size: 20, weight: .heavy))
                        .foregroundColor(.black)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)),Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)),Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))]), startPoint: .top, endPoint: .bottom).frame(width: 65, height: 65).cornerRadius(10).shadow(radius: 4)
)
                        .frame(width: 65, height: 65)
                    Text("Акция")
                    
                }.padding(10)
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
    }
}

