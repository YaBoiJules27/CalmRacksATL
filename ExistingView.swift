//
//  ExistingView.swift
//  UserAuth
//
//  Created by Jules Menelas on 7/3/24.
//

import SwiftUI

struct CardView<Content: View>: View {
    var content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            content
        }
        .padding()
        .background(Color.black)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding([.horizontal, .top])
    }
}

struct ExistingView: View {
    @State private var paymentSuccessful = false
    @State private var showingPaymentAlert = false
    
    var body: some View {
        VStack {
            CardView {
                Image("TSHIRT_CALM_RACK FF")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 400, alignment: .topLeading)
                Text("$35.00")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .frame(width: 400, height:100, alignment: .center)
                    .font(.system(size: 36))
                Button(action: {
                    paymentSuccessful = Bool.random()
                    showingPaymentAlert = true
                }) {
                    Text("Pay with Apple Pay")
                        .padding()
                        .background(Color.white)
                        .foregroundColor(.blue)
                        .cornerRadius(8)
                        .frame(width: 400, height:100, alignment: .center)
                }
            }
        }
        .alert(isPresented: $showingPaymentAlert) {
            Alert(
                title: Text(paymentSuccessful ? "Payment Successful" : "Payment Failed"),
                message: Text(paymentSuccessful ? "Your transaction was successful" : "Your transaction could not be completed"),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}

#Preview {
    ExistingView()
}
