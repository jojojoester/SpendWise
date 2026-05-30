import SwiftUI

struct OnboardingContainer: View {
    @State private var currentPage = 0
    @State private var isOnboardingComplete = false
    
    var body: some View {
        if isOnboardingComplete {
            LoginView()
        } else {
            TabView(selection: $currentPage) {
                
                // Screen 1
                OnboardingPageView(
                    title: "Track Every Expense Easily",
                    subtitle: "Keep track of all your spending in one place with simple and intuitive expense logging",
                    imageName: "wallet.bifold",
                    isLastPage: false,
                    onNext: { withAnimation { currentPage = 1 } },
                    onSkip: { isOnboardingComplete = true }
                ).tag(0)

                // Screen 2
                OnboardingPageView(
                    title: "Understand Your Spending Habits",
                    subtitle: "Visualize your expenses with beautiful charts and gain insights into where your money goes",
                    imageName: "chart.pie",
                    isLastPage: false,
                    onNext: { withAnimation { currentPage = 2 } },
                    onSkip: { isOnboardingComplete = true }
                ).tag(1)

                // Screen 3
                OnboardingPageView(
                    title: "Build Better Financial Discipline",
                    subtitle: "Set budgets, track savings goals, and develop healthy money habits for your future",
                    imageName: "target",
                    isLastPage: true,
                    onNext: { isOnboardingComplete = true },
                    onSkip: { isOnboardingComplete = true }
                ).tag(2)
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always)) // Makes the dots visible
            .background(Color(.systemBackground)) // Adapts to Dark Mode
        }
    }
}
