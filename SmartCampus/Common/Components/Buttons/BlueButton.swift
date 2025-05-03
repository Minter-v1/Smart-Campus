//
//  BlueButton.swift
//  SmartCampus
//
//  Created by 이민지 on 4/29/25.
//
import SwiftUI

struct BlueButton: View{
    var text: String = "blue button"
    
    var body: some View {
        VStack(alignment: .center) {
            Text(text)
                .foregroundColor(.white)
        }
        .padding(.vertical, 13)
        .padding(.leading, 0)
        .padding(.trailing, 0)
        .frame(maxWidth: .infinity, alignment: .center) //왜 height는 지정하지 않을까 / maxWidth는 뭔가 프레임 최대로 꽉 채우라느 것 같응데
        .background(Color(red: 0.06, green: 0.59, blue: 0.72))
        .cornerRadius(8)
        .overlay(//오버레이 왜하지? 오버레이느 ㄴ뭔데
            RoundedRectangle(cornerRadius: 8) //얘는뭐지
                .inset(by: 0.5)
                .stroke(Color(red: 0.06, green: 0.59, blue: 0.72), lineWidth: 1))
        
    }
}


#Preview {
    BlueButton()
}
