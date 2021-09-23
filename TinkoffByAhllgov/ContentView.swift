//
//  ContentView.swift
//  TinkoffByAhllgov
//
//  Created by Магомед Ахильгов on 18.09.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            MainView()
                .tabItem { Image(systemName: "creditcard")
                    Text("Главная").font(.system(size: 30)) }
            PaymentsView()
                .tabItem { Image(systemName: "smallcircle.fill.circle.fill")
                    Text("Платежи").font(.system(size: 30)) }
            ServicesView()
                .tabItem { Image(systemName: "cart")
                    Text("Сервисы").font(.system(size: 30)) }
            ChatView()
                .tabItem { Image(systemName: "captions.bubble")
                    Text("Чат").font(.system(size: 30)) }
            OtherView()
                .tabItem { Image(systemName: "list.bullet")
                    Text("Еще").font(.system(size: 30)) }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
