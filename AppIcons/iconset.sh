mkdir Emacs.iconset
sips -z 16 16     Emacs_1024.png --out Emacs.iconset/icon_16x16.png
sips -z 32 32     Emacs_1024.png --out Emacs.iconset/icon_16x16@2x.png
sips -z 32 32     Emacs_1024.png --out Emacs.iconset/icon_32x32.png
sips -z 64 64     Emacs_1024.png --out Emacs.iconset/icon_32x32@2x.png
sips -z 128 128   Emacs_1024.png --out Emacs.iconset/icon_128x128.png
sips -z 256 256   Emacs_1024.png --out Emacs.iconset/icon_128x128@2x.png
sips -z 256 256   Emacs_1024.png --out Emacs.iconset/icon_256x256.png
sips -z 512 512   Emacs_1024.png --out Emacs.iconset/icon_256x256@2x.png
sips -z 512 512   Emacs_1024.png --out Emacs.iconset/icon_512x512.png
cp Emacs_1024.png Emacs.iconset/icon_512x512@2x.png
iconutil -c icns Emacs.iconset
