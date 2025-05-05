//
//  LabelField.swift
//  SmartCampus
//
//  Created by 이민지 on 5/4/25.
//

import SwiftUI

struct LabelField: View {
    var label: String
    var placeholder: String
    var isSecure: Bool = false
    @Binding var text: String
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 13) {
            Text(label)
                .font(
                    .custom("Pretendard",size: 16)
                    .weight(.semibold)
                )
                .foregroundColor(.black)
            
            
            CustomTextField(placeholder: placeholder, text: $text, isSecure: isSecure)
            .padding(.vertical, 4)
            .padding(.leading, 3)
            .padding(.trailing, 31)
            .overlay(
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color(red: 0.87, green: 0.87, blue: 0.87))
                ,alignment: .bottom
            )
                
            
        }
        .frame(maxWidth: .infinity,alignment: .leading)
    }
}

#Preview {
    StatefulPreviewWrapper("") { binding in
        LabelField(label:"이름",placeholder: "실명을 입력하세요", text: binding)
    }
  
}
