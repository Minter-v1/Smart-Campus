//
//  SignUp.swift
//  SmartCampus
//
//  Created by 이민지 on 4/29/25.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
            NavBar(lable: "회원가입")
            
            ScrollView{
                //사진 등록 뷰
                VStack(alignment: .center, spacing: 0) {
                    VStack(alignment: .center, spacing: 10) {
                        Image("person.outline")
                    } // 이 부분 잘 이해 안감. -> 패딩 부분에 배경 입혀져 있으니까? -> 오 뭔가 배경으로 작업한 것 같은..
                    .padding(10)
                    .frame(width: 79, height: 79, alignment: .top)
                    .background(Color(red: 0.77, green: 0.77, blue: 0.77))
                    .cornerRadius(86)
                    
                }
                .padding(.top, 33)
                .padding(.bottom, 10)
                .padding(.horizontal, 30)
                
                InputField(lable:"이름", placeholder:"살명을 입력하세요")
                InputField(lable:"학번", placeholder:"학번")
                InputField(lable:"아이디", placeholder:"아이디")
                InputField(lable:"비밀번호", placeholder:"비밀번호는 8자리 이상")
                InputField(lable:"비밀번호 확인", placeholder:"비밀번호 확인")
                InputField(lable:"이메일", placeholder:"이메일 주소")
                InputField(lable:"휴대폰 번호", placeholder:"'-'구분없이 입력")
                

           
            }
            
            //회원가입 버튼 -> 스크롤뷰 밖으로 빼서 고정됨
            VStack(alignment: .center, spacing:0) {
                BlueButton(text: "회원가입")
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 10)
            
           
            
        }
    }







#Preview {
    SignUpView()
}
