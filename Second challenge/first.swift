import SwiftUI

struct ContentView: View {
    @State private var isActive = false

    var body: some View {
        ZStack {
            if isActive {
                Main2() // Replace with your main page view
            } else {
                SplashScreenView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    isActive = true
                }
            }
        }
    }
}

struct SplashScreenView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.lightBG, .bg, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                Image("notebook") // Ensure you have this image in your assets
                    .resizable()
                    .frame(width: 77.7, height: 101)
                Text("Journali")
                    .fontWeight(.black)
                    .foregroundStyle(Color.white)
                    .font(.system(size: 42))
                Text("Your thoughts, your story")
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .font(.system(size: 18))
                    .padding(.top, -12)
            }
        }
    }
}

#Preview {
    ContentView()
}

