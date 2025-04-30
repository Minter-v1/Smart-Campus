//
//  Field.swift
//  SmartCampus
//
//  Created by 이민지 on 4/30/25.
//

import SwiftUI

//레이블 없는 필드 만들기
struct Field:View {
    var text: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(text)
                .font(Font.custom("Abel", size: 14))
                .foregroundColor(Color(red: 0.87, green: 0.87, blue: 0.87))
        }
        .padding(.vertical, 4)
        .padding(.leading, 3)
        .padding(.trailing, 3)
        .frame(maxWidth: .infinity, alignment: .leading)
        .overlay(
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color(red: 0.87, green: 0.87, blue: 0.87)),
            alignment: .bottom //언더라인
            
        )

    }
}
