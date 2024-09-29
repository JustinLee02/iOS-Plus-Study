# iOS 개념 정리


## Section11

```swift
struct ContentView: View {
    
    @State private var search: String = ""
    @State private var friends: [String] = ["John", "Mary", "Steven", "Steve", "Jerry"]
    
    @State private var filterFriends: [String] = []
    
    var body: some View { // Re-evaluate
        VStack {
            List(filterFriends, id: \.self) { friend in
                Text(friend)
            }
            .listStyle(.plain)
            .searchable(text: $search)
            .onChange(of: search) {
                if search.isEmpty {
                    filterFriends = friends
                } else {
                    filterFriends = friends.filter { $0.contains(search) }
                }
                
            }
            Spacer()
        }.padding()
            .onAppear(perform: {
                filterFriends = friends
            })
            .navigationTitle("Friends")
    }
}
```

**search**는 @State로 선언된 변수. 이 변수의 값이 변경될 때마다 ContentView의 body가 다시 렌더링

@State 변수를 다른 뷰로 전달하고 싶을 때 $ 를 사용하고 @Binding을 통해 받음.

**@Observable**

•	iOS 17에서 도입

•	클래스에 적용하면 해당 클래스의 프로퍼티가 변경될 때 뷰가 다시 렌더링

**2. @Environment**

•	@Environment는 부모나 상위 뷰에서 제공한 객체나 환경 값을 자식 뷰에서 사용

**3. @Bindable**

•	@Observable과 함께 사용되어 객체의 프로퍼티를 바인딩

•	@Binding과 유사하지만, @Observable과 함께 사용되어 객체의 특정 속성을 바인딩

**4. .environment**

•	ContentView에 AppState() 객체를 하위 뷰에서 접근할 수 있도록 만듭니다.

•	이 설정을 통해 뷰 계층 전체에서 @Environment를 통해 AppState 객체에 접근

| `@State` | 뷰의 로컬 상태를 관리하며, 상태 변경 시 뷰를 업데이트 | `@State var isOn = false` |
| --- | --- | --- |
| `@Binding` | 부모 뷰의 상태를 자식 뷰와 공유하고, 자식 뷰에서 상태를 수정 가능 | `@Binding var isOn: Bool` |
| `@Environment` | 부모 뷰나 상위 뷰에서 설정한 환경 값에 접근 | `@Environment(AppState.self)` |
| `@EnvironmentObject` | 여러 뷰에서 공유할 수 있는 데이터나 상태를 제공 | `@EnvironmentObject var data` |
| `@ObservedObject` | 클래스 기반의 상태를 관찰하고, 변경 시 뷰를 업데이트 | `@ObservedObject var model` |
