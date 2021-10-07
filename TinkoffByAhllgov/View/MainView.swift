//
//  MainView.swift
//  TinkoffByAhllgov
//
//  Created by Магомед Ахильгов on 18.09.2021.
//

import SwiftUI

struct MainView: View {
    
    @State var showSearch = true
    @State var searchOperations = ""
    
    var body: some View {
            ScrollView {
                    VStack {
                    //Заголовок
                    HStack{
                        Text("Главная")
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
                    }.padding(.horizontal)
                    //SearchField
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
                        .padding(.horizontal,20)
                    //Истории
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: -35) {
                            ForEach(0 ..< 9) { item in
                                ZStack {
                                    Text("Очень длинный заголовок истории")
                                        .font(.system(size: 10, weight: .bold, design: .serif))
                                        .foregroundColor(.white)
                                        .padding(13)
                                        .frame(width: 97, height: 97, alignment: .bottomLeading)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),Color(#colorLiteral(red: 0.2183468044, green: 0.3164795041, blue: 0.916025877, alpha: 1)),Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)),Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)),Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]), startPoint: .topTrailing, endPoint: .bottomLeading).cornerRadius(25))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 25)
                                                .stroke(Color.blue, lineWidth: 2)
                                                .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        )
                                }.frame(width: 105, height: 105)
                                .padding(.horizontal,20)
                            }
                        }
                    }.padding(.horizontal,-5)
                    .padding(.vertical,20)
                    //Траты
                    HStack{
                        VStack{
                            HStack{
                                Text("Траты за месяц")
                                    .fontWeight(.bold)
                                    .font(.title3)
                                Spacer()
                                Text("50 153,43 ₽")
                            }
                            .padding(.horizontal,15)
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width - 50, height: 15)
                                .cornerRadius(100)
                                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.7446193099, blue: 0.8782249093, alpha: 1)))
                        }
                        .frame(width: UIScreen.main.bounds.width - 25, height: 85)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(15)
                    }
                    .padding(.vertical,-10)
                    //Счета и карты
                    VStack(spacing: 0) {
                        DisclosureGroup(
                            content: {
                                HStack{
                                    Image(systemName: "arrow.turn.down.right")
                                    VStack(alignment: .leading){
                                        Text("Дебетовая карта")
                                        Text("468.13 рублей доступно")
                                            .foregroundColor(.gray)
                                    }
                                    .padding()
                                    Spacer()
                                    Image(systemName: "creditcard")
                                        .font(.title)
                                        .foregroundColor(.blue)
                                }
                                .padding(.horizontal)
                            },
                            label: {
                                HStack{
                                    Image(systemName: "rublesign.circle.fill")
                                        .font(.system(size: 25, weight: .heavy, design: .rounded))
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2639923096, green: 0.5612514615, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.2031532824, green: 0.4292642772, blue: 0.7896229625, alpha: 1))]), startPoint: .top, endPoint: .bottom).frame(width: 50, height: 50).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/))
                                    VStack(alignment: .leading, spacing: 5){
                                        Text("Счет Tinkoff Black")
                                            .foregroundColor(.black)
                                        Text("468,13 ₽")
                                            .foregroundColor(.black)
                                            .fontWeight(.bold)
                                    }
                                    .padding()
                                }
                            })
                        DisclosureGroup(
                            content: {
                                HStack{
                                    Image(systemName: "arrow.turn.down.right")
                                    VStack(alignment: .leading){
                                        Text("Долларовая карта")
                                        Text("300 долларов доступно")
                                            .foregroundColor(.gray)
                                    }
                                    .padding()
                                    Spacer()
                                    Image(systemName: "creditcard")
                                        .font(.title)
                                        .foregroundColor(.blue)
                                }
                                .padding(.horizontal) },
                            label: {
                                HStack{
                                    Image(systemName: "dollarsign.circle.fill")
                                        .font(.system(size: 25, weight: .heavy, design: .rounded))
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2639923096, green: 0.5612514615, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.2031532824, green: 0.4292642772, blue: 0.7896229625, alpha: 1))]), startPoint: .top, endPoint: .bottom).frame(width: 50, height: 50).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/))
                                    VStack(alignment: .leading, spacing: 5){
                                        Text("Счет USD Tinkoff Black")
                                            .foregroundColor(.black)
                                        Text("300 $")
                                            .foregroundColor(.black)
                                            .fontWeight(.bold)
                                    }
                                    .padding()
                                }
                            })
                        
                    }.padding(.horizontal)
                    Divider()
                    VStack(spacing: 0) {
                        DisclosureGroup(
                            content: {
                                HStack{
                                    Image(systemName: "arrow.turn.down.right")
                                    VStack(alignment: .leading){
                                        Text("Кредитная карта")
                                        Text("50 000 рублей доступно")
                                            .foregroundColor(.gray)
                                    }
                                    .padding()
                                    Spacer()
                                    Image(systemName: "creditcard")
                                        .font(.title)
                                        .foregroundColor(.blue)
                                }
                                .padding(.horizontal)
                            },
                            label: {
                                HStack{
                                    Image(systemName: "rublesign.circle.fill")
                                        .font(.system(size: 25, weight: .heavy, design: .rounded))
                                        .foregroundColor(.white)
                                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2639923096, green: 0.5612514615, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.2031532824, green: 0.4292642772, blue: 0.7896229625, alpha: 1))]), startPoint: .top, endPoint: .bottom).frame(width: 50, height: 50).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/))
                                    VStack(alignment: .leading, spacing: 5){
                                        Text("Кредитный счет Платинум")
                                            .foregroundColor(.black)
                                        Text("50 000 ₽")
                                            .foregroundColor(.black)
                                            .fontWeight(.bold)
                                    }
                                    .padding()
                                }
                            })
                    }.padding(.horizontal)
                    HStack{
                        Image(systemName: "eye")
                        Text("Скрытый счет")
                            .padding()
                        Spacer()
                    }
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Открыть новый счет или продукт")
                            .foregroundColor(.black)
                            .background(Color.yellow.frame(width: UIScreen.main.bounds.width - 50, height: 55).cornerRadius(10) .shadow(color: .gray, radius: 1, y: 1))
                    })
                    .padding(.vertical, 30)
                }
                Spacer()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

