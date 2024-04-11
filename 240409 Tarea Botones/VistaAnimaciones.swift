//
//  VistaAnimaciones.swift
//  240409 Tarea Botones
//
//  Created by Luis on 9/4/24.
//

import SwiftUI

struct VistaAnimaciones: View {
    @State private var corazonLatiento = true
    @State private var aniVar: CGFloat = 200
    @State private var isLoading = false
    
    var body: some View {
        VStack {
            VStack{
                Text("Pulsa para ver la animación")
                    .font(.system(.body, design: .rounded))
                    .bold()
                
                ZStack {
                    Circle()
                        .frame(width: 200, height: 200) .foregroundColor(corazonLatiento ? Color(.yellow).opacity(0.3) : .red)
                    Image(systemName: "heart.fill")
                        .foregroundColor(corazonLatiento ? .red : Color(.yellow).opacity(0.5))
                        .font(.system(size: 100))
                        .scaleEffect(corazonLatiento ? 1.0 : 0.5)
                }
                .padding(.top,20)
                .onTapGesture {
                    withAnimation(.spring(response: 0.3,dampingFraction: 0.3, blendDuration: 0.3)){
                        self.corazonLatiento.toggle()
                    }
                }
            }
            VStack {
                Text("Cargando círculo animado!!")
                    .font(.system(.body, design: .rounded))
                    .bold()
                    .padding()
            
                ZStack{
                    Circle()
                        .stroke(Color(.systemGray5), lineWidth: 14)
                        .frame(width: 100, height: 100)
                    Circle()
                        .trim(from: 0, to: 0.2)
                        .stroke(Color.green, lineWidth: 7)
                        .frame(width: 100, height: 100)
                        .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                        .onAppear {
                            withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                                self.isLoading = true
                            }
                        }
                        .padding(30)
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
/*
 struct VistaAnimaciones_Previews: PreviewProvider {
 static var previews: some View {
 VistaAnimaciones()
 }
 }
 */
