//
//  Placeholder.swift
//  SmartCampus
//
//  Created by 이민지 on 5/5/25.
//

import SwiftUI

struct CustomTextField: View {
    var placeholder: String
    @Binding var text: String //외부에서 데이터 주입
    var placeholderColor: Color = Color(red: 0.8, green: 0.8, blue: 0.8) //글자색
    var textColor: Color = .black //입력 텍스트 색상
    var isSecure: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
                   if text.isEmpty {
                       Text(placeholder)
                           .font( .custom("Pretendard", size: 14))
                           .foregroundColor(placeholderColor)
                   }
            
            Group {
                if isSecure {
                    SecureField("", text: $text)
                } else {
                    TextField("", text: $text)
                }
            }
            .foregroundColor(textColor)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
        
}

#Preview {
    StatefulPreviewWrapper("") { binding in
        CustomTextField(placeholder: "실명을 입력하세요", text: binding, isSecure: false)
    }
}
