//
//  LoginView.swift
//  SmartCampus
//
//  Created by 이민지 on 4/29/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel() //뭐임 ㅅㅂ? 뷰모델 연결
    
    
    
    var body: some View {
        NavigationStack {
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
                        CustomTextField(placeholder: "아이디를 입력하세요", text: $viewModel.userId)
                            //TODO: - 재사용성 높이기 위한 컴포넌트 화
                            .frame(maxWidth: .infinity, alignment: .center)
                            .cornerRadius(8)
                            .padding(.vertical, 10)
                            .padding(.leading, 15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color(red: 0.9, green: 0.9, blue: 0.9), lineWidth: 1)
                            )
                            
                        
                        //MARK: - 비밀번호 입력필드
                        CustomTextField(placeholder: "비밀번호를 입력하세요", text: $viewModel.password, isSecure: true)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .cornerRadius(8)
                            .padding(.vertical, 10)
                            .padding(.leading, 15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color(red: 0.9, green: 0.9, blue: 0.9), lineWidth: 1)
                            )
                            .padding(.top, 3)
                            
                            
                        
                      
                        
                        
                        //상태값 변경
                        BlueActionButton(text:"로그인") {
                            viewModel.login()
                        }
                            .padding(.top, 13)
                    }
                    
                    NavigationLink (
                        destination: HomeView(),
                        isActive: $viewModel.isValid,
                        label: { EmptyView() }
                        
                    )
                    
                    
                        //아이디, 비밀번호, 회원가입 UI 뷰
                        HStack(alignment: .center, spacing: 10) {
                            NavigationLink(
                                destination: FindId()
                            ) {
                                Text("아이디 찾기")
                                    .font(Font.custom("Pretendard",size: 12))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                            }
                           
                            
                            Text("ㅣ")
                                .font(Font.custom("Abel", size: 12))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.74))
                            
                            NavigationLink(destination: FindPw()) {
                                Text("비밀번호 찾기")
                                    .font(Font.custom("Pretendard",size: 12))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                            }
                            
                            
                            Text("ㅣ")
                                .font(Font.custom("Abel", size: 12))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(red: 0.74, green: 0.74, blue: 0.74))
                            
                            NavigationLink(destination: SignUpView()) {
                                Text("회원가입")
                                    .font(Font.custom("Pretendard",size: 12))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                            }
                            
                            
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
                .navigationTitle("로그인")
                .navigationBarHidden(true)
                
            }
           
        
        
        
      
        
    }
    
    
}



#Preview {
    LoginView()
}
