@echo off
setlocal
cd /d "%~dp0"
echo ===== Moon Farm Commander: APK builder =====

rem --- 1. Find Java (Android Studio ships one) ---
if defined JAVA_HOME goto javaok
if exist "%ProgramFiles%\Android\Android Studio\jbr\bin\java.exe" set "JAVA_HOME=%ProgramFiles%\Android\Android Studio\jbr"
if defined JAVA_HOME goto javaok
if exist "%ProgramFiles%\Android\Android Studio\jre\bin\java.exe" set "JAVA_HOME=%ProgramFiles%\Android\Android Studio\jre"
if defined JAVA_HOME goto javaok
echo [ERROR] Java not found. Install Android Studio, or install JDK 17 and set JAVA_HOME.
goto fail
:javaok
echo Using Java: %JAVA_HOME%

rem --- 2. Find Android SDK ---
if defined ANDROID_HOME goto sdkok
if exist "%LOCALAPPDATA%\Android\Sdk" set "ANDROID_HOME=%LOCALAPPDATA%\Android\Sdk"
if defined ANDROID_HOME goto sdkok
echo [ERROR] Android SDK not found. Open Android Studio, Tools - SDK Manager, and install Android SDK Platform 34.
goto fail
:sdkok
echo Using Android SDK: %ANDROID_HOME%
set "SDKP=%ANDROID_HOME:\=/%"
> local.properties echo sdk.dir=%SDKP%

rem --- 3. Accept SDK licenses if the command-line tools exist ---
if exist "%ANDROID_HOME%\cmdline-tools\latest\bin\sdkmanager.bat" (
  echo Accepting Android SDK licenses...
  (for /l %%i in (1,1,30) do @echo y) | "%ANDROID_HOME%\cmdline-tools\latest\bin\sdkmanager.bat" --licenses >nul 2>&1
)

rem --- 4. Build ---
echo Building APK. The first build downloads Gradle and libraries and can take 5-15 minutes...
call gradlew.bat assembleDebug
if errorlevel 1 goto fail

if not exist "app\build\outputs\apk\debug\app-debug.apk" goto fail
copy /y "app\build\outputs\apk\debug\app-debug.apk" "Moon-Farm-Commander.apk" >nul
echo.
echo ===== SUCCESS =====
echo APK: %~dp0app\build\outputs\apk\debug\app-debug.apk
echo Copy: %~dp0Moon-Farm-Commander.apk
explorer /select,"%~dp0Moon-Farm-Commander.apk"
pause
exit /b 0

:fail
echo.
echo ===== BUILD FAILED. Read the message above (the line that says what went wrong). =====
pause
exit /b 1
