@echo off
for /f "tokens=1,2 delims==" %%a in (.env) do set %%a=%%b

mysql -u %DB_USER% -p%DB_PASS% < "%SCRIPTS_PATH%\pokemon_db_script.sql"
timeout /t 1 >nul
mysql -u %DB_USER% -p%DB_PASS% %DB_NAME% < "%SCRIPTS_PATH%\views.sql"