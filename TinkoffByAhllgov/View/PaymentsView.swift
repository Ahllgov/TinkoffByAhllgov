//
//  PaymentsView.swift
//  TinkoffByAhllgov
//
//  Created by Магомед Ахильгов on 18.09.2021.
//

import SwiftUI

struct PaymentsView: View {
    
    @State var showSearch = true
    @State var searchOperations = ""
    
    var body: some View {
        ScrollView{
            VStack{
                //Заголовок и поиск
                VStack{
                    HStack (alignment: .bottom){
                        Text("Платежи")
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "mic.fill")
                                .font(.system(size: 22, weight: .bold))
                                .foregroundColor(.white)
                                .frame(width: 45, height: 45)
                                .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),Color(#colorLiteral(red: 0.2183468044, green: 0.3164795041, blue: 0.916025877, alpha: 1)),Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]), startPoint: .topTrailing, endPoint: .bottomLeading))
                                .clipShape(Circle())
                        })
                    }
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 20))
                            .foregroundColor(.gray)
                            .padding(.leading)
                        TextField("Операции", text: $searchOperations)
                            .foregroundColor(Color.black)
                    }
                    .background(RoundedRectangle(cornerRadius: 15).frame(width: UIScreen.main.bounds.width - 35 , height: 40))
                    .foregroundColor(.gray.opacity(0.15))
                    .padding()
                }
                .padding(.horizontal)
                //Избранное
                VStack (spacing: 10){
                    HStack{Text("Избранное")
                        .font(.title2)
                        .fontWeight(.bold)
                        Spacer()
                        Text("Еще")
                            .foregroundColor(.blue)
                    }
                    .padding(.horizontal)
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: -35) {
                            ForEach(0 ..< 4) { item in
                                VStack {
                                    Image(systemName: "rublesign.circle.fill")
                                        .font(.system(size: 25, weight: .heavy, design: .rounded))
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2639923096, green: 0.5612514615, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.2031532824, green: 0.4292642772, blue: 0.7896229625, alpha: 1))]), startPoint: .top, endPoint: .bottom).frame(width: 50, height: 50).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/))
                                    Text("Cчет на оплату чего-то там")
                                        .font(.system(size: 10))
                                        .lineLimit(3)
                                        .padding(.vertical, 6)
                                }.frame(width: 70, height: 110)
                                .padding(.horizontal,15)
                            }
                        }
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: 150)
            }
        }
    }
}

struct PaymentsView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentsView()
    }
}


