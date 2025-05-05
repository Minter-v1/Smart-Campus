//
//  FindPw.swift
//  SmartCampus
//
//  Created by 이민지 on 4/30/25.
//

import SwiftUI

struct FindPw: View {
    @Environment(\.dismiss) var dismiss
    @StateObject private var viewModel = FindPwViewModel()
    
    
    var body: some View {
        //화면 전체 레이아웃
        VStack(alignment: .center, spacing: 0) {

            
            HStack(alignment: .center, spacing: 0) {
                //아이디 찾기
                NavButton(lable:"아이디 찾기")
                NavButton(lable:"비밀번호 찾기", isSelected: true)
            }
            .padding(.bottom, 46)
            
            //MARK: - 입력 필드 섹션
            VStack(alignment: .center, spacing: 10) {
                
                //MARK: - 아이디 입력 필드
                CustomTextField(placeholder: "아이디 입력", text: $viewModel.userId)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical, 4)
                    .padding(.vertical, 3)
                    .overlay(
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(Color(red: 0.87, green: 0.87, blue: 0.87)),
                        alignment: .bottom
                    )
                
                //MARK: - 휴대폰 번호 입력 필드 + 전송 버튼
                HStack(alignment: .center, spacing: 13) {
                    //입력필드
                    CustomTextField(placeholder: "휴대폰 번호 입력 ('-' 제외)", text: $viewModel.phoneNumber)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 4)
                        .padding(.vertical, 3)
                        .overlay(
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(Color(red: 0.87, green: 0.87, blue: 0.87)),
                            alignment: .bottom
                        )
                    
                    //전송 버튼
                    BlueStrokeBotton(text: "인증번호 전송")
                }
                
                //MARK: - 인증 번호 입력 필드 + 확인 버튼
                HStack(alignment: .center, spacing: 13) {
                    //입력필드
                    CustomTextField(placeholder: "인증번호 입력", text: $viewModel.verificationCode)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 4)
                        .padding(.vertical, 3)
                        .overlay(
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(Color(red: 0.87, green: 0.87, blue: 0.87)),
                            alignment: .bottom
                        )
                    
                    //전송 버튼
                    BlueStrokeBotton(text: "확인")
                }
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 42)
           

          
            
            
            
            //MARK: - 비밀번호 찾기 버튼
            BlueActionButton(text:"비밀번호 찾기")
                .padding(.horizontal,10)
            Spacer()
        }
        .background(.white)
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                BackNavButton(title: "아이디 / 비밀번호 찾기") {
                    dismiss()
                }
            }
        }
        
    }
}



#Preview {
    FindPw()
}
