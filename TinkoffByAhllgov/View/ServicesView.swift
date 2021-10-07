//
//  ServicesView.swift
//  TinkoffByAhllgov
//
//  Created by Магомед Ахильгов on 18.09.2021.
//

import SwiftUI

struct ServicesView: View {
    @State var searchText = ""
    //Gesture properties
    @State var firstOffset: CGFloat = 0
    @State var lastOffset: CGFloat = 0
    @GestureState var gestureOffset: CGFloat = 0
    @State var selected = 1
    
    let data = Array(1...48).map { "item \($0)" }
    let layout = [GridItem(.adaptive(minimum: 80))]
    
    var body: some View {
        ZStack {
            ScrollView{
                VStack{
                    //Сервисы
                    VStack{
                        HStack (alignment: .bottom){
                            Text("Сервисы")
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
                    }.padding(.horizontal).padding(.bottom)
                    //ГРид
                    Services()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width + 80)
                }.padding(.horizontal,-5)
                    .padding(.vertical,20)
            }
            GeometryReader { proxy -> AnyView in
                let height = proxy.frame(in: .global).height
                return AnyView (
                    ZStack {
                        BlurView(style: .systemMaterial).clipShape(CustomCorner(corners: [.topLeft, .topRight], radius: 30))
                        VStack {
                            Capsule().fill(Color.gray.opacity(0.5)).frame(width: 40, height: 5).padding(.top,10)
                            HStack {
                                Text("Для вас")
                                    .font(.title)
                                .fontWeight(.heavy)
                                Spacer()
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Image(systemName: "square.stack.fill")
                                        .font(.system(size: 22, weight: .bold))
                                        .foregroundColor(.black.opacity(1))
                                        .frame(width: 45, height: 45)
                                        .background(Color.gray.opacity(0.5))
                                        .clipShape(Circle())
                                })
                            }.padding(.horizontal)
                            Journal()
                        }.frame(maxHeight: .infinity, alignment: .top)
                    }.offset(y: height - 200).offset(y: -firstOffset > 0 ? -firstOffset <= (height - 200) ? firstOffset : -(height - 200) : 0).gesture(DragGesture().updating($gestureOffset, body: { value, out, _ in
                        out = value.translation.height
                        onChange()
                    }).onEnded({ value in
                        let maxHeight = height - 200
                        withAnimation {
                            //Logic conditions for moving states
                            //Up, down, or mid
                            if -firstOffset > 200 && -firstOffset < maxHeight/2 {
                                //Mid
                                firstOffset = -(maxHeight/3)
                            } else if -firstOffset > maxHeight/2 {
                                firstOffset = -maxHeight
                            } else {
                                firstOffset = 0
                            }
                        }
                        //Stroring last offset
                        //So that the gesture can continue from the last
                        lastOffset = firstOffset
                    }))
                )
            }.ignoresSafeArea(.all, edges: .bottom)
        }
    }
    func onChange() {
        DispatchQueue.main.async {
            self.firstOffset = gestureOffset + lastOffset
        }
    }
    func getBlurRadius() -> CGFloat {
        let progress = -firstOffset / (UIScreen.main.bounds.height - 200)
        return progress * 30
    }
}

struct ServicesView_Previews: PreviewProvider {
    static var previews: some View {
        ServicesView()
    }
}

struct CustomCorner: Shape {
    var corners: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style
    func makeUIView(context: Context) ->  UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        return
    }
}

struct ForYou: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(0..<16) {i in
                VStack {
                    ZStack {
                        Image(systemName: "mic.fill")
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(.clear)
                            .frame(width: UIScreen.main.bounds.width - 45, height: UIScreen.main.bounds.width - 100)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1550348103, green: 0.03995219991, blue: 0.3026399016, alpha: 1)),Color(#colorLiteral(red: 0.203317225, green: 0.08813301474, blue: 0.2848255038, alpha: 1)),Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]), startPoint: .bottomLeading, endPoint: .top).cornerRadius(25))
                        VStack (alignment: .leading){
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Новое").padding(.top, 20)
                                    Text("Встречайте персональную ленту")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                }.padding(.horizontal, 35) .foregroundColor(.white)
                                Spacer()
                            }
                            Spacer()
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("Посмотреть")
                                    .foregroundColor(.white)
                                    .background(Color.gray.opacity(0.1).frame(width: 170, height: 50).cornerRadius(25) .shadow(color: .gray, radius: 1, y: 1))
                            }).padding(.horizontal, 70).padding(.bottom, 40)
                        }
                    }
                }.padding(10)
            }
        }.frame(width: UIScreen.main.bounds.width, height: .infinity)
    }
}

struct Journal: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(0..<16) {i in
                VStack {
                    ZStack {
                        Image(systemName: "mic.fill")
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(.clear)
                            .frame(width: UIScreen.main.bounds.width - 45, height: UIScreen.main.bounds.width - 100)
                            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1550348103, green: 0.03995219991, blue: 0.3026399016, alpha: 1)),Color(#colorLiteral(red: 0.203317225, green: 0.08813301474, blue: 0.2848255038, alpha: 1)),Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]), startPoint: .bottomLeading, endPoint: .top).cornerRadius(25))
                        VStack (alignment: .leading){
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Новое").padding(.top, 20)
                                    Text("Встречайте персональную ленту")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                }.padding(.horizontal, 35) .foregroundColor(.white)
                                Spacer()
                            }
                            Spacer()
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("Посмотреть")
                                    .foregroundColor(.white)
                                    .background(Color.gray.opacity(0.1).frame(width: 170, height: 50).cornerRadius(25) .shadow(color: .gray, radius: 1, y: 1))
                            }).padding(.horizontal, 70).padding(.bottom, 40)
                        }
                    }
                }.padding(10)
            }
        }.frame(width: UIScreen.main.bounds.width, height: .infinity)
    }
}







