//
//  ㅅㄷ.swift
//  SmartCampus
//
//  Created by 이민지 on 4/30/25.
//
import SwiftUI

struct InputField: View {
    var placeholder: String = "placeholder"
    @Binding var text: String //외부에서 주입되는 상태값 참조이기 때문에 일반적인 변수처럼 기본값을 줄 수 없음
    var isSecure: Bool = true
    
    var body: some View {
        Group {
            if isSecure {
                SecureField(placeholder, text: $text)
            }
            else {
                TextField(placeholder, text: $text)
            }
        }
        .font(.custom("Pretendard", size: 14))
                .multilineTextAlignment(.leading)
                .foregroundColor(.black)
                .padding(.vertical, 13)
                .padding(.horizontal, 15)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.white)
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(red: 0.9, green: 0.9, blue: 0.9), lineWidth: 1)
                )
    }
    
}

//VStack(alignment: .leading, spacing: 0) {
//    Text(text)
//        .font(Font.custom("Abel", size: 14))
//        .foregroundColor(Color(red: 0.87, green: 0.87, blue: 0.87))
//}
//.padding(.vertical, 4)
//.padding(.leading, 3)
//.padding(.trailing, 3)
//.frame(maxWidth: .infinity, alignment: .leading)
//.overlay(
//    Rectangle()
//        .frame(height: 1)
//        .foregroundColor(Color(red: 0.87, green: 0.87, blue: 0.87)),
//    alignment: .bottom //언더라인
//    
//)
//
//}
//
