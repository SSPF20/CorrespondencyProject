import UIKit

extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        var cleanedHex = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        
        // Verifica si el valor hexadecimal incluye el símbolo "#" y lo elimina si es necesario.
        if cleanedHex.hasPrefix("#") {
            cleanedHex = String(cleanedHex.dropFirst())
        }
        
        // Verifica si el valor hexadecimal tiene una longitud válida.
        guard cleanedHex.count == 6 || cleanedHex.count == 8 else {
            self.init(red: 0, green: 0, blue: 0, alpha: alpha)
            return
        }
        
        // Convierte el valor hexadecimal en un número entero.
        var rgb: UInt64 = 0
        Scanner(string: cleanedHex).scanHexInt64(&rgb)
        
        // Extrae los componentes de rojo, verde y azul.
        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0
        
        // Calcula el componente alpha si está presente en el valor hexadecimal.
        let calculatedAlpha: CGFloat
        if cleanedHex.count == 8 {
            calculatedAlpha = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
        } else {
            calculatedAlpha = alpha
        }
        
        self.init(red: red, green: green, blue: blue, alpha: calculatedAlpha)
    }
}
