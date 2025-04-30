//
//  FindPw.swift
//  SmartCampus
//
//  Created by 이민지 on 4/30/25.
//

import SwiftUI

struct FindPw: View {
    var body: some View {
        //화면 전체 레이아웃
        VStack(alignment: .center, spacing: 0) {
            NavBar(lable: "아이디 / 비밀번호 찾기")
            
            HStack(alignment: .center, spacing: 0) {
                //아이디 찾기
                NavButton(lable:"아이디 찾기")
                NavButton(lable:"비밀번호 찾기", isSelected: true)
            }
            
            BlueButton(text:"비밀번호 찾기")
        }
    }
}



#Preview {
    FindPw()
}
