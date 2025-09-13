//
//  ContentView.swift
//  EnvironmentObjectsV16
//
//  Created by Jesús Ervin Chapi Suyo on 2/05/25.
//

import SwiftUI
@Observable
class PersonViewModel{
    var name: String = "Jesus"
    var lastName: String = "Chapi"
    var fullName: String {
         "\(name) \(lastName)"
    }
    func changeName(){
        let names: [(String, String)] =
        [("Jesus", "Chapi"),
        ("Darwin", "Quispe"),
         ("Dysan", "Chura"),
         ("Victor", "Cahui"),
        ]
        
        let randomName = names.randomElement() ?? ("","")
        self.name = randomName.0
        self.lastName = randomName.1
    }
}
struct ContentView: View {
    @Environment(PersonViewModel.self) private var personViewModel: PersonViewModel
    var body: some View {
        @Bindable var personViewModel = personViewModel
        
        VStack {
         
            Text("\(personViewModel.fullName)")
            TextField("Name", text: $personViewModel.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Change Name" , action: {
                personViewModel.changeName()
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(PersonViewModel())
}
