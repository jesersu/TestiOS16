//
//  PaymentProcessor.swift
//  SOLID-iOS
//
//  Created by Jesús Ervin Chapi Suyo on 19/09/25.
//

//BAD EXAMPLE: Because we are going to call this class every time we add a new payment method.
class PaymentProcessor {
    func processPayment(method: String){
        if method == "CreditCard" {
                // Process credit card payment
        }
        else if method == "PayPal" {
                // Process PayPal payment
        }
    }
}

//Good EXAMPLE: Because now we can add new payment methods without modifying the PaymentProcessor class.

protocol PaymentMethodProtocol {
    func processPayment()
}

class CreditCardPayment: PaymentMethodProtocol {
    func processPayment() {
        // Process credit card payment
    }
}

class PayPalPayment: PaymentMethodProtocol {
    func processPayment() {
        // Process PayPal payment
    }
}

class PaymentProcessorO {
    func processPayment(method: PaymentMethodProtocol){
        method.processPayment()
    }
}

class demo{
    lazy var method: PaymentMethodProtocol? = nil
    let processor = PaymentProcessorO()
    
 
    func actionPaymentCreditCard(){
        processor.processPayment(method: CreditCardPayment())
    }
    
    func actionPaymentPayPal(){
        processor.processPayment(method: PayPalPayment())
    }
}
