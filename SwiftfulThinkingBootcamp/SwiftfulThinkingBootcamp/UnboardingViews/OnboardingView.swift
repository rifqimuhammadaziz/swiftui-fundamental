//
//  OnboardingView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Rifqi Muhammad Aziz on 23/01/23.
//

import SwiftUI

struct OnboardingView: View {
    
    // Onboarding States:
    /*
     0 - Welcome Screen
     1 - Add Name
     2 - Add Age
     3 - Add Gender
     */
    @State var onBoardingState: Int = 0
    
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    // onboarding inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    // alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onBoardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)
                }
            }
            
            // buttons
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}

// MARK: COMPONENTS
extension OnboardingView {
    private var bottomButton: some View {
        Text(onBoardingState == 0 ? "Sign Up" : onBoardingState == 3 ? "Finish" : "Next")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            .animation(nil)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white),
                    alignment: .bottom
                )
            Text("This is the #1 app for finding your match online! In this case we are practicing using AppStorage and other SwiftUI tech.")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        //        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .tint(.white)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Picker(
                selection: $gender,
                content: {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Non-Binary").tag("Non-Binary")
                }, label: {
                    Text(gender.count > 1 ? gender : "Select a gender")
                        .font(.headline)
                        .foregroundColor(.purple)
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10)
                }
            )
            .pickerStyle(MenuPickerStyle())
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

// MARK: FUNCTION
extension OnboardingView {
    
    func handleNextButtonPressed() {
        
        // check input
        switch onBoardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be at least 3 characters.")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select a gender before moving forward.")
                return
            }
        default:
            break
        }
        
        // go to next section
        if onBoardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring()) {
                onBoardingState += 1
            }
        }
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}
