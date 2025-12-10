@echo off
REG ADD "HKEY_CURRENT_USER\Software\Wine\DllOverrides" /v "version" /t REG_SZ /d "native,builtin" /f
