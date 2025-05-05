//
//  SignUpViewModel.swift
//  SmartCampus
//
//  Created by 이민지 on 5/4/25.
//

import SwiftUI

class SignUpViewModel: ObservableObject {
    @Published var userName: String = ""
    @Published var userNumber: String = ""
    @Published var password: String = ""
    @Published var userId: String = ""
    @Published var isValid: Bool = true //아이디 중복 확인
    @Published var userPassword: String = ""
    @Published var userPasswordConfirm: String = ""
    @Published var userEmail: String = ""
    @Published var userPhoneNumber: String = ""
    
    
    func signUp() {
        //임시 로직
        print("가입 성공")
    }
   
}
