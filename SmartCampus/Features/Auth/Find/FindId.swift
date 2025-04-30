//
//  FindID.swift
//  SmartCampus
//
//  Created by 이민지 on 4/30/25.
//

import SwiftUI

struct FindId: View {
    var body: some View {
        //화면 전체 레이아웃
        VStack(alignment:.center, spacing: 0) {
            NavBar(lable: "아이디 / 비밀번호 찾기")
            
            //찾기Nav
            HStack(alignment: .center, spacing: 0) {
                //아이디 찾기
                NavButton(lable: "아이디 찾기", isSelected: true)
                //비밀번호 찾기
                NavButton(lable: "비밀번호 찾기")
                
            }
            .padding(0)
            .frame(maxWidth: .infinity, minHeight: 58, maxHeight: 58, alignment: .bottom)
            .padding(.bottom, 41)
            
            //휴대폰 번호 입력 필드 (lable 없는 버전) + 버튼
            HStack(alignment: .center ,spacing: 13) {
                //입력필드(lable 없는 버전)
                Field(text:"휴대폰 번호 입력 ('-'제외)")
                
                //인증번호 전송 버튼
                BlueStrokeBotton(text: "인증번호 전송")
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 5)
            
            //인증번호 입력 필드 + 버튼
            HStack(alignment: .center, spacing: 13) {
                Field(text:"인증번호 입력")
                
                //인증번호 전송 버튼
                BlueStrokeBotton(text: "확인")
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 5)
            .padding(.bottom, 37)
        
            
            BlueButton(text:"아이디 찾기")
                .padding(.horizontal, 10)
            
        
            Spacer()
        }
        .padding(0)
      
        
        
        
    }
}


#Preview {
    FindId()
}

