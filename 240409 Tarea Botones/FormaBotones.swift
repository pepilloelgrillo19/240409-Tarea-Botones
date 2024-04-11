//
//  FormaBotones.swift
//  240409 Tarea Botones
//
//  Created by Luis on 9/4/24.
//

import SwiftUI

struct FormaBotones: Shape {
    
    func path(in rect: CGRect) -> Path {
        //El tamaño x,y se coge del .frame
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addQuadCurve(to: CGPoint(x:rect.size.width,y:0), control: CGPoint(x:rect.size.width/2,y:-(rect.size.width*0.1)))
        
        //No consigo dibujar correctamente la forma que quiero
        //path.addRect(CGRect(x:rect.size.width,y:0,width:rect.size.width,height:rect.size.height))
        //path.addQuadCurve(to: CGPoint(x:0, y:rect.size.height), control: CGPoint(x:rect.size.width/2,y:(rect.size.width*0.1)))
        //path.closeSubpath()
        path.addRect(CGRect(x:0,y:0,width:rect.size.width,height:rect.size.height))
        
        return path
    }
    
}
