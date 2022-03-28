# SVG to PNG
rsvg-convert -h 1024 materials/emacs-dragon.svg > materials/emacs-dragon.png

# Generate .icns
mkdir -p AppIcons/emacs-dragon-icon.iconset
sips -z 16 16     materials/emacs-dragon.png --out AppIcons/emacs-dragon-icon.iconset/icon_16x16.png
sips -z 32 32     materials/emacs-dragon.png --out AppIcons/emacs-dragon-icon.iconset/icon_16x16@2x.png
sips -z 32 32     materials/emacs-dragon.png --out AppIcons/emacs-dragon-icon.iconset/icon_32x32.png
sips -z 64 64     materials/emacs-dragon.png --out AppIcons/emacs-dragon-icon.iconset/icon_32x32@2x.png
sips -z 128 128   materials/emacs-dragon.png --out AppIcons/emacs-dragon-icon.iconset/icon_128x128.png
sips -z 256 256   materials/emacs-dragon.png --out AppIcons/emacs-dragon-icon.iconset/icon_128x128@2x.png
sips -z 256 256   materials/emacs-dragon.png --out AppIcons/emacs-dragon-icon.iconset/icon_256x256.png
sips -z 512 512   materials/emacs-dragon.png --out AppIcons/emacs-dragon-icon.iconset/icon_256x256@2x.png
sips -z 512 512   materials/emacs-dragon.png --out AppIcons/emacs-dragon-icon.iconset/icon_512x512.png
cp materials/emacs-dragon.png AppIcons/emacs-dragon-icon.iconset/icon_512x512@2x.png
iconutil -c icns AppIcons/emacs-dragon-icon.iconset


# Generate .ico
ffmpeg -i AppIcons/emacs-dragon-icon.iconset/icon_256x256.png AppIcons/Emacs.ico
