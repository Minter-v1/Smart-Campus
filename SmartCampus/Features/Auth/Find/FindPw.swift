//
//  FindPw.swift
//  SmartCampus
//
//  Created by 이민지 on 4/30/25.
//

import SwiftUI

struct FindPw: View {
    var body: some View {
        //화면 전체 레이아웃
        VStack(alignment: .center, spacing: 0) {
            NavBar(lable: "아이디 / 비밀번호 찾기")
            
            HStack(alignment: .center, spacing: 0) {
                //아이디 찾기
                NavButton(lable:"아이디 찾기")
                NavButton(lable:"비밀번호 찾기", isSelected: true)
            }
            .padding(.bottom, 46)
            
            //아이디 입력 필드
            Field(text:"아이디 입력")
                .padding(.horizontal, 30)
                .padding(.vertical, 5)
            
            //휴대폰 번호 입력 필드 + 버튼
            HStack(alignment: .center, spacing: 13) {
                Field(text: "휴대폰 번호 입력('-'제외)")
                BlueStrokeBotton(text: "인증번호 전송")
                }
            .padding(.horizontal, 30)
            .padding(.vertical, 5)
            
            //인증번호 입력 필드 + 버튼
            HStack(alignment: .center, spacing: 13) {
                Field(text: "인증번호 입력")
                BlueStrokeBotton(text:"확인")
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 5)
            .padding(.bottom, 37)
            
            
            
            //하단 비밀번호 찾기 버튼
            BlueButton(text:"비밀번호 찾기")
                .padding(.horizontal,10)
        }
        Spacer()
    }
}



#Preview {
    FindPw()
}
