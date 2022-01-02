//
//  ENPOScreen1.swift
//  Onboarding
//
//  Created by mhs on 21/12/2021.
//  Copyright © 2021 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct ENPOScreen1: View {
    var body: some View {
        if #available(iOS 14.0, *) {
            ZStack {
                VStack(spacing: 0) {
                    Spacer()
                        .frame(maxWidth: .infinity, maxHeight: 40).background(Color("ENPOColor"))
                    
                    VStack(alignment: .leading) {
                        Image("arrow_white").padding().onTapGesture(perform: {
                            //presentationMode.wrappedValue.dismiss()
                        })
                        Text("ENPO Digital")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 20, trailing: 0))
                            .font(.system(size: 30, weight: .semibold))
                            .foregroundColor(Color("WhiteColor"))
                    }
                    .frame(width: .infinity, height: 100, alignment: .leading)
                    .background(Color("ENPOColor"))
                   
                    Image("Group 5374")
                        .padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 0))
               
                    Divider()
                        .padding(EdgeInsets(top: 20, leading: 40, bottom: 20, trailing: 40))
                    
                    
                    HStack (alignment: .top) {
                        
                        VStack(alignment: .center) {
                            Image("Group 5747")
                                
                            Text("Find ENPO Branch")
                                .font(.system(size: 14, weight: .bold))
                                .foregroundColor(Color("BlackColor"))
                                .multilineTextAlignment(.center)
                        }.frame(maxWidth: 90)
                        .padding(EdgeInsets(top: 10, leading: 2, bottom: 10, trailing: 2))
                        
                        Spacer()
                        
                        VStack(alignment: .center) {
                            Image("Find a Branch ATM")
                                
                            Text("Find ENPO ATM")
                                .font(.system(size: 14, weight: .bold))
                                .foregroundColor(Color("BlackColor"))
                                .multilineTextAlignment(.center)
                        }.frame(maxWidth: 90)
                        .padding(EdgeInsets(top: 10, leading: 2, bottom: 10, trailing: 2))
                        
                        Spacer()
                        
                        VStack(alignment: .center) {
                            Image("Load Yalla Card")
                                
                            Text("ENPO Points")
                                .font(.system(size: 14, weight: .bold))
                                .foregroundColor(Color("BlackColor"))
                                .multilineTextAlignment(.center)
                        }.frame(maxWidth: 90)
                        .padding(EdgeInsets(top: 10, leading: 2, bottom: 10, trailing: 2))
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    
                    ForEach(0..<7) { _ in
                        Spacer()
                    }
                    
                }.background(Color("WhiteSecondary"))
                
            }
            .frame(width: .infinity, height: .infinity, alignment: .center)
            .ignoresSafeArea()
        } else {
            // Fallback on earlier versions
        }
    }
}

struct ENPOScreen1_Previews: PreviewProvider {
    static var previews: some View {
        ENPOScreen1()
    }
}
