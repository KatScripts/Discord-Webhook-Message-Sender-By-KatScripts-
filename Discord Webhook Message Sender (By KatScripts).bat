@echo off

color f3
title Discord Webhook Message Sender (By KatScripts)

setlocal

set /p file_name="Enter the name of the text file (including the .txt extension): "

for /f "usebackq delims=" %%a in (webhook_url.txt) do set webhook_url=%%a

for /f "usebackq delims=" %%a in (%file_name%) do (
    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"%%a\"}" %webhook_url%
)