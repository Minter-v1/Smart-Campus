//
//  BlueButton.swift
//  SmartCampus
//
//  Created by 이민지 on 4/29/25.
//
import SwiftUI


/*

Mark: 컴포넌트 사용법
ex)
    BlueButton(text: "로그인") {
     print("로그인 버튼 눌림")  // 이게 action 클로저
    }

 */


struct BlueActionButton: View{
    var text: String = "None"
    var action: () -> Void = {}  //실행만 하고 return 없는 '클로저' , 기본값: 아무것도 하지 않는 것으로 설정
    
    var body: some View {
        
        Button(action: action) {
            Text(text)
                .foregroundColor(.white)
                .padding(.vertical, 13)
                .padding(.leading, 0)
                .padding(.trailing, 0)
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color(red: 0.06, green: 0.59, blue: 0.72))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.06, green: 0.59, blue: 0.72), lineWidth: 1))
            
        }
        
        
        
        
    }
}


#Preview {
    BlueActionButton()
}
