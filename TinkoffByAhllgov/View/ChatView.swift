//
//  ChatView.swift
//  TinkoffByAhllgov
//
//  Created by Магомед Ахильгов on 18.09.2021.
//

import SwiftUI


struct ChatView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Чаты")
                        .font(.title)
                        .fontWeight(.heavy)
                    Spacer()
                    Button {
                    } label: {
                        Image(systemName: "bell")
                            .font(.title2)
                            .foregroundColor(.blue)
                    }
                    Button {
                    } label: {
                        Image(systemName: "square.and.pencil")
                            .font(.title2)
                            .foregroundColor(.blue)
                    }
                }
                .padding(.horizontal)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: -35) {
                        ForEach(friends){friend in
                            FriendRowView2(friend2: friend)
                        }
                    }
                }
                LazyVStack(spacing: 15){
                    ForEach(friends){friend in
                        FriendRowView(friend: friend)
                    }
                }
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}

struct FriendRowView: View {
    var friend: Friend
    var body: some View {
        HStack{
            Image(friend.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 8, content: {
                Text("\(friend.name)")
                    .fontWeight(.bold)
                Text("\(friend.detail)")
                    .font(.caption)
                    .foregroundColor(.gray)
            })
            .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
        }
        .padding(.horizontal)
        Divider()

    }
}

struct FriendRowView2: View {
    var friend2: Friend
    var body: some View {
        VStack {
            Image("\(friend2.image)")
                .resizable()
                .clipShape(Circle())
                .frame(width: 60, height: 60)
            Text("\(friend2.name)")
                .font(.system(size: 15))
                .fontWeight(.semibold)
                .padding(.vertical,5)
        }.frame(width: 70, height: 110)
            .padding(.horizontal,17)
            .padding(.top)
        
    }
}
