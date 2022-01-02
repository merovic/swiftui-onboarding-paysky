//
//  ErrorPopUp.swift
//  Onboarding
//
//  Created by admin on 06/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct ErrorPopUp: View {
    var title: String
    var buttonText: String
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
            
            if show {
                
                // PopUp background color
                Color.black.opacity(0.3).edgesIgnoringSafeArea(.all)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.white)
                    // PopUp Window
                    VStack(alignment: .center, spacing: 35) {
                        
                        Image("pending_banner")
                            .frame(width: 30, height: .infinity, alignment: .center)
                        
                        Text(title)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(width: 300, height: .infinity, alignment: .center)
                            .font(Font.system(size: 20, weight: .bold))
                            .foregroundColor(Color.black)
                        
                        Button(action: {
                            // Dismiss the PopUp
                            withAnimation(.linear(duration: 0.3)) {
                                show = false
                            }
                        }, label: {
                            Text(buttonText)
                                .frame(maxWidth: .infinity)
                                .frame(height: 18, alignment: .center)
                                .foregroundColor(Color.white)
                                .font(Font.system(size: 17, weight: .semibold))
                        }).buttonStyle(BlueButton())
                        
                    }
                    .frame(width: .infinity, height: .infinity, alignment: .center)
                    .padding()
                    .border(Color.white, width: 2)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    
                }
                .frame(width: 400, height: 400, alignment: .center)
                
            }
        }
    }
}

//struct ErrorPopUp_Previews: PreviewProvider {
//    static var previews: some View {
//        ErrorPopUp(title: "You have already requested a card earlier and it is under process, we appreciate your patience till your Yalla card is delivered", buttonText: "CLOSE")
//    }
//}
