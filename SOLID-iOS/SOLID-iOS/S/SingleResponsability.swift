//
//  SingleResponsability.swift
//  SOLID-iOS
//
//  Created by Jesús Ervin Chapi Suyo on 19/09/25.
//

class UserManager{
    func saveUser(){
        //save user to database
    }
    
    func sendWelcomeEmail(){
        //send welcome email to user
    }
}

///Problem: UserManager is responsible for both user storage and email sending. If we need to change the email format, we also have to modify this class, which is unrelated to user storage.

//SOLUTION:
class UserRepository {
    func saveUser() {
        // Save user to database
    }
}

class EmailService {
    func sendWelcomeEmail() {
        // Send email to user
    }
}
