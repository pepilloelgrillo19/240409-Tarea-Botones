//
//  ContentView.swift
//  240409 Tarea Botones
//
//  Created by Luis on 9/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var recordBegin = false
    @State private var recording = false
    @State var goToDibujarVista = false
    var body: some View {
        VStack{

            NavigationView{
                VStack {
                    NavigationLink( destination: VistaAnimaciones()){
                        Text("Cambiemos de vista")
                            .font(.system(.title,design: .rounded))
                            .bold()
                            .minimumScaleFactor(0.5)
                            .foregroundColor(.white)
                            .frame(width: 200, height: 50)
                            .padding(5)
                            .background(FormaBotones().fill(.red))
                    }.padding()
                    NavigationLink( destination: VistaAnimaciones()){
                        Text("Cambiemos de vista (más peque)")
                            .font(.system(.title,design: .rounded))
                            .bold()
                            .minimumScaleFactor(0.5)
                            .foregroundColor(.white)
                            .frame(width: 150, height: 50)
                            .padding(5)
                            .background(FormaBotones().fill(.red))
                        }
                    NavigationLink(destination: VistaAnimaciones(), isActive: $goToDibujarVista){
                        FormaBotones2(goToDibujarVista: $goToDibujarVista)
                    }
                    }.padding()
                    
                }
                
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
        }
    }

     





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




/*
 struct ExtractedView: View {
 var body: some View {
 ZStack {
 RoundedRectangle(cornerRadius: recordBegin ? 30 : 5)
 .frame(width: recordBegin ? 60 : 250, height: 60)
 .foregroundColor(recordBegin ? .red : .green).overlay(Image(systemName: "mic.fill").font(.system(.title)).foregroundColor(.white).scaleEffect(recording ? 0.7 : 1))
 RoundedRectangle(cornerRadius: recordBegin ? 35 : 10)
 //Definimos el borde.
 //Trim se usa para animar el borde; especifica, junto con stroke, qué parte del borde se va a dibujar, dependiendo de la var de Estado recordBegin
 .trim(from: 0, to: recordBegin ? 0.0001 : 1)
 .stroke(lineWidth: 5)
 .frame(width: recordBegin ? 70 : 260, height: 70)
 .foregroundColor(.green)
 }
 .onTapGesture {
 //Animación para el cambio de rectángulo a círculo, controlada por la variable de Estado, recordBegin
 withAnimation(Animation.spring()) {
 self.recordBegin.toggle()
 }
 //Animación para el icono del Micro, que no para hasta que volvemos a pulsar
 //Controlada por la variable de Estado recording
 withAnimation(Animation.spring().repeatForever().delay(0.9)) { self.recording.toggle()
 }
 }.padding(.vertical)
 }
 }
 */
