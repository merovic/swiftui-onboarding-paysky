//
//  OnboardingViewPure.swift
//  Onboarding
//
//  Created by Augustinas Malinauskas on 06/07/2020.
//  Copyright © 2020 Augustinas Malinauskas. All rights reserved.
//

import SwiftUI

struct OnboardingViewPure: View {
    var data: [OnboardingDataModel]
    var doneFunction: () -> ()
    
    @State var slideGesture: CGSize = CGSize.zero
    @State var curSlideIndex = 0
    var distance: CGFloat = UIScreen.main.bounds.size.width
    
    
    func nextButton() {
        if self.curSlideIndex == self.data.count - 1 {
            doneFunction()
            return
        }
        
        if self.curSlideIndex < self.data.count - 1 {
            withAnimation {
                self.curSlideIndex += 1
            }
        }
    }
    
    func skipButton() {
        withAnimation {
            self.curSlideIndex = self.data.count - 1
        }
    }
    
    var body: some View {
        ZStack {
            Color(.systemBackground).edgesIgnoringSafeArea(.all)
            Button(action: skipButton) {
                self.skipView()
            }.frame(minWidth: 0, idealWidth: 50, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .topTrailing)
            ZStack(alignment: .center) {
                ForEach(0..<data.count) { i in
                    OnboardingStepView(data: self.data[i])
                        .offset(x: CGFloat(i) * self.distance)
                        .offset(x: self.slideGesture.width - CGFloat(self.curSlideIndex) * self.distance)
                        .animation(.spring())
                        .gesture(DragGesture().onChanged{ value in
                            self.slideGesture = value.translation
                        }
                        .onEnded{ value in
                            if self.slideGesture.width < -50 {
                                if self.curSlideIndex < self.data.count - 1 {
                                    withAnimation {
                                        self.curSlideIndex += 1
                                    }
                                }
                            }
                            if self.slideGesture.width > 50 {
                                if self.curSlideIndex > 0 {
                                    withAnimation {
                                        self.curSlideIndex -= 1
                                    }
                                }
                            }
                            self.slideGesture = .zero
                        })
                }
            }
            
            VStack {
                Spacer(minLength: 10)
                HStack {
                    self.progressView()
                    Spacer()
                    Button(action: nextButton) {
                        self.nextView()
                    }
                }
            }
            .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
        }
    }
    
    func nextView() -> some View {
        Group {
            if self.curSlideIndex == self.data.count - 1 {
                HStack {
                    Text("Start")
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                        .foregroundColor(Color(.white))
                }
                .frame(width: 120, height: 45)
                .background(Color(.black))
                .cornerRadius(5)
            } else {
                HStack {
                    Image("arrow_onboarding-white")
                        .frame(width: 20, height: 20, alignment: .center)
                }
                .frame(width: 65, height: 65)
                .background(Color(.black))
                .clipShape(Circle())
            }
        }
    }
    
    func skipView() -> some View {
        Group {
            if self.curSlideIndex != self.data.count - 1 {
                HStack {
                    Text("Skip")
                        .font(.system(size: 16, weight: .medium, design: .rounded))
                        .foregroundColor(Color(.black))
                }
                .frame(width: 80, height: 45)
                .background(Color(.white))
                .cornerRadius(5)
            }
        }
    }
    
    func progressView() -> some View {
        HStack {
            ForEach(0..<data.count) { i in
                Circle()
                    .scaledToFit()
                    .frame(width: 12)
                    .foregroundColor(self.curSlideIndex == i ? Color(.systemIndigo) : Color(.systemGray))
            }
        }
    }
    
}

struct OnboardingViewPure_Previews: PreviewProvider {
    static let sample = OnboardingDataModel.data
    static var previews: some View {
        OnboardingViewPure(data: sample, doneFunction: { print("done") })
            .previewDevice("iPhone 12 Pro Max")
    }
}


struct EdgeBorder: Shape {

    var width: CGFloat
    var edges: [Edge]

    func path(in rect: CGRect) -> Path {
        var path = Path()
        for edge in edges {
            var x: CGFloat {
                switch edge {
                case .top, .bottom, .leading: return rect.minX
                case .trailing: return rect.maxX - width
                }
            }

            var y: CGFloat {
                switch edge {
                case .top, .leading, .trailing: return rect.minY
                case .bottom: return rect.maxY - width
                }
            }

            var w: CGFloat {
                switch edge {
                case .top, .bottom: return rect.width
                case .leading, .trailing: return self.width
                }
            }

            var h: CGFloat {
                switch edge {
                case .top, .bottom: return self.width
                case .leading, .trailing: return rect.height
                }
            }
            path.addPath(Path(CGRect(x: x, y: y, width: w, height: h)))
        }
        return path
    }
}

extension View {
    func border(width: CGFloat, edges: [Edge], color: Color) -> some View {
        overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }
}
