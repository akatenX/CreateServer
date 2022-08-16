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
  echo 1. 1.17
  echo 2. 1.18
  echo 3. 1.19
  echo 4. 戻る
  echo ***********************
  SET /P ANSWER="番号を入力してください。(1,2,3,4)？ "
  
  if /i {%ANSWER%}=={1} (goto :no1)
  if /i {%ANSWER%}=={2} (goto :no2)
  if /i {%ANSWER%}=={3} (goto :no3)
  if /i {%ANSWER%}=={4} (goto :run)
  



  :no1
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


  :no2
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



  :no3
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
  echo 1. 1.17
  echo 2. 1.18
  echo 3. 1.19
  echo 4. 戻る
  echo ***********************
  SET /P ANSWER="番号を入力してください。(1,2,3,4)？ "
  
  if /i {%ANSWER%}=={1} (goto :num)
  if /i {%ANSWER%}=={2} (goto :num2)
  if /i {%ANSWER%}=={3} (goto :num3) 
  if /i {%ANSWER%}=={4} (goto :run)
 
  :num1
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



  :num2
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



  :num3
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