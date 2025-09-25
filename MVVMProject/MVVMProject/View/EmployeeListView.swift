//
//  EmployeeListView.swift
//  MVVMProject
//
//  Created by Jesús Ervin Chapi Suyo on 24/09/25.
//

import Foundation
import SwiftUI

struct EmployeeListView: View {
    @StateObject private var viewModel = EmployeeListViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.employees) { employee in
                    Text(employee.employee_name)
                }.onDelete(perform: deleteEmployee)
            }
            .navigationTitle("Employees")
            .task {
                await viewModel.fetchEmployees()
            }
                        
        }
    }
    
    private func deleteEmployee(at offsets: IndexSet) {
        viewModel.deleteEmployee(at: offsets)
    }
}

#Preview {
    EmployeeListView()
}
