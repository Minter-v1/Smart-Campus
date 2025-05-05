//
//  Placeholder.swift
//  SmartCampus
//
//  Created by 이민지 on 5/5/25.
//

import SwiftUI

struct CustomTextField: View {
    var placholder: String
    @Binding var text: String //외부에서 데이터 주입
    var placeholderColor: Color = .gray //글자색
    var textColor: Color = .primary //?뭐지
    
    var body: some View {
        ZStack(alignment: .leading) {
                   if text.isEmpty {
                       Text(placeholder)
                           .foregroundColor(placeholderColor)
                           .padding(.horizontal, 4)
                   }

                   TextField("", text: $text)
                       .foregroundColor(textColor)
                       .padding(.horizontal, 4)
               }
    }
}

#Preview {
    CustomTextField()
}
