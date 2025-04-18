# swiftyrenderer: a software renderer written in swift built on top of tinyrenderer's tgaimage

# please see [ssloy/tinyrenderer](https://github.com/ssloy/tinyrenderer/) for the original source code

## the code

```swift
import tgaimage

let white: TGAColor = TGAColor(255, 255, 255, 255);
let red: TGAColor = TGAColor(255, 0, 0, 255);

func main() -> Int {
    var image = TGAImage(100, 100, TGAImage.Format.RGB.rawValue) /* TGAImage::RGB */
    image.set(52, 41, red)
    image.write_tga_file("output.tga")
    return 0
}
```

## output
![output](https://github.com/user-attachments/assets/cb1123b4-29de-4016-81b6-086043867be7)
