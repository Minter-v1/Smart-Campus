//
//  RoomCardView.swift
//  SmartCampus
//
//  Created by 이민지 on 4/30/25.
//

import SwiftUI

struct BuildingCardView: View {
    var code: String // 위치
    var name: String
    var isAvailable: Bool //사용 가능 여부
    @State var isStarred: Bool = false //즐겨찾기 상태 추적
    var action: () -> Void = {}
    
    var body: some View {
        //카드 전체 레이아웃
        HStack (alignment:.center, spacing: 0) {
            //공백
            VStack{}
                .padding(.leading, 30)
            
            //건물 위치
            Text(code)
                .font(
                Font.custom("Pretendard", size: 24)
                .weight(.semibold)
                )
                .foregroundColor(isAvailable ? .black : Color(red: 0.72, green: 0.72, blue: 0.72))
            
            //건물이름 + 사용 가능 여부
            HStack(alignment: .center , spacing: 0) {
                
                //HStack 내부에서 Divder는 세로 선
                Divider()
                    .frame(height: 74) // HStack 에서는 세로 길이
                    .padding(.trailing, 10)
                
                //2개의 행으로 분리
                VStack(alignment: .leading, spacing: 5) {
                    //첫번째 행
                    HStack(alignment: .center) {
                        Text(name)
                            .font(
                            Font.custom("Pretendard", size: 16)
                            .weight(.medium)
                            )
                            .foregroundColor(isAvailable ? Color(red: 0.25, green: 0.25, blue: 0.25) : Color(red: 0.72, green: 0.72, blue: 0.72))
                        //빈공간 채우기
                        Spacer()
                        
                        Button(action: { isStarred.toggle() }) {
                            //별 아이콘
                            Image(systemName: isStarred ? "star.fill" : "star")
                                .foregroundColor(isStarred ? Color(red: 0.3, green: 0.69, blue: 0.79) : .gray)
                        }
                        
                        
                    }
                    
                    Divider()
                        .frame(height: 2) // VStack에서는 굵기 설정
                    
                    //2번째 행
                    HStack(alignment: .center) {
                        Text(
                            isAvailable ?
                            "사용가능":
                            "사용불가"
                            )
                        .font(Font.custom("Abel", size: 14))
                        .foregroundColor(isAvailable ? Color(red: 0.25, green: 0.25, blue: 0.25) : Color(red: 0.72, green: 0.72, blue: 0.72))
                        
                        
                        //빈공간 밀어버리기
                        Spacer()
                        
                        //이동 UI
                        Button(action : action ) {
                            Image(systemName:"arrow.right")
                                .padding(.top, 5)
                                .foregroundColor(Color(red: 0.72, green: 0.72, blue: 0.72))
                        }
                        
                        
                    }
                    
                }
                .padding(.trailing,20)
            }
            .padding(.leading, 21)
            
        }
        .padding(0)
        .frame(width: 353, height: 90, alignment: .leading)
        .background(.white)
        .cornerRadius(20)
        .overlay(
            Group {
                if !isAvailable {
                    Color.gray.opacity(0.15) // 이게 뭐하는건데
                        .cornerRadius(20)
                }
            }
        )
    }
}

#Preview {
    BuildingCardView(
        code:"N7",
        name: "기계관",
        isAvailable: false
    )
}


