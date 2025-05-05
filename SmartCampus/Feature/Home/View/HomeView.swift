//
//  Home.swift
//  SmartCampus
//
//  Created by 이민지 on 4/30/25.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject private var viewModel = HomeViewModel() //뷰모델 연결
    @State private var navigateToRoomList: Bool = false
    
    var body: some View {
        VStack(alignment:.center, spacing: 0) {
            
            //MARK: - 각 건물별 강의실 목록 페이지 이동
            NavigationLink(
                destination: RoomListView(),
                isActive: $navigateToRoomList
            ) { EmptyView() }
            
            //건물 리스트 스크롤뷰
            ScrollView {
                VStack(alignment: .center, spacing: 10) {
                    ForEach(viewModel.buildings) { building in
                        BuildingCardView(
                            code: building.code,
                            name: building.name,
                            isAvailable: building.isAvailable,
                            action: { navigateToRoomList = true }
                        )
                    }
                }
            }
            .padding(.top, 23)
            
            
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 10)
        .background(Color(red: 0.95, green: 0.96, blue: 0.96))
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                BackNavButton(title: "건물선택") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
