@echo off
rem 10_Download_Fritzing_Parts_Library.bat
rem http://www.neko.ne.jp/~freewing/software/build_fritzing_100_windows/
rem Copyright (c) 2023-2024 FREE WING,Y.Sakamoto
echo %0
timeout /T 10 /NOBREAK
rem Load configuration
if exist qt_config.bat call qt_config.bat

cd /d %FRITZING_WORKSPACE_DIR%

Path=%cd%\PortableGit\bin;%Path%

mkdir release64
cd release64

rem Commits on Sep 30, 2024
echo https://github.com/fritzing/fritzing-parts
git clone https://github.com/fritzing/fritzing-parts -b 1.0.4

cd ..

exit

