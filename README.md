# Vehicle Repair Booking App(Project Summary)

A Flutter application that allows users to book vehicle repair services. This app was built as part of the Flutter Intern task.

## Project Overview

This app simulates a basic customer-side experience for booking vehicle repair services with the following features:

- Login authentication
- Display of available repair stations
- Ability to book appointments with selected stations
- Form validation and user feedback

## Screen Recording

https://drive.google.com/file/d/1_xS9NCyX2b5I_PD0DknkZmCCt3L1GVy0/view?usp=drive_link

## Features

### 1. Login Screen
- Email and password authentication
- Form validation
- Loading state during authentication

### 2. Home/Stations Screen
- List of available repair stations
- Station details including name, distance, rating, and type
- Navigation to booking screen

### 3. Booking Screen
- Form to book appointments with selected stations
- Vehicle type selection
- Date and time picker
- Description field
- Success feedback after booking

## How to Run

1. **Prerequisites**
   - Flutter SDK (v2.17.0 or higher)
   - Dart SDK
   - Android Studio / VS Code with Flutter plugins
   - An emulator or physical device

2. **Clone the repository**
   ```bash/powershell/cmd
   git clone https://github.com/<your-username>/vehicle-repair-booking-app.git
   cd vehicle_repair_booking
   ```

3. **Install dependencies**
   ```bash/powershell/cmd
   flutter pub get
   ```

4. **Run the app**
   ```bash/powershell/cmd
   flutter run
   ```

## Login Credentials
- Email: intern@balancee.com
- Password: Intern123#

## Implementation Details

This app demonstrates:
- Basic Flutter navigation and routing
- Form creation and validation
- State management using StatefulWidget
- UI design with Material components
- Simulated API calls and authentication

## Potential Improvements

Future enhancements could include:
- Implementing actual API integration
- Add user registration
- Save booking history
- Adding notifications for upcoming appointments
- Implementing a real-time station availability feature

## License

MIT LICENSE