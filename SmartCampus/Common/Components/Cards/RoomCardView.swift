//
//  RoomCardView.swift
//  SmartCampus
//
//  Created by 이민지 on 4/30/25.
//

import SwiftUI

struct RoomCardView: View {
    var roomNumber: String
    var backgroundColor: Color = Color(red: 0.17, green: 0.46, blue: 0.73)
    var isPossible: Bool = true //기본값
    
    
    var body: some View {
        //전체 레이아웃
        VStack(alignment:.leading, spacing: 0) {
            
            //강의실 호수
            VStack(alignment: .center, spacing: 0){
                //호수 텍스트
                HStack(alignment: .center, spacing: 0) {
                    Text(roomNumber)
                        .font(
                            Font.custom("Pretendard", size: 22) //24일때 작아지는 문제 해결
                                .weight(.semibold)
                        )
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                
            }
            .padding(.vertical, 15)
            .background(backgroundColor)
            .clipShape(
                RoundedCorner(radius: 20, corners: [.topLeft, .topRight])
            )
            .frame(maxHeight: 46)
            
            //강의실 이름 + 사용가능 여부
            VStack(alignment:.leading, spacing: 0){
                //강의실 이름
                HStack(alignment: .center){
                    //텍스트 : 파라미터 요함
                    Text("기초공작실험실(3)")
                      .font(
                        Font.custom("Pretendard", size: 15)
                          .weight(.medium)
                      )
                      .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                     
                    Spacer()
                    
                    //별모양 아이콘
                    Image(systemName: "star")
                        .frame(width: 24, height: 24)
                        .foregroundColor(.gray)
                }
                .padding(.horizontal, 7)
                .padding(.vertical, 8.5)
                .frame(alignment:.leading)
                
                
                
                Divider()
                    .padding(.horizontal, 7)
                
                //두 번째 행
                HStack(alignment:.center, spacing: 0) {
                    
                    //텍스트 : 파라미터
                    Text(isPossible ? "사용 가능" : "사용 불가")
                        .font(Font.custom("Pretendard", size: 14))
                        .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                        
                    Spacer()
                    
                    
                    //아이콘
                    Image(systemName: "arrowshape.forward")
                        .foregroundColor(.gray)
                }
                .padding(.horizontal, 7)
                .padding(.vertical, 9.5)
                
            }
            .frame(maxWidth: .infinity)
            
            
        }
        .frame(width: 168, height: 118, alignment: .topLeading)
        .background(.white)
        .cornerRadius(20)
    }
        
}
    
struct RoundedCorner: Shape {
    var radius: CGFloat
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        
        return Path(path.cgPath)
    }
}
    
    
#Preview {
    RoomCardView(roomNumber: "101")
}


