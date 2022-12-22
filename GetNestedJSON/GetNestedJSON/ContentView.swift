//
//  ContentView.swift
//  GetNestedJSON
//
//  Created by Rifqi Muhammad Aziz on 22/12/22.
//

import SwiftUI

struct ContentView: View {
    
    // Get Observable Object
    @ObservedObject var fetch = APIService()
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    ForEach(fetch.dataTotal) { data in
                        // Column 1
                        HStack(spacing: 10) {
                            HStack {
                                Spacer()
                                VStack {
                                    Image(systemName: "heart.fill").foregroundColor(Color.white)
                                    Text("Sembuh").font(.headline).foregroundColor(Color.white)
                                    Text("\(data.jumlah_sembuh)").font(.headline).foregroundColor(Color.white)
                                }
                                Spacer()
                            }.frame(height: 100).padding().background(Color.green).cornerRadius(20)
                            
                            HStack {
                                Spacer()
                                VStack {
                                    Image(systemName: "plus.circle.fill").foregroundColor(Color.white)
                                    Text("Positif").font(.headline).foregroundColor(Color.white)
                                    Text("\(data.jumlah_positif)").font(.headline).foregroundColor(Color.white)
                                }
                                Spacer()
                            }.frame(height: 100).padding().background(Color.blue).cornerRadius(20)
                        }
                        
                        // Column 2
                        HStack(spacing: 10) {
                            HStack {
                                Spacer()
                                VStack {
                                    Image(systemName: "bed.double.fill").foregroundColor(Color.white)
                                    Text("Dirawat").font(.headline).foregroundColor(Color.white)
                                    Text("\(data.jumlah_dirawat)").font(.headline).foregroundColor(Color.white)
                                }
                                Spacer()
                            }.frame(height: 100).padding().background(Color.orange).cornerRadius(20)
                            
                            HStack {
                                Spacer()
                                VStack {
                                    Image(systemName: "waveform.path.ecg").foregroundColor(Color.white)
                                    Text("Meninggal").font(.headline).foregroundColor(Color.white)
                                    Text("\(data.jumlah_positif)").font(.headline).foregroundColor(Color.white)
                                }
                                Spacer()
                            }.frame(height: 100).padding().background(Color.red).cornerRadius(20)
                        }
                        
                        // For Content to Top
                        Spacer()
                    }
                    
                    
                    // Condition
                    if (fetch.isLoading) {
                        VStack {
                            Indicator()
                            Text("Please Wait...")
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(color: Color.secondary, radius: 20)
                    }
                    
                }.padding().navigationBarTitle("Covid19 Data")
            }
        }
    }
}

// Indicator Component
struct Indicator : UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<Indicator>) -> UIActivityIndicatorView {
        let indi = UIActivityIndicatorView(style: .large)
        indi.color = UIColor.red
        return indi
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<Indicator>) {
        uiView.startAnimating()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
