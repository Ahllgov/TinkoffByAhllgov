//
//  Friend.swift
//  TinkoffByAhllgov
//
//  Created by Магомед Ахильгов on 07.10.2021.
//

import SwiftUI

import SwiftUI

struct Friend: Identifiable {
    var id = UUID().uuidString
    var name: String
    var detail: String
    var image: String
}

var friends = [
    Friend(name: "Max", detail: "5 km away", image: "p1"),
    Friend(name: "Anton", detail: "500 m away", image: "p2"),
    Friend(name: "Sergey", detail: "11 km away", image: "p3"),
    Friend(name: "John", detail: "2 km away", image: "p4"),
    Friend(name: "Claytone", detail: "10 km away", image: "p5"),
    Friend(name: "Lisa", detail: "1 km away", image: "p6"),
    Friend(name: "Max", detail: "5 km away", image: "p1"),
    Friend(name: "Anton", detail: "500 m away", image: "p2"),
    Friend(name: "Sergey", detail: "11 km away", image: "p3"),
    Friend(name: "John", detail: "2 km away", image: "p4"),
    Friend(name: "Claytone", detail: "10 km away", image: "p5"),
    Friend(name: "Lisa", detail: "1 km away", image: "p6"),
    Friend(name: "Max", detail: "5 km away", image: "p1"),
    Friend(name: "Anton", detail: "500 m away", image: "p2"),
    Friend(name: "Sergey", detail: "11 km away", image: "p3"),
    Friend(name: "John", detail: "2 km away", image: "p4"),
    Friend(name: "Claytone", detail: "10 km away", image: "p5"),
    Friend(name: "Lisa", detail: "1 km away", image: "p6")
]
