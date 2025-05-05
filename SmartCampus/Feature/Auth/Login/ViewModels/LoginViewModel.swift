//
//  LoginViewModel.swift
//  SmartCampus
//
//  Created by 이민지 on 5/4/25.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var userId: String = ""
    @Published var password: String = ""
    @Published var isValid: Bool = false //로그인 성공 여부
    
    //샘플 아이디 + 패스워드
    private let validUserId = "aaaa"
    private let valideUserPassword = "12345678"
    
    //return 값 X
    func login() {
        if userId == validUserId && password == valideUserPassword {
            isValid = true
            //콘솔창 출력
            print("로그인 성공")
        } else {
            isValid = false
            print("로그인 실패")
        }
    }
}
