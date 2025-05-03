//
//  Home.swift
//  SmartCampus
//
//  Created by 이민지 on 4/30/25.
//

import SwiftUI

struct Home: View {
    @StateObject private var viewModel = HomeViewModel() //뷰모델 연결
    
    var body: some View {
        VStack(alignment:.center, spacing: 0) {
            NavBar(lable: "건물선택")
                .padding(.bottom, 23)
            
            //건물 리스트 스크롤뷰
            ScrollView {
                VStack(alignment: .center, spacing: 10) {
                    ForEach(viewModel.buildings) { building in
                        BuildingCardView(
                            code: building.code,
                            name: building.name,
                            isAvailable: building.isAvailable
                        )
                    }
                }
            }
            
            
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 10)
        .background(Color(red: 0.95, green: 0.96, blue: 0.96))
    }
}

#Preview {
    Home()
}
