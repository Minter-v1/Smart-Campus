//
//  Building.swift
//  SmartCampus
//
//  Created by 이민지 on 4/30/25.
//

// MARK: - 건물 데이터 모델

import Foundation

//반복 가능하게 해주는 프로토콜?
struct Building: Identifiable {
    let id = UUID() //??뭐지
    let code: String //건물 코드
    let name: String //건물 한글 이름
    let isAvailable: Bool //사용가능 여부
    let isFavorite: Bool //즐겨찾기 여부
    }

//배열 생성
let Buildings: [Building] = [
    Building(code:"N1", name:"대학본부", isAvailable: true, isFavorite: false),
    Building(code:"N2", name:"아트홀", isAvailable: true, isFavorite: false),
    Building(code:"N3", name:"전기전자관", isAvailable: true, isFavorite: false),
    Building(code:"N4", name:"산업정보관", isAvailable: true, isFavorite: false),
    Building(code:"N5", name:"자동화관", isAvailable: true, isFavorite: false),
    Building(code:"N6", name:"화학환경관", isAvailable: true, isFavorite: false),
    Building(code:"N7", name:"기계관", isAvailable: true, isFavorite: false),
    Building(code:"N8", name:"소재관 및 공동실험실습관", isAvailable: true, isFavorite: false),
    Building(code:"N9", name:"공동실습관(2)", isAvailable: true, isFavorite: false),
    Building(code:"N10", name:"파워플랜트", isAvailable: true, isFavorite: false),
    Building(code:"N11", name:"창의혁신관", isAvailable: true, isFavorite: false),
    Building(code:"N12", name:"동아리관", isAvailable: true, isFavorite: false),
    Building(code:"N13", name:"그린에너지관", isAvailable: true, isFavorite: false)
    
]
