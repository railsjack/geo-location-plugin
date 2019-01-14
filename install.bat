@echo off
mkdir "..\src\org"
mkdir "..\src\org\apache"
mkdir "..\src\org\apache\cordova"
mkdir "..\src\org\apache\cordova\geolocation"

copy ".\src\android\Geolocation.java" "..\src\org\apache\cordova\geolocation\Geolocation.java"

mkdir "..\assets\www\plugins"
mkdir "..\assets\www\plugins\org.apache.cordova.geolocation"
mkdir "..\assets\www\plugins\org.apache.cordova.geolocation\www"

copy ".\www\geolocation.js" "..\assets\www\plugins\org.apache.cordova.geolocation\www\geolocation.js"

echo.
echo.
echo Please copy ^& paste the following text into your android-project/res/xml/config.xml
echo.
echo.

echo ^<feature name="Geolocation"^>
echo     ^<param name="android-package" value="org.apache.cordova.geolocation.Geolocation" ^/^>
echo ^<^/feature^>
echo.
echo.

REM echo.
REM echo.
REM echo Please copy ^& paste the following text to cordova_plugins.js
REM echo.
REM echo.
REM echo ^{
REM echo     "file" ^: "plugins/org.apache.cordova.geolocation/www/geolocation.js",
REM echo     "id" ^: "org.apache.cordova.geolocation.geolocation",
REM echo     "clobbers" ^: ^[
REM echo         "geolocation"
REM echo     ^]
REM echo ^}
REM echo.
REM echo.
REM echo.

REM echo "org.apache.cordova.geolocation" ^: "1.0.0"

REM echo.
REM echo.

pause