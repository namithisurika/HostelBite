# HostelBite
HostelBite is a mobile app that helps hostel roommates organize their weekly meals by assigning who cooks, buys, or orders food each day. The app allows users to select meals, auto-rotate responsibilities, and generate grocery lists, making shared living and food management easier and more organized

## Features
- Weekly planner grid (B/L/D x Mon–Sun)
- Auto-assign cook/order/buy fairly
- Dish library + filters (diet/allergy)
- Grocery list aggregation
- Local notifications

## Getting Started
1. Xcode 15+
2. `git clone https://github.com/<org>/hostelbite`
3. Open `HostelBite.xcodeproj` → Build & Run (iOS 17+)

## Project Structure
- `Models/` data models (SwiftData)
- `ViewModels/` app logic (MVVM)
- `Views/` SwiftUI screens
- `Services/` notifications, auto-assign, grocery
- `Tests/` unit tests (streaks, merge)

## Roadmap
- [ ] Budget split
- [ ] Pantry tracker
- [ ] Widget (Today’s meal)

## License
MIT
