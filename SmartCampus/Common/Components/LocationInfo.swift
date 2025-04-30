//
//  LocationInfo.swift
//  SmartCampus
//
//  Created by 이민지 on 4/30/25.
//

import SwiftUI

struct LocationInfo: View {
    var location: String
    
    var body: some View {
        //전체프레임
        VStack(alignment: .leading, spacing: 0) {
            //패딩 + 텍스트 + ZStack
            HStack(alignment: .center, spacing: 0) {
                //패딩
                HStack(alignment: .center, spacing:0) {}
                    .padding(.horizontal, 30)
                Text(location)
                    .font(Font.custom("Pretendard", size: 24)
                        .weight(.semibold)
                    )
                    .foregroundColor(.black)
                
            }
        }
        .padding(.vertical, 15)
        .padding(.horizontal, 0)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.gray)
        .cornerRadius(20)
    }
}

#Preview {
    LocationInfo(location: "N2")
}
