//
//  BackNavButton.swift
//  SmartCampus
//
//  Created by 이민지 on 5/4/25.
//

import SwiftUI

//클로저 예시 : { print("눌림") }

struct BackNavButton: View {
    let title: String
    let action: () -> Void //인자도 반환도 없는 클로저: 아무 입력값도 받지 않고, 아무것도 반환하지 않는 함수
    
    var body: some View {
        
        //전체 뷰
        HStack(alignment: .center) {
            //버튼뷰로 구성
            Button(action:  action ) {
                HStack {
                    Image("return.arrow")
                        .frame(width: 24, height: 24)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            //네비게이션 타이틀
            Text(title)
                .font(.custom("Pretenard", size: 20).weight(.semibold))
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
        
        }
    }
}

#Preview {
    BackNavButton(title:"test", action: {} )
}


