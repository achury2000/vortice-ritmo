@echo off
title VORTICE RITMO - servidor local
echo Abriendo el juego en http://localhost:8123 ...
echo (Deja esta ventana abierta mientras juegas. Ciérrala para terminar.)
start "" http://localhost:8123/index.html
where py >nul 2>nul && (py -m http.server 8123 & goto :eof)
where python >nul 2>nul && (python -m http.server 8123 & goto :eof)
where npx >nul 2>nul && (npx --yes serve -l 8123 . & goto :eof)
echo No encontre Python ni Node. Abre index.html con doble clic (Chrome o Edge).
pause
