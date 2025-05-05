//
//  Untitled.swift
//  SmartCampus
//
//  Created by 이민지 on 5/4/25.
//

import SwiftUI

class FindIdViewModel: ObservableObject {
    @Published var phoneNumber: String = ""//기본값 지정하지 않으면 초기화 코드 필요하다고 오류 뜸
    @Published var verifyNumber: String = ""
    
    func sendMessage() {
        print("인증번호 전송됨")
    }
    
    func checkNumber() {
        print("인증번호 확인 버튼을 누름")
    }
}
