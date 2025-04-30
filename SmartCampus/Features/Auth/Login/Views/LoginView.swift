//
//  LoginView.swift
//  SmartCampus
//
//  Created by 이민지 on 4/29/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(alignment: .center) { // ??이러면 요소들이 가운데로 세로로 vertical로 정렬되는 듯
            VStack (alignment: .center, spacing: 51) { //항목사이 24pt 간격
                
                //한밭대 로고
                Rectangle() // 무슨 메서드일까
                    .foregroundColor(.clear)
                    .frame(width: 210, height: 210)
                    .background(
                        Image("logo.hanbat")
                            .resizable()
                            .aspectRatio(contentMode: .fill) //뭘까
                            .frame(width: 210, height: 210)
                            .clipped()
                    )
                
                //필드 및 로그인 버튼
                VStack(alignment: .center, spacing: 10) {
                    WhiteButton(text: "아이디를 입력하세요")
                    WhiteButton(text: "비밀번호를 입력하세요")
                    BlueButton(text: "로그인")
                        .padding(.top, 13)
                }
                
                //아이디, 비밀번호, 회원가입 UI 뷰
                HStack(alignment: .center, spacing: 10) {
                    Text("아이디 찾기")
                        .font(Font.custom("Pretendard",size: 12))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    
                    Text("ㅣ")
                        .font(Font.custom("Abel", size: 12))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.74))
                    
                    Text("비밀번호 찾기")
                        .font(Font.custom("Pretendard",size: 12))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    
                    Text("ㅣ")
                        .font(Font.custom("Abel", size: 12))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.74))
                    
                    Text("회원가입")
                        .font(Font.custom("Pretendard",size: 12))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    
                }
                .padding(.top, 20)
                .padding(.bottom, 13)
                .padding(.horizontal, 0) //leading, trailing 한번에 적용
                .frame(maxWidth: .infinity, alignment: .center)//frame 센터 정렬은 뭘까
                
               
            }
        
        
        }
        .padding(.leading, 30)
        .padding(.trailing, 30)
        .frame(width: 393, height: 852, alignment: .center) // 여기서 center는 또 뭔데
        .background(.white)
       
    }
}






#Preview {
    LoginView()
}
