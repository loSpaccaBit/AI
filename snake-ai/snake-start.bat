@echo off
cd percorso_del_tuo_progetto

rem Controlla se la cartella env esiste
if not exist env (
    echo Creazione dell'ambiente virtuale...
    python -m venv env
    rem Attiva l'ambiente virtuale
    call env\Scripts\Activate
    rem Installa i requisiti
    echo Installo pachhetti!
    pip install -r requirements.txt
)

rem Attiva l'ambiente virtuale
call env\Scripts\Activate

rem Esegui lo script Python
python main.py

rem Disattiva l'ambiente virtuale (opzionale)
deactivate

