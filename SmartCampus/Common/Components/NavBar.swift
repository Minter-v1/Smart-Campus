//
//  NavBar.swift
//  SmartCampus
//
//  Created by 이민지 on 4/30/25.
//

import SwiftUI

struct NavBar: View {
    var lable: String //
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {// 얘는 leading 타입이 없나..?
            HStack(alignment: .center, spacing: 10) {
                Image("return.arrow")
                    .frame(width: 24, height: 24)
                
                Text(lable)
                    .font(Font.custom("Pretendard", size: 20).weight(.semibold))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading) //frame정렬하니까 텍스트가 움직이네..
            .background(.white)
        }
        .padding(.top, 10)
        .padding(.leading, 20)
        .padding(.trailing, 0)
        .padding(.bottom, 7)
    }
}
