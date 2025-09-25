//
//  EmployeeViewModel.swift
//  MVVMProject
//
//  Created by Jesús Ervin Chapi Suyo on 24/09/25.
//
import Combine
import Foundation

@MainActor
class EmployeeListViewModel : ObservableObject {
    @Published var employees: [Employee] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    private let  apiService: APIService
    
    init (apiService: APIService = APIService()) {
        self.apiService = apiService
    }
    
    func fetchEmployees() async {
        do {
            self.employees = try await apiService.fetchEmployees()
            print("Employees fetched: \(employees.count)")
        }catch {
            
        }
        
    }
    
    func deleteEmployee(at offsets: IndexSet) {
    }
}
