//
//  NewMainPopUp.swift
//  Onboarding
//
//  Created by mhs on 23/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct NewMainPopUp: View {
    
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
                    VStack(alignment: .center, spacing: 20) {
                        
                        Image("Group 5821")
                    
                        Text("ماذا تحب أن تفعل اليوم؟")
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .frame(width: 300, height: .infinity, alignment: .center)
                            .font(Font.system(size: 20, weight: .bold))
                            .foregroundColor(Color.black)
                        
                        VStack(alignment: .center, spacing: 10){
                            
                            thisDesign(icon: .constant("Group 5813"), text: .constant("Thanks"))
                            
                            thisDesign(icon: .constant("Group 5813"), text: .constant("اربط بطاقة يلّا"))
                            
                            thisDesign(icon: .constant("Group 5815"), text: .constant("إرسال أو طلب أموال"))
                            
                            thisDesign(icon: .constant("Group 5816"), text: .constant("إضافة رصيد إلى بطاقة يلّا"))
                            
                            thisDesign(icon: .constant("Group 5817"), text: .constant("ادفع فواتيرك"))
                            
                            thisDesign(icon: .constant("Group 5818"), text: .constant("شحن رصيد موبايلك"))
                            
                            thisDesign(icon: .constant("Group 5819"), text: .constant("اطلب دواء"))
                            
                            thisDesign(icon: .constant("Group 5820"), text: .constant("اشتري قسائم الخصم"))
                            
                        }
                        .frame(width: .infinity, height: .infinity, alignment: .center)
                        
                        Text("إغلاق")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(Color("WhiteColor"))
                            .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .center)
                            .background(Color("PrimaryColor"))
                            .cornerRadius(8).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                            .onTapGesture {
                                self.show = false
                            }
                        
                    }
                    .frame(width: .infinity, height: .infinity, alignment: .center)
                    .padding()
                    .background(Color.clear)
                    
                }
                .frame(width: 400, height: 700, alignment: .center)
                
            }
        }
    }
}

struct NewMainPopUp_Previews: PreviewProvider {
    static var previews: some View {
        NewMainPopUp(show: .constant(true))
    }
}


struct thisDesign: View {
    
    @Binding var icon: String
    @Binding var text: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            HStack (alignment: .center, spacing: 5) {
                Image(icon)
                Text(text)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(Color.black)
                    .frame(maxWidth: .infinity, maxHeight: 45, alignment: .leading)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                  
            }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
        }
        .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 1)
            )
        .frame(maxWidth: .infinity, maxHeight: 45)
    }
}
