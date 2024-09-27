# iOS 개념 정리

## Section 9

### SwiftUI의 `ContentView`

```swift
struct ContentView: View {
    var body: some View {
        Text("Hello, world")
    }
}
```

- `ContentView`는 SwiftUI의 구조체(struct)로 정의된 뷰
- `struct`는 `View` 프로토콜을 따르며, 내부의 `body` 프로퍼티는 뷰의 구성을 정의
- `body` 내부에 작성된 모든 요소들은 화면을 구성하는 뷰
- **`#Preview`**
    - SwiftUI 코드의 프리뷰를 제공다.

### `VStack`과 `HStack`

SwiftUI에서 뷰들을 수직 또는 수평으로 배열하기 위해 `VStack`과 `HStack` 사용

- **`VStack`**
    - 내부의 요소들을 **수직적으로 배열**
    - `spacing` 을 통해 요소 간의 간격을 조절
    
    ```swift
    VStack(spacing: 10) {
        Text("첫 번째 줄")
        Text("두 번째 줄")
    }
    ```
    
- **`HStack`**
    - 내부의 요소들을 **수평적으로 배열**
    
    ```swift
    HStack {
        Text("왼쪽")
        Text("오른쪽")
    }
    
    ```
    

### 텍스트 속성 변경

- **`foregroundStyle`**: 텍스트 색상을 지정
- **`.font`**: 텍스트의 폰트를 설정
    
    ```swift
    Text("Hello, world")
        .font(.title) // 폰트 크기를 제목 크기로 설정
    
    ```
    
- **`.fontWeight`**: 텍스트의 굵기를 설정합니다.
    
    ```swift
    Text("Hello, world")
        .fontWeight(.bold) // 굵은 글씨체 적용
    
    ```
    
- **`.padding`**: 텍스트 주변에 패딩
    
    ```swift
    Text("Hello, world")
        .padding([.top, .bottom], 20) // 상하에만 20 포인트 패딩 추가
    
    ```