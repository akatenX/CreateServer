chcp 65001
@echo off

:run
echo "-------------------------------------------------"
echo "░█████╗░██████╗░███████╗░█████╗░████████╗███████╗"
echo "██╔══██╗██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██╔════╝"
echo "██║░░╚═╝██████╔╝█████╗░░███████║░░░██║░░░█████╗░░"
echo "██║░░██╗██╔══██╗██╔══╝░░██╔══██║░░░██║░░░██╔══╝░░"
echo "╚█████╔╝██║░░██║███████╗██║░░██║░░░██║░░░███████╗"
echo "░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝░░░╚═╝░░░╚══════╝"
echo "-------------------------------------------------"
echo ***********************
echo 1. Vanilla
echo 2. Spigot
echo 3. Paper
echo 4. Exit
echo ***********************
SET /P ANSWER="番号を入力してください。(1,2,3,4)？"

if /i {%ANSWER%}=={1} (goto :1)
if /i {%ANSWER%}=={2} (goto :2)
if /i {%ANSWER%}=={3} (goto :3)
if /i {%ANSWER%}=={4} (EXIT)

:1
  echo "-----------------------------------------------------"
  echo "██╗░░░██╗███████╗██████╗░░██████╗██╗░█████╗░███╗░░██╗"
  echo "██║░░░██║██╔════╝██╔══██╗██╔════╝██║██╔══██╗████╗░██║"
  echo "╚██╗░██╔╝█████╗░░██████╔╝╚█████╗░██║██║░░██║██╔██╗██║"
  echo "░╚████╔╝░██╔══╝░░██╔══██╗░╚═══██╗██║██║░░██║██║╚████║"
  echo "░░╚██╔╝░░███████╗██║░░██║██████╔╝██║╚█████╔╝██║░╚███║"
  echo "░░░╚═╝░░░╚══════╝╚═╝░░╚═╝╚═════╝░╚═╝░╚════╝░╚═╝░░╚══╝"
  echo "-----------------------------------------------------"
  echo ***********************
  echo 1. 1.17
  echo 2. 1.18
  echo 3. 1.19
  echo 4. 戻る
  echo ***********************
  SET /P ANSWER="番号を入力してください。(1,2,3,4)？ "
  
  if /i {%ANSWER%}=={1} (goto :n1)
  if /i {%ANSWER%}=={2} (goto :n2)
  if /i {%ANSWER%}=={3} (goto :n3)
  if /i {%ANSWER%}=={4} (goto :run)
  

  :n1
    curl -OL https://launcher.mojang.com/v1/objects/dd9ca1bdc855535cd7ce0565f02285ad4d6d1ae5/server.jar
    ren server.jar 1.17.jar
    java -Xms1024M -Xmx1024M -jar 1.17.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
    
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.17.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.17.jar nogui
    pause
    exit


  :n2
    curl -OL https://launcher.mojang.com/v1/objects/2f52c69c90d63c024548ae5c5438ff3156ece6c2/server.jar
    ren server.jar 1.18.jar
    java -Xms1024M -Xmx1024M -jar 1.18.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
    
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.18.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.18.jar nogui
        pause
    exit
    
    
    
  :n3
    curl -OL https://piston-data.mojang.com/v1/objects/93649d39350077f998296138964e4591d4571140/server.jar
    ren server.jar 1.19.jar
    java -Xms1024M -Xmx1024M -jar 1.19.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
    
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.19.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.19.jar nogui
    pause
    exit
    
    
:2
  SET /P ANSWER="BiludTools.jarをダウンロードします。よろしいですか (Y/N)？"
  
  if /i {%ANSWER%}=={y} (goto :yes)
  if /i {%ANSWER%}=={yes} (goto :yes)
  
  goto :run
  
  :yes
  curl -OL https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
  echo "-----------------------------------------------------"
  echo "██╗░░░██╗███████╗██████╗░░██████╗██╗░█████╗░███╗░░██╗"
  echo "██║░░░██║██╔════╝██╔══██╗██╔════╝██║██╔══██╗████╗░██║"
  echo "╚██╗░██╔╝█████╗░░██████╔╝╚█████╗░██║██║░░██║██╔██╗██║"
  echo "░╚████╔╝░██╔══╝░░██╔══██╗░╚═══██╗██║██║░░██║██║╚████║"
  echo "░░╚██╔╝░░███████╗██║░░██║██████╔╝██║╚█████╔╝██║░╚███║"
  echo "░░░╚═╝░░░╚══════╝╚═╝░░╚═╝╚═════╝░╚═╝░╚════╝░╚═╝░░╚══╝"
  echo "-----------------------------------------------------"
  echo ***********************
  echo 1. 1.8
  echo 2. 1.9
  echo 3. 1.10
  echo 4. 1.11
  echo 5. 1.12
  echo 6. 1.13
  echo 7. 1.14
  echo 8. 1.15
  echo 9. 1.16
  echo 10. 1.17
  echo 11. 1.18
  echo 12. 1.19
  echo 13. 戻る
  echo ***********************
  SET /P ANSWER="番号を入力してください。(1~13)？ "






  if /i {%ANSWER%}=={1} (goto :no1)
  if /i {%ANSWER%}=={2} (goto :no2)
  if /i {%ANSWER%}=={3} (goto :no3)
  if /i {%ANSWER%}=={4} (goto :no4)
  if /i {%ANSWER%}=={5} (goto :no5)
  if /i {%ANSWER%}=={6} (goto :no6)
  if /i {%ANSWER%}=={7} (goto :no7)
  if /i {%ANSWER%}=={8} (goto :no8)
  if /i {%ANSWER%}=={9} (goto :no9)
  if /i {%ANSWER%}=={10} (goto :no10)
  if /i {%ANSWER%}=={11} (goto :no11)
  if /i {%ANSWER%}=={12} (goto :no12)
  if /i {%ANSWER%}=={13} (goto :run)
  


  :no1
    java -jar BuildTools.jar --rev 1.8
    ren spigot-1.8.jar 1.8.jar
    java -Xms1024M -Xmx1024M -jar 1.8.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
  
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.8.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.8.jar nogui
    pause
    exit







  :no2
    java -jar BuildTools.jar --rev 1.9
    ren spigot-1.9.jar 1.9.jar
    java -Xms1024M -Xmx1024M -jar 1.9.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
  
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.9.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.9.jar nogui
    pause
    exit








  :no3
    java -jar BuildTools.jar --rev 1.10
    ren spigot-1.10.jar 1.10.jar
    java -Xms1024M -Xmx1024M -jar 1.10.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
  
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.10.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.10.jar nogui
    pause
    exit







  :no4
    java -jar BuildTools.jar --rev 1.11
    ren spigot-1.11.jar 1.11.jar
    java -Xms1024M -Xmx1024M -jar 1.11.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
  
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.11.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.11.jar nogui
    pause
    exit






  :no5
    java -jar BuildTools.jar --rev 1.12
    ren spigot-1.12.jar 1.12.jar
    java -Xms1024M -Xmx1024M -jar 1.12.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
  
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.12.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.12.jar nogui
    pause
    exit






  :no6
    java -jar BuildTools.jar --rev 1.13
    ren spigot-1.13.jar 1.13.jar
    java -Xms1024M -Xmx1024M -jar 1.13.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
  
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.13.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.13.jar nogui
    pause
    exit





  :no7
    java -jar BuildTools.jar --rev 1.14
    ren spigot-1.14.jar 1.14.jar
    java -Xms1024M -Xmx1024M -jar 1.14.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
  
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.14.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.14.jar nogui
    pause
    exit






  :no8
    java -jar BuildTools.jar --rev 1.15
    ren spigot-1.15.jar 1.15.jar
    java -Xms1024M -Xmx1024M -jar 1.15.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
  
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.15.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.15.jar nogui
    pause
    exit






  :no9
    java -jar BuildTools.jar --rev 1.16
    ren spigot-1.16.jar 1.16.jar
    java -Xms1024M -Xmx1024M -jar 1.16.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
  
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.16.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.16.jar nogui
    pause
    exit






  :no10
    java -jar BuildTools.jar --rev 1.17
    ren spigot-1.17.jar 1.17.jar
    java -Xms1024M -Xmx1024M -jar 1.17.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
  
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.17.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.17.jar nogui
    pause
    exit


  :no11
    java -jar BuildTools.jar --rev 1.18
    ren spigot-1.18.jar 1.18.jar
    java -Xms1024M -Xmx1024M -jar 1.18.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
  
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.18.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.18.jar nogui
    pause
    exit



  :no12
    java -jar BuildTools.jar --rev 1.19
    ren spigot-1.19.jar 1.19.jar
    java -Xms1024M -Xmx1024M -jar 1.19.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
  
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.19.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.19.jar nogui
    pause
    exit


:3
  echo "-----------------------------------------------------"
  echo "██╗░░░██╗███████╗██████╗░░██████╗██╗░█████╗░███╗░░██╗"
  echo "██║░░░██║██╔════╝██╔══██╗██╔════╝██║██╔══██╗████╗░██║"
  echo "╚██╗░██╔╝█████╗░░██████╔╝╚█████╗░██║██║░░██║██╔██╗██║"
  echo "░╚████╔╝░██╔══╝░░██╔══██╗░╚═══██╗██║██║░░██║██║╚████║"
  echo "░░╚██╔╝░░███████╗██║░░██║██████╔╝██║╚█████╔╝██║░╚███║"
  echo "░░░╚═╝░░░╚══════╝╚═╝░░╚═╝╚═════╝░╚═╝░╚════╝░╚═╝░░╚══╝"
  echo "-----------------------------------------------------"
  echo ***********************
  echo 1. 1.8
  echo 2. 1.9
  echo 3. 1.10
  echo 4. 1.11
  echo 5. 1.12
  echo 6. 1.13
  echo 7. 1.14
  echo 8. 1.15
  echo 9. 1.16
  echo 10. 1.17
  echo 11. 1.18
  echo 12. 1.19
  echo 13. 戻る
  echo ***********************
  SET /P ANSWER="番号を入力してください。(1~13)？ "




  if /i {%ANSWER%}=={1} (goto :num1)
  if /i {%ANSWER%}=={2} (goto :num2)
  if /i {%ANSWER%}=={3} (goto :num3)
  if /i {%ANSWER%}=={4} (goto :num4)
  if /i {%ANSWER%}=={5} (goto :num5)
  if /i {%ANSWER%}=={6} (goto :num6)
  if /i {%ANSWER%}=={7} (goto :num7)
  if /i {%ANSWER%}=={8} (goto :num8)
  if /i {%ANSWER%}=={9} (goto :num9)
  if /i {%ANSWER%}=={10} (goto :num10)
  if /i {%ANSWER%}=={11} (goto :num11)
  if /i {%ANSWER%}=={12} (goto :num12) 
  if /i {%ANSWER%}=={13} (goto :run)






  :num1
    curl -OL https://api.papermc.io/v2/projects/paper/versions/1.8.8/builds/445/downloads/paper-1.8.8-445.jar
    ren paper-1.8.8-445.jar 1.8.jar
    java -Xms1024M -Xmx1024M -jar 1.8.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
    
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.8.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.8.jar nogui
    pause
    exit




  :num2
    curl -OL https://api.papermc.io/v2/projects/paper/versions/1.9.4/builds/775/downloads/paper-1.9.4-775.jar
    ren paper-1.9.4-775.jar 1.9.jar
    java -Xms1024M -Xmx1024M -jar 1.9.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
    
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.9.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.9.jar nogui
    pause
    exit





  :num3
    curl -OL https://api.papermc.io/v2/projects/paper/versions/1.10.2/builds/918/downloads/paper-1.10.2-918.jar
    ren paper-1.10.2-918.jar 1.10.jar
    java -Xms1024M -Xmx1024M -jar 1.10.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
    
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.10.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.10.jar nogui
    pause
    exit





  :num4
    curl -OL https://api.papermc.io/v2/projects/paper/versions/1.11.2/builds/1106/downloads/paper-1.11.2-1106.jar
    ren paper-1.11.2-1106.jar 1.11.jar
    java -Xms1024M -Xmx1024M -jar 1.11.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
    
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.11.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.11.jar nogui
    pause
    exit





  :num5
    curl -OL https://api.papermc.io/v2/projects/paper/versions/1.12.2/builds/1620/downloads/paper-1.12.2-1620.jar
    ren paper-1.12.2-1620.jar 1.12.jar
    java -Xms1024M -Xmx1024M -jar 1.12.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
    
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.12.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.12.jar nogui
    pause
    exit







  :num6
    curl -OL https://api.papermc.io/v2/projects/paper/versions/1.13.2/builds/657/downloads/paper-1.13.2-657.jar
    ren paper-1.13.2-657.jar 1.13.jar
    java -Xms1024M -Xmx1024M -jar 1.13.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
    
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.13.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.13.jar nogui
    pause
    exit






  :num7
    curl -OL https://api.papermc.io/v2/projects/paper/versions/1.14.4/builds/245/downloads/paper-1.14.4-245.jar
    ren paper-1.14.4-245.jar 1.14.jar
    java -Xms1024M -Xmx1024M -jar 1.14.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
    
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.14.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.14.jar nogui
    pause
    exit






  :num8
    curl -OL https://api.papermc.io/v2/projects/paper/versions/1.15.2/builds/393/downloads/paper-1.15.2-393.jar
    ren paper-1.15.2-393.jar 1.15.jar
    java -Xms1024M -Xmx1024M -jar 1.15.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
    
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.15.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.15.jar nogui
    pause
    exit






  :num9
    curl -OL https://api.papermc.io/v2/projects/paper/versions/1.16.5/builds/794/downloads/paper-1.16.5-794.jar
    ren paper-1.16.5-794.jar 1.16.jar
    java -Xms1024M -Xmx1024M -jar 1.16.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
    
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.16.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.16.jar nogui
    pause
    exit




  :num10
    curl -OL https://api.papermc.io/v2/projects/paper/versions/1.17.1/builds/411/downloads/paper-1.17.1-411.jar
    ren paper-1.17.1-411.jar 1.17.jar
    java -Xms1024M -Xmx1024M -jar 1.17.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
    
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.17.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.17.jar nogui
    pause
    exit



  :num11
    curl -OL https://api.papermc.io/v2/projects/paper/versions/1.18.2/builds/386/downloads/paper-1.18.2-386.jar
    ren paper-1.18.2-386.jar 1.18.jar
    java -Xms1024M -Xmx1024M -jar 1.18.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
    
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.18.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.18.jar nogui
    pause
    exit



  :num12
    curl -OL https://api.papermc.io/v2/projects/paper/versions/1.19/builds/31/downloads/paper-1.19-31.jar
    ren paper-1.19-31.jar 1.19.jar
    java -Xms1024M -Xmx1024M -jar 1.19.jar nogui
    @echo off
    chcp 65001
    SET /P ANSWER="eulaに同意しますか (Y/N)？"
    
    if /i {%ANSWER%}=={y} (goto :yes)
    if /i {%ANSWER%}=={yes} (goto :yes)
    
    EXIT
    
    
    :yes
    @echo on
    ren eula.txt eul.txt
    set BEFORE_STRING=false
    set AFTER_STRING=true
    
    set INPUT_FILE=eul.txt
    set OUTPUT_FILE=eula.txt
    
    setlocal enabledelayedexpansion
    for /f "delims=" %%a in (%INPUT_FILE%) do (
    set line=%%a
    echo !line:%BEFORE_STRING%=%AFTER_STRING%!>>%OUTPUT_FILE%
    )
    del /q eul.txt
    echo java -Xms1024M -Xmx1024M -jar 1.19.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar 1.19.jar nogui
    pause
    exit