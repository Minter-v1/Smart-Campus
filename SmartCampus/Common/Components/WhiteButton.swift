//
//  WhiteButton.swift
//  SmartCampus
//
//  Created by 이민지 on 4/29/25.
//

import SwiftUI


struct WhiteButton: View {
    var text: String
    
    var body: some View {
    
        VStack(alignment:.leading, spacing: 10) { //spacing 파라미터뭐지?
            Text(text)
                .font(Font.custom("Pretendard", size: 14)) //Constants에서 등록해서 못쓰나
                .multilineTextAlignment(.center)//
                .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))//
        }
        .padding(.leading, 15)
        .padding(.vertical, 13)
        .padding(.trailing, 0)//0인데 명시?
        .frame(maxWidth: .infinity, alignment: .topLeading) //얘도 잘 모르겠음
        .background(.white) //배경색 지정?
        .cornerRadius(8) //
        .overlay(//
            RoundedRectangle(cornerRadius: 8)
                .inset(by: 0.5)
                .stroke(Color(red: 0.9, green: 0.9, blue: 0.9), lineWidth: 1)
        )
    }
}

