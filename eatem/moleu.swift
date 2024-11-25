struct MyView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .center) {
                Image("image")
                    .resizable()
                    .scaledToFit()
                Text("Hello, World!")
            }
            .gesture(LongPressGesture(minimumDuration: 1.0)
                .onEnded { _ in
                    print("Long press detected!")
                })
        }
    }
}
