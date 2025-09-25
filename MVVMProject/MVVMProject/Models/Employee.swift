//
//  Employee.swift
//  MVVMProject
//
//  Created by Jesús Ervin Chapi Suyo on 24/09/25.
//

struct Employees: Decodable {
    let status: String
    let data: [Employee]
}

struct Employee: Identifiable, Decodable {
    let id: Int
    let employee_name: String
    let employee_salary: Int
    let employee_age: Int
    let profile_image: String
}
