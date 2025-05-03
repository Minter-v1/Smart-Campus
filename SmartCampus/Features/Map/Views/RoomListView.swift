//
//  RoomListView.swift
//  SmartCampus
//
//  Created by 이민지 on 5/3/25.
//

import SwiftUI


struct RoomListView: View {
    let roomNumbers = Array(101...107)
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            //상단 Nav
            VStack {
                NavBar(lable: "강의실 쾌적 정보")
            }
            .padding(.top, 59)
            .padding(.horizontal, 20)
            
            
            
         
            
            VStack(alignment: .center, spacing: 10) {
                //날짜, 층수 드롭다운 컴포넌트 구현 필요
                
                
                //층수 텍스트
                HStack(alignment: .center) {
                    Text("1F")

                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 5)
                
                
                //룸카드뷰 스크롤
                ScrollView(.vertical, showsIndicators: false) {
                    //전체 룸카드뷰
                    VStack (alignment:.center, spacing: 10){
                        ForEach(0..<roomNumbers.count / 2, id: \.self) { index in
                            HStack(alignment:.center, spacing: 10){
                                RoomCardView(roomNumber: "\(roomNumbers[index * 2])")
                                RoomCardView(roomNumber: "\(roomNumbers[index * 2 + 1])", backgroundColor:Color(red: 0.89, green: 0.38, blue: 0.36))
                            }
                        }
                        
                        //홀수개면 하나 따로 처리
                        if roomNumbers.count % 2 != 0 {
                            HStack(alignment:.center) {
                                RoomCardView(roomNumber: "\(roomNumbers[roomNumbers.count - 1])", backgroundColor:Color(red: 0.87, green: 0.68, blue: 0.46))
                                Spacer()
                            }
                            
                        }
                    }
                }
            }
            .padding(.horizontal, 29.5)
            
        }
        .background(Color(red: 0.95, green: 0.96, blue: 0.96))
        
        
        
        
    }
}




#Preview {
    RoomListView()
}
