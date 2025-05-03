//
//  RoomInsideView.swift
//  SmartCampus
//
//  Created by 이민지 on 5/3/25.
//

import SwiftUI

struct RoomInsideView: View {
    var body: some View {
        
        
        //Full View
        VStack(alignment: .center, spacing: 0) {
            //Navbar
            VStack(alignment: .center,spacing: 0) {
                NavBar(lable: "현재 강의실")
                
            }
            .padding(.leading, 20) //이것도 컴포넌트 modifier 수정 고민
            .padding(.top, 59)
            .padding(.bottom, 7)
            .padding(.bottom, 29)
            .background(Color(red: 0.95, green: 0.96, blue: 0.96))
            
            
            //main view 시작
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 5) {
                    Text("현제 체감 상태를 알려주세요!")
                        .font(
                        Font.custom("Pretendard", size: 20)
                        .weight(.medium)
                        )
                        .foregroundColor(.black)
                    
                    Text("투표는 강의실 온도 조절에 반영 됩니다")
                        .font(Font.custom("Pretendard", size: 12))
                        .foregroundColor(Color(red: 0.67, green: 0.67, blue: 0.67))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                
                
                FeelingColdView()
                FeelingColdView(isSelected: false)
                BlueButton(text:"투표하기")
                    .padding(.bottom, 30)
                
            
                //AI코멘트 View
                VStack(alignment: .leading, spacing: 13) {
                    Text("AI 코멘트")
                        .font(
                        Font.custom("Pretendard", size: 20)
                        .weight(.semibold)
                        )
                        .foregroundColor(.black)
                    
                    //설명 view
                    WhiteFrame()
                }
                .padding(.bottom, 30)
                
                
                //공기질 추이 View
                VStack(alignment: .leading, spacing: 13) {
                    
                    //공기질 추이 + info 이미지 뷰
                    HStack(alignment: .center, spacing: 0) {
                        Text("공기질 추이")
                            .font(
                            Font.custom("Pretendard", size: 20)
                            .weight(.semibold)
                            )
                            .foregroundColor(.black)
                            .padding(.trailing, 5)
                        
                        Image(systemName:"info.circle")
                    }
                    
                    
                    //설명 view
                    WhiteFrame()
                }
                .padding(.bottom, 30)
                
                
                //온•습도 추이 View
                VStack(alignment: .leading, spacing: 13) {
                    Text("온•습도 추이")
                        .font(
                        Font.custom("Pretendard", size: 20)
                        .weight(.semibold)
                        )
                        .foregroundColor(.black)
                    
                    //설명 view
                    WhiteFrame()
                }
                .padding(.bottom, 30)
                
                
                
            }
            .padding(.horizontal, 20)
            .background(Color(red: 0.95, green: 0.96, blue: 0.96))
            
            
            
            
            
            
        }
        .background(Color(red: 0.95, green: 0.96, blue: 0.96))
        


        
    }
}






#Preview {
    RoomInsideView()
}
