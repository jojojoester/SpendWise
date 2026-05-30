import SwiftUI

// 1. Full-width button for main actions
struct PrimaryButton: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(AppFonts.body)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.appPrimary)
                .cornerRadius(Radius.medium)
        }.padding(.horizontal, 30)
    }
}

// 2. The button used in your onboarding (Primary visual but in an HStack)
struct SecondaryButton: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(AppFonts.body)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.appPrimary.opacity(0.9)) // Slightly different green
                .cornerRadius(Radius.medium)
        }
    }
}
