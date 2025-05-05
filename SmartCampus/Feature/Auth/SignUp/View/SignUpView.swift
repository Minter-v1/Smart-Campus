//
//  SignUp.swift
//  SmartCampus
//
//  Created by 이민지 on 4/29/25.
//

import SwiftUI

struct SignUpView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject private var viewModel = SignUpViewModel() //뷰모델 생성
    
    private func fieldList() -> [(String, String, Binding<String>)] {
            [
                ("이름", "실명을 입력하세요", $viewModel.userName),
                ("학번", "학번을 입력하세요", $viewModel.userNumber),
                ("아이디", "아이디", $viewModel.userId),
                ("비밀번호", "비밀번호는 8자리 이상", $viewModel.userPassword),
                ("비밀번호 확인", "비밀번호 확인", $viewModel.userPasswordConfirm),
                ("이메일", "이메일 주소", $viewModel.userEmail),
                ("휴대폰 번호", "'-' 구분없이 입력", $viewModel.userPhoneNumber)
            ]
        }

    
    var body: some View {
        //MARK: - 전체 뷰 (background 지정용)
        VStack {
            //MARK: - 스크롤 뷰 섹선(입력 필드 섹션)
            ScrollView(.vertical, showsIndicators: false){
                    //MARK: - 사용자 아이콘
                    VStack(alignment: .center, spacing: 0) {
                        VStack(alignment: .center, spacing: 10) {
                            Image("person.outline")
                        }
                        .padding(10)
                        .frame(width: 79, height: 79, alignment: .top)
                        .background(Color(red: 0.77, green: 0.77, blue: 0.77))
                        .cornerRadius(86)
                        
                        
                        
                    }
                    .padding(.top, 33)
                    .padding(.bottom, 10)
                    .padding(.horizontal, 30)
                    
                    //입력 필드 섹션
                    ForEach(fieldList(), id: \.0) { label, placeholder, binding in
                        Group {
                            if label.contains("비밀번호") {
                                LabelField(label: label, placeholder: placeholder, isSecure: true, text: binding)
                            } else {
                                LabelField(label: label, placeholder: placeholder, text: binding)
                            }
                        }
                        .padding(.bottom, 25)
                            }
                    
                    
                    
                    
                }
                .padding(.horizontal, 30)
                .navigationBarBackButtonHidden(true)
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading) {
                        BackNavButton(title: "회원가입") {
                            dismiss()
                        }
                    }
                }
            
            
                
            //MARK: - 회원가입 버튼(bottom 고정)
            VStack(alignment: .center, spacing:0) {
                BlueActionButton(text: "회원가입")
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 10)
        }
        .background(.white)
        
            
           
            
        }
    }







#Preview {
    SignUpView()
}
