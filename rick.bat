@echo off
setlocal

:: Defina o número de instâncias que você deseja abrir
set "num_instancias=10"

:: Loop para abrir o cmd e executar o comando curl
for /l %%i in (1, 1, %num_instancias%) do (
    start cmd /k curl ASCII.live/can-you-hear-me
)

:: Aguarde 10 minutos (600 segundos)
timeout /t 600 /nobreak >nul

:: Reproduza a música "never gonna give me up"
powershell -c "(New-Object Media.SoundPlayer 'C:\Users\Lenovo\Downloads\Never_Gonna_Give_You_Up_16_bits.wav').PlaySync();"

endlocal
