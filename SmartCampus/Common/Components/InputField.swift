//
//  ㅅㄷ.swift
//  SmartCampus
//
//  Created by 이민지 on 4/30/25.
//
import SwiftUI

struct InputField: View {
    var lable: String
    var placeholder: String
    
    var body: some View {
        //lable + placeholder 스택 합친 스택
        VStack(alignment: .leading, spacing: 13) {
            
            //lable 스택
            VStack(alignment: .center, spacing:0) {
                Text(lable)
                    .font(Font.custom("Pretendard", size: 16).weight(.medium)) // weight는 뭘까나? 굵기?
                    .foregroundColor(.black)
            }
            .padding(0)
            
            //placeholder 스택
            HStack(alignment: .top, spacing: 10){
                Text(placeholder)
                    .font(Font.custom("Pretendard", size: 14))
                    .foregroundColor(Color(red: 0.87, green: 0.87, blue: 0.87))
            }
            .padding(.vertical, 4)
            .padding(.leading, 3)
            .padding(.trailing, 31)
            .frame(maxWidth: .infinity, alignment: .leading)
            .overlay(
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color(red: 0.87, green: 0.87, blue: 0.87)),
                alignment: .bottom
            )
            
            
        }
        .padding(.top, 15)
        .padding(.horizontal, 30)
        .padding(.bottom, 10)
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}
