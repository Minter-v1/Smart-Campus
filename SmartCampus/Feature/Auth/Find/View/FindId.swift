//
//  FindID.swift
//  SmartCampus
//
//  Created by 이민지 on 4/30/25.
//

import SwiftUI

struct FindId: View {
    //네비게이션 커스텀용 환경변수 선언
    @Environment(\.dismiss) private var dismiss
    @StateObject private var viewModel = FindIdViewModel()
    
    var body: some View {
        //화면 전체 레이아웃
        VStack(alignment:.center, spacing: 0) {
           
            
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
            
            //MARK: - 입력 필드 묶음
            VStack {
                //MARK: - 휴대폰 번호 입력 필드 + 인증번호 전송 버튼
                HStack(alignment: .center ,spacing: 13) {
                    
                
                    //TODO: - 컴포넌트화 하기
                    //휴대폰 번호 입력 필드
                    CustomTextField(placeholder: "휴대폰 번호 입력 ('-' 제외)", text: $viewModel.phoneNumber)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 5)
                        .padding(.leading, 3)
                        .overlay(
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8)),
                            alignment: .bottom
                        )
                        
                    //인증번호 전송 버튼
                    BlueStrokeBotton(text: "인증번호 전송")
                }
                
                
                //MARK: - 인증번호 입력 필드 + 버튼
                HStack(alignment: .center, spacing: 13) {
                    
                    //인증번호 입력 필드
                    CustomTextField(placeholder: "인증번호 입력", text: $viewModel.verifyNumber)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 5)
                        .padding(.leading, 3)
                        .overlay(
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8)),
                            alignment: .bottom
                        )
                    
                    //인증번호 확인 버튼
                    BlueStrokeBotton(text: "확인")
            }
           
                
                
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 37)
            
        
            //MARK: - 아이디 찾기 버튼
            BlueActionButton(text:"아이디 찾기")
                .padding(.horizontal, 10)
            
        
            Spacer()
        }
        .padding(0)
        .background(.white)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                BackNavButton(title:"아이디 / 비밀번호 찾기") {
                    dismiss()
                }
            }
        }
      
        
        
        
    }
}


#Preview {
    FindId()
}

