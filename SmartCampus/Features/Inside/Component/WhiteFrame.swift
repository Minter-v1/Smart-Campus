//
//  WhiteFrame.swift
//  SmartCampus
//
//  Created by 이민지 on 5/3/25.
//

import SwiftUI

struct WhiteFrame: View {
    var text: String = "텍스트 영역"
    var badStauts: Bool = true
    var body: some View {
        //전체 뷰
        VStack(alignment: .center, spacing: 0) {
            //상태 택스트
            if badStauts {
                //bold 텍스트 뷰
                Text("지금은 환기가 필요해요!")
                    .font(
                        Font.custom("Pretendard", size: 15)
                            .weight(.medium)
                )
                .foregroundColor(.black)
                .frame(width: 299, alignment: .topLeading)
                .padding(.bottom, 5)
                
                //설명 텍스트 뷰
                Text("현재 이 강의실의 이산화탄소(CO₂) 수치가 높아 공기질이 나쁜 상태입니다. 실내 공기가 탁해져 집중력이 떨어질 수 있으니, 잠시 창문을 열거나 바깥 공기를 쐬고 오세요. 마스크 착용도 함게 고려해 주세요. 쾌적한 학습 환경을 위해 노력 중입니다.")
                  .font(Font.custom("Pretendard", size: 14))
                  .foregroundColor(Color(red: 0.33, green: 0.33, blue: 0.33))
                  .frame(width: 299, alignment: .topLeading)
            }
        }
        .padding(.horizontal,20)
        .frame(maxWidth: .infinity, minHeight: 157, maxHeight: 157, alignment: .leading)
        .background(.white)
        .cornerRadius(10)
        
        
    }
}

#Preview {
    WhiteFrame()
}
