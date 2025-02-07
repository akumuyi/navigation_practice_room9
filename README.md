# Product Navigation App

A Flutter application that displays a list of products with a modern, card-based UI. Tapping on a product navigates to a detail screen where the product’s information and unique color theme are showcased. This project demonstrates effective routing, data passing between screens, and a modular codebase.

## Table of Contents

- [Overview](#overview)
- [Folder Structure](#folder-structure)
- [Features](#features)
- [Collaborators & Contributions](#collaborators--contributions)
- [How to Run](#how-to-run)
- [Dependencies](#dependencies)
- [Contributing](#contributing)
- [License](#license)

## Overview

This project is a simple product navigation application built with Flutter. The main functionality includes:
- A **Product List Screen** that displays products using custom cards.
- A **Product Detail Screen** that shows detailed information about the selected product.
- Consistent UI themes where each product card’s unique color is also applied to the corresponding detail screen.
- **Named routing and data passing** between screens using Flutter’s `Navigator`.

## Folder Structure

The codebase is modularized to enable easy collaboration. The project structure is as follows:

lib/ ├── main.dart # Application root & routing configuration (Abiodun) ├── models/ │ └── product.dart # Product model definition (Kevine) ├── screens/ │ ├── product_list_screen.dart # Product list screen implementation (Nicolle) │ └── product_detail_screen.dart# Product detail screen implementation (Nicholas) ├── widgets/ │ └── product_card.dart # Reusable product card widget (Nicolle) └── constants/ └── colors.dart # Custom color constants for products (Kevine)


## Features

- **Modern UI Design:**  
  Each product is displayed within a `Card` widget with a two-column layout. The left column features a unique, colored container with the product name, while the right column shows product details and rating icons.

- **Routing & Navigation:**  
  The app utilizes Flutter’s named routes. Tapping on a product card navigates to the product detail screen, passing the product data and its corresponding color.

- **Data Passing:**  
  Product data and its unique color are passed between screens using the `arguments` parameter in the Navigator. This ensures the product detail screen inherits the exact color theme from the product card.

## Collaborators & Contributions

- **Abiodun Kumuyi – Application Root & Routing**  
  - **File:** `lib/main.dart`  
  - **Contribution:**  
    - Sets up the `MaterialApp` with the initial route and named routes.
    - Configures the theme and imports the screens.
  
- **Nicolle Marizani – Product List Screen & Card UI**  
  - **Files:** `lib/screens/product_list_screen.dart` and `lib/widgets/product_card.dart`  
  - **Contribution:**  
    - Implements the Product List Screen that displays all the products.
    - Designs the reusable `ProductCard` widget that shows the product’s summary, including a colored box on the left and detailed information on the right.
  
- **Nicholas Eke – Product Detail Screen**  
  - **File:** `lib/screens/product_detail_screen.dart`  
  - **Contribution:**  
    - Develops the Product Detail Screen that receives and displays detailed product information.
    - Applies the product’s unique color to the header background to maintain UI consistency.
  
- **Kevine Umutoni – Models, Constants, & Shared Utilities**  
  - **Files:** `lib/models/product.dart` and `lib/constants/colors.dart`  
  - **Contribution:**  
    - Defines the `Product` model to encapsulate product properties.
    - Provides a list of custom color constants (`productColorList`) used across the application.

## How to Run

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/akumuyi/navigation_practice_room9.git
   cd navigation_practice_room9
   ```

2. **Install Dependencies:**

Make sure you have Flutter installed. Then run:

    ```bash
    flutter pub get
    ```

3. **Run the App:**

Launch the application on your emulator or connected device with:

    ```bash
    flutter run
    ```

## Dependencies

- Flutter SDK – The project is built using Flutter and Dart.
- Other packages are part of the Flutter SDK; no additional third-party packages are required.


## Contributing

Contributions are welcome! Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Ensure that your code adheres to the project’s style and structure.
4. Submit a pull request with a detailed description of your changes.
5. Collaborate with team members for code reviews and integration.


## License

This project is licensed under the MIT License. See the LICENSE file for details.

