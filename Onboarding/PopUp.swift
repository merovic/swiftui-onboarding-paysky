//
//  PopUp.swift
//  Onboarding
//
//  Created by admin on 06/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct PopUp: View {
    var title: String
    var message: String
    var submessage: String
    var buttonText: String
    var button2Text: String
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
                        
                        Image("banner_done")
                            .frame(width: 30, height: .infinity, alignment: .center)
                        
                        Text(title)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(width: 300, height: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .font(Font.system(size: 20, weight: .bold))
                            .foregroundColor(Color.black)
                        
                        VStack(alignment: .center, spacing: 5){
                            Text(message)
                                .multilineTextAlignment(.center)
                                .font(Font.system(size: 20, weight: .bold))
                                .foregroundColor(Color.blue)
                            
                            Text(submessage)
                                .multilineTextAlignment(.center)
                                .frame(maxWidth: .infinity)
                                .frame(width: 300, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .font(Font.system(size: 20, weight: .bold))
                                .foregroundColor(Color.black)
                        }
                        .frame(width: .infinity, height: .infinity, alignment: .center)
                        
                        
                        HStack(alignment: .center, spacing: 5){
                            Button(action: {
                                // Dismiss the PopUp
                                //                    withAnimation(.linear(duration: 0.3)) {
                                //                        show = false
                                //                    }
                            }, label: {
                                Text(buttonText)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 18, alignment: .center)
                                    .foregroundColor(Color.white)
                                    .font(Font.system(size: 17, weight: .semibold))
                            }).buttonStyle(BlueButton())
                            
                            
                            Button(action: {
                                // Dismiss the PopUp
                                withAnimation(.linear(duration: 0.3)) {
                                    show = false
                                }
                            }, label: {
                                Text(button2Text)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 18, alignment: .center)
                                    .foregroundColor(Color.white)
                                    .font(Font.system(size: 17, weight: .semibold))
                            }).buttonStyle(BlueButton())
                        }
                        
                    }
                    .frame(width: .infinity, height: .infinity, alignment: .center)
                    .padding()
                    .border(Color.white, width: 2)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    
                }
                .frame(width: 400, height: 500, alignment: .center)
                
            }
        }
    }
}

//struct PopUp_Previews: PreviewProvider {
//    static var previews: some View {
//        PopUp(title: "Your Yalla card request has successfully been recived one of our agents will contact you at the earliest", message: "In a hurry?", submessage: "Visit the nearest post office and pick your card on spot", buttonText: "ENPO BRANCHES", button2Text: "DISMISS", show: nil)
//    }
//}


struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(.blue))
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
    }
}
