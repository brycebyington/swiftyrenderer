//
//  main.swift
//  swiftyrenderer
//
//  Created by Bryce Byington on 4/17/25.
//

import Foundation
import tgaimage

let white: TGAColor = TGAColor(255, 255, 255, 255);
let red: TGAColor = TGAColor(255, 0, 0, 255);

/*
 to-do: fixme
 */
func line(x0: Double, y0: Double, x1: Double, y1: Double, image: inout TGAImage, color: TGAColor) {
    for t: Double in stride(from: 0.0, to: 1.0, by: 0.01) {
        let x = x0 + (x1-x0)*t
        let y = y0 + (y1-y0)*t
        image.set(Int32(x), Int32(y), color)
    }
    
}

func main() -> Int {
    var image = TGAImage(100, 100, TGAImage.Format.RGB.rawValue) /* accessing TGAImage::RGB */
    image.set(52, 41, red)
    line(x0: 13, y0: 20, x1: 80, y1: 99, image: &image, color: white)
    image.write_tga_file("output.tga")
    return 0
}

main()
