import SwiftUI

//레이블 없는 필드 만들기
struct Field: View {
    var placeholder: String = ""
    var isSecure: Bool = false
    @Binding var text: String
    
    var body: some View {
        HStack(alignment:.center, spacing: 0) {
            Group {
                if isSecure {
                    SecureField(placeholder, text: $text)
                } else {
                    TextField(placeholder, text: $text)
                }
            }
            .padding(.vertical, 4)
            .padding(.leading, 3)
            .padding(.trailing, 31)
            .overlay(
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(Color(red: 0.87, green: 0.87, blue: 0.87)),
                alignment: .bottom
            )
        }
    }
} // ✅ 이거 빠졌던 거야!

#Preview {
    StatefulPreviewWrapper("") { binding in
        Field(placeholder: "실명을 입력하세요", isSecure: false, text: binding)
    }
}
