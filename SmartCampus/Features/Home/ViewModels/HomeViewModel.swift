//
//  HomeViewModel.swift
//  SmartCampus
//
//  Created by 이민지 on 4/30/25.
//

import Foundation
import SwiftUI

final class HomeViewModel: ObservableObject {
    @Published var buildings: [Building] = [] //Building 데이터 모델 타입의 배열
    
    init() {
        loadBuildings() //밑에 함수 호출해서 초기화 진행
    }
    
    private func loadBuildings() {
        self.buildings = Buildings // Builidings 배열 가져오기
    }
}
