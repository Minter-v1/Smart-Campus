//
//  StatusButton.swift
//  SmartCampus
//
//  Created by 이민지 on 5/3/25.
//
import SwiftUI

struct FeelingColdView: View {
    var isSelected: Bool = true
    
    var body: some View {
        //전체 뷰
        HStack(alignment:.center, spacing:0) {
            
            //이미지뷰
            Image("person.cold")
                .padding(.trailing, 12)
            
            Text("추워요!")
                .font(
                    Font.custom("Pretendard", size: 16)
                    .weight(.medium)
                )
        }
        .padding(.leading, 35)
        .padding(.trailing, 43)
        .frame(maxWidth: .infinity, minHeight: 76, alignment: .leading)
        .background(.white)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(isSelected
                        ? Color(red: 0.06, green: 0.59, blue: 0.72)
                        : Color.clear, //stroke 없음
                        lineWidth: 1
                       )
        )
        
        
        
        
        
        
    }
}


#Preview() {
    FeelingColdView()
}
