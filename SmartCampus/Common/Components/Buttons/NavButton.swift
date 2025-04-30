//
//  NavButton.swift
//  SmartCampus
//
//  Created by 이민지 on 4/30/25.
//

import SwiftUI

struct NavButton: View {
    var lable: String
    var isSelected: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Text(lable)
                .font(Font.custom("Abel", size: 14))
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .frame(maxWidth: .infinity)
        }
//        .padding(.horizontal, 157) 패딩 너무 커서 글자짤림
        .padding(.top, 30)
        .padding(.bottom, 10)
        .overlay(
            Rectangle()
                .frame(height: isSelected ? 2 : 1) //선택되면 굵기 2
                .foregroundColor(isSelected ? Color(red: 0.29, green: 0.29, blue: 0.29) : Color(red: 0.71, green: 0.71, blue: 0.71)),
            alignment: .bottom
            
        )
        .frame(maxWidth: .infinity)
    }
}
