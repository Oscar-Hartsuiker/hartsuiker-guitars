@echo off
setlocal enabledelayedexpansion

:: Create an output directory
if not exist "web_images" mkdir "web_images"

:: Loop through all .jpg and .jpeg files
for %%f in (*.jpg *.jpeg) do (
    echo Converting %%f...
    
    :: %%~nf gets just the filename without the extension
    ffmpeg -i "%%f" -vcodec libwebp -lossless 0 -q:v 75 "web_images\%%~nf.webp"
)

echo.
echo Done! Your WebP files are in the 'web_images' folder.
pause