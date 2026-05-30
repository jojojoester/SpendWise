import SwiftUI

struct OnboardingPageView: View {
    let title: String
    let subtitle: String
    let imageName: String
    let isLastPage: Bool
    let onNext: () -> Void
    let onSkip: () -> Void

    var body: some View {
        VStack {
            
            Spacer()
        
                Image(systemName:imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .padding(.bottom, 40)

            VStack(spacing: 24) {
                Text(title)
                    .font(AppFonts.headline)
                
                Text(subtitle)
                    .font(AppFonts.body)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 30)
                                
                HStack {
                    // Only show Skip if it's NOT the last page
                    if !isLastPage {
                        Button("Skip") { onSkip() }
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    SecondaryButton(title: isLastPage ? "Get Started" : "Continue") {
                        onNext()
                    }
                    .frame(width: 180)
                }
                .padding(.horizontal, 30)
                .padding(.top, 20)
            }
            .padding(.bottom, 60)
        }
    }
}


