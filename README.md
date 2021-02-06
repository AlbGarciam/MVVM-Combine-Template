# MVVM-Combine
This is a template for iOS projects. It uses MVVM architecture using state-oriented views and combine.

## How to use
This project contains 2 templates, `BaseComponents` and `Screens`. 

**BaseComponents**
This template creates a `BaseViewModel` and a `BaseMVVMViewController` which will host all the logic of handling the state and the combine configuration

**Screen**
This template creates the structure of a screen, based on `BaseComponents`. It will create the following structure:
- **Contracts**: Declares all the necessary functions to communicate your ViewController with your ViewModel
- **Router**: Handles the navigation logic, the creation of the screen and the injection of the dependencies
- **ViewModel**: Subclass of `BaseViewModel`, will host all the logic of the screen
- **ViewController**: Subclass of `BaseMVVMViewController`, will declare the view and its components
- **ViewController+Autolayout**: Extension of `ViewController` will declare all the autolayout configuration. `configure()` method will be triggered during `loadView()` method
