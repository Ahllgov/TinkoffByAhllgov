//
//  OtherView.swift
//  TinkoffByAhllgov
//
//  Created by Магомед Ахильгов on 18.09.2021.
//

import SwiftUI

struct OtherView: View {
    @State var selected = 1
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    Picker(selection: $selected, label: Text("Picker")) {
                        Text("Бонусы").tag(1)
                        Text("Документы").tag(2)
                        Text("Настройки").tag(3)
                        Text("Инфо").tag(4)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal)
                    .padding(.top, 15)
                }
                if selected == 1 {
                    VStack(spacing: -15) {
                        Button {
                            
                        } label: {
                            VStack {
                                HStack(alignment: .top) {
                                    VStack(alignment: .leading) {
                                        Text("Tinkoff Premium и Pro")
                                            .foregroundColor(.black)
                                            .font(.title2)
                                            .fontWeight(.semibold)
                                            .padding(.top)
                                            .padding(.horizontal)
                                        Text("Подключите, чтобы получать больше кэшбека и повышенный доход")
                                            .multilineTextAlignment(.leading)
                                            .foregroundColor(.gray)
                                            .padding(.horizontal)
                                    }
                                    Spacer()
                                    Image(systemName: "doc.plaintext.fill")
                                        .font(.title3)
                                        .foregroundColor(.white)
                                        .background(Color.blue.frame(width: 45, height: 45).clipShape(Circle()))
                                        .padding(.trailing,25)
                                        .padding(.top,25)
                                }
                                Button {
                                    
                                } label: {
                                    Text("Подробнее")
                                        .foregroundColor(.black)
                                        .frame(width: UIScreen.main.bounds.width - 65, height: 55)
                                        .background(Color.yellow.cornerRadius(15))
                                }
                                .padding()
                            }
                            .padding()
                            .background(Color.white.cornerRadius(15).padding().frame(width: UIScreen.main.bounds.width).shadow(color: Color.gray.opacity(0.3), radius: 55))
                            .frame(width: UIScreen.main.bounds.width)
                        }
                        Button {
                            
                        } label: {
                            VStack {
                                HStack(alignment: .top) {
                                    VStack(alignment: .leading) {
                                        Text("Пригласить друзей")
                                            .foregroundColor(.black)
                                            .font(.title2)
                                            .fontWeight(.semibold)
                                            .padding(.horizontal)
                                        Text("Рекомендуйте нас и получите бонусы")
                                            .foregroundColor(.gray)
                                            .padding(.horizontal)
                                            .multilineTextAlignment(.leading)
                                    }
                                    Spacer()
                                    Image(systemName: "person.3.fill")
                                        .font(.title3)
                                        .foregroundColor(.white)
                                        .background(Color.blue.frame(width: 45, height: 45).clipShape(Circle()))
                                        .padding(.trailing)
                                        .padding(.top,25)
                                }
                                .padding(.vertical)
                            }
                            .padding()
                            .background(Color.white.cornerRadius(15).padding().frame(width: UIScreen.main.bounds.width).shadow(color: Color.gray.opacity(0.3), radius: 55))
                        }
                        Button {
                            
                        } label: {
                            VStack {
                                HStack {
                                    Text("Кэшбек")
                                        .foregroundColor(.black)
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                    Spacer()
                                    Text("Еще")
                                        .foregroundColor(.blue)
                                }
                                .padding(.top)
                                .padding(.horizontal)
                                VStack {
                                    ForEach(0..<3) { i in
                                        HStack {
                                            Image(systemName: "eyes.inverse")
                                                .font(.title3)
                                                .foregroundColor(.white)
                                                .background(Color.blue.frame(width: 70, height: 70).clipShape(Circle()))
                                                .frame(width: 70, height: 70)
                                            VStack (alignment: .leading) {
                                                Text("Кухня на районе")
                                                    .foregroundColor(.black)
                                                    .fontWeight(.semibold)
                                                    .padding(.bottom,1)
                                                Text("Сервис доставки горячей готовой еды за 30 минут")
                                                    .font(.system(size: 13))
                                                    .foregroundColor(.gray)
                                            }
                                            .padding()
                                            Text("20%")
                                        }
                                    }
                                }
                            }
                            .padding()
                            .background(Color.white.cornerRadius(15).padding().frame(width: UIScreen.main.bounds.width).shadow(color: Color.gray.opacity(0.3), radius: 55))
                        }
                    }
                } else if selected == 2 {
                    Text("This is second page")
                } else if selected == 3 {
                    Text("This is third page")
                } else if selected == 4 {
                    Text("This is fourth page")
                }
            }
            .navigationTitle("Ahllgov")
            .navigationBarItems(trailing:
                                    Button {
                
            } label: {
                Image(systemName: "person.circle.fill")
                    .font(.system(size: 35))
            })
        }
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
