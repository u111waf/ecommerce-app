# 🛍️ Flutter E-Commerce App
**A modern shopping app with Firebase backend, payments, and admin dashboard**  

![Flutter](https://img.shields.io/badge/Flutter-3.19-blue)
![Firebase](https://img.shields.io/badge/Firebase-Cloud-orange)
![License](https://img.shields.io/badge/License-MIT-green)

<p align="center">


  <img src="![screen-recording-2-online-video-cuttercom-2_ap1kngPi-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/80753c75-b4a0-4178-897c-8ecc2fc42dc3)
" alt="App Demo" width="300"> | 
 <img width="872" alt="Screenshot" src="https://github.com/user-attachments/assets/9c19cedd-9f24-4443-8553-226be2ed2717" />


</p>

## ✨ Features
- **User Auth**: Google/Email login (Firebase Auth)
- **Product Catalog**: Search, filters, and infinite scroll
- **Cart System**: Offline persistence (Hive) + real-time sync
- **Payments**: Stripe/PayPal test integration
- **Admin Panel**: Manage products (CRUD operations)
- **Dark Mode**: Toggleable theme with Provider

## 🛠 Tech Stack
- **Frontend**: Flutter 3.19 (Dart 3.3)
- **Backend**: Firebase (Auth, Firestore, Storage)
- **State Management**: Riverpod
- **Local DB**: Hive (v3.0.0)
- **Animations**: Lottie, Hero transitions

## 🚀 Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/u111waf/ecommerce-app.git
Install dependencies:

bash
Copy
flutter pub get
Run the app:

bash
Copy
flutter run -d chrome
📂 Project Structure
Copy
lib/
├── core/          # App theme, routes, DI
├── features/      # Auth, products, cart, checkout
├── models/        # Data classes
└── shared/        # Widgets, utilities
📜 License
MIT License

Copyright (c) 2023 [Your Name]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

### How to Implement:
1. **Create LICENSE file**:
   ```bash
   curl https://choosealicense.com/licenses/mit/ -o LICENSE
Replace placeholders:

[Your Name] → Your actual name

demo.gif/screenshot.png → Your actual demo files

Update Flutter/Firebase versions if different

Add to GitHub:

bash
Copy
git add README.md LICENSE
git commit -m "Add professional README and MIT license"
git push origin main
Pro Tips:
For demo GIF:

bash
Copy
# Record with ScreenPal (https://screenpal.com/)
# Convert to GIF with ffmpeg:
ffmpeg -i recording.mp4 -vf "fps=10,scale=640:-1" demo.gif
For live demo (optional):

Deploy web version: flutter build web

Host on Firebase/Netlify/Vercel
