//
//  OnboardingModel.swift
//  Onboarding
//
//  Created by Augustinas Malinauskas on 06/07/2020.
//  Copyright © 2020 Augustinas Malinauskas. All rights reserved.
//

import Foundation

struct OnboardingDataModel {
    var image: String
    var heading: String
    var text: String
}

extension OnboardingDataModel {
    static var data: [OnboardingDataModel] = [
        OnboardingDataModel(image: "fourth-onboarding", heading: "Security & Privacy", text: "With Yalla, your money is safe and secured with Egypt Post and Visa"),
        OnboardingDataModel(image: "fourth-onboarding", heading: "Explore the World", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        OnboardingDataModel(image: "fourth-onboarding", heading: "Live Life Baby", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
        OnboardingDataModel(image: "fourth-onboarding", heading: "Work Hard", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
    ]
}
