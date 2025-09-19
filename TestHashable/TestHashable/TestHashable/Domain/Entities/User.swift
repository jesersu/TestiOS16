//
//  User.swift
//  TestHashable
//
//  Created by Jesús Ervin Chapi Suyo on 14/09/25.
//

struct User: Identifiable, Hashable {
    let id: Int
    let age: Int
    let name: String
}
