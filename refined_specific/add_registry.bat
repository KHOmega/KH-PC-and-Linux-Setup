@echo off
REG ADD "HKEY_CURRENT_USER\Software\Wine\DllOverrides" /v "version" /t REG_SZ /d "native,builtin" /f
REG ADD "HKEY_CURRENT_USER\Software\Wine\DllOverrides" /v "LuaBackend" /t REG_SZ /d "native,builtin" /f
REG ADD "HKEY_CURRENT_USER\Software\Wine\DllOverrides" /v "dinput8" /t REG_SZ /d "native,builtin" /f
