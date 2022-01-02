//
//  OnboardingStepView.swift
//  Onboarding
//
//  Created by Augustinas Malinauskas on 06/07/2020.
//  Copyright © 2020 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct OnboardingStepView: View {
    var data: OnboardingDataModel
    
    var body: some View {
        VStack {
           
            Image(data.image)
                .frame(width: 100, height: 100, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .scaledToFit()
                .padding(.bottom, 70)
            
            Text(data.heading)
                .font(.system(size: 22, design: .rounded))
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 70, leading: 0, bottom: 20, trailing: 0))
            
            Text(data.text)
                .font(.system(size: 20, design: .rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
        }
    .padding()
    }
}

struct OnboardingStepView_Previews: PreviewProvider {
    static var data = OnboardingDataModel.data[0]
    static var previews: some View {
        OnboardingStepView(data: data)
    }
}
