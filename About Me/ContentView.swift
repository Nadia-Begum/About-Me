// Import Modules
import SwiftUI

// Main Structure
struct ContentView: View {
    var body: some View {
        // First layer - white area
        ZStack {
            Color(.white).ignoresSafeArea()
            
            // Second layer - contains most of the information
            VStack {
                // Main Heading
                Text("My Profile")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                    .padding(.horizontal, 16)
                    .offset(y: 10)
                
                // Gray Rectangle
                Rectangle()
                    .foregroundColor(Color(red: 247/255, green: 247/255, blue: 247/255))
                    .cornerRadius(15)
                    .frame(height: 350)
                    .frame(width: 500)
                    .shadow(radius: 0)
                    .overlay(
                        
                        // Image and text inside the gray area
                        VStack(alignment: .center, spacing: 10.0) {
                            Image("profile")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 250, height: 250)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                            
                            Text("Profile Photo")
                                .font(.title)
                                .fontWeight(.bold)
                        }
                        .padding()
                    )
                    .padding()
                    .offset(y: -15)
                
                // Information of the user
                VStack(alignment: .leading, spacing: 20) {
                    Text("Name: Nadia Begum")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .offset(x: 70)
                    
                    Divider()
                        .background(Color.gray)
                    
                    Text("Email Address: myemailaddress")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .offset(x: 70)
                    
                    Divider()
                        .background(Color.gray)
                    
                    Text("Title: iOS Developer")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .offset(x: 70)
                    
                    Divider()
                        .background(Color.gray)
                    
                    Text("Location: England, UK")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .offset(x: 70)
                    
                    Divider()
                        .background(Color.gray)
                    
                    Text("")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .offset(x: 70)
                }
                .padding()
                .offset(y: -10)

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
