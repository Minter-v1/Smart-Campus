//
//  BlueStrokeBotton.swift
//  SmartCampus
//
//  Created by 이민지 on 4/30/25.
//

import SwiftUI

//파란 아웃라인 버튼
struct BlueStrokeBotton: View {
    var text: String
    
    var body: some View {
        //버튼 전체 프레임 레이아웃
        VStack(alignment: .center ,spacing:0) {
            Text(text)
                .font(Font.custom("Abel", size: 14))
                .foregroundColor(Color(red: 0.3, green: 0.69, blue: 0.79))
            }
        .frame(width: 96, height: 31, alignment: .center)
        .padding(0) // 콘텐츠를 프레임에 꽉차게!
        .cornerRadius(9)
        .overlay(
            RoundedRectangle(cornerRadius: 9) // 여기서도 지정하는 것은 무슨 이유일까
                .inset(by: 0.5)
                .stroke(Color(red: 0.3, green: 0.69, blue: 0.79), lineWidth: 1)
        )
    }
}
