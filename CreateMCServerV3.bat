@echo off
chcp 65001

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
echo 4. Plugin-Install 
echo 5. Exit
echo ***********************
SET /P ANSWER="番号を入力してください。(1,2,3,4)？"

if /i {%ANSWER%}=={1} (goto :1)
if /i {%ANSWER%}=={2} (goto :2)
if /i {%ANSWER%}=={3} (goto :3)
if /i {%ANSWER%}=={4} (goto :plugin)
if /i {%ANSWER%}=={5} (EXIT)

goto :run

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
  
  if /i {%ANSWER%}=={1} (goto :n1)
  if /i {%ANSWER%}=={2} (goto :n2)
  if /i {%ANSWER%}=={3} (goto :n3)
  if /i {%ANSWER%}=={4} (goto :n4)
  if /i {%ANSWER%}=={5} (goto :n5)
  if /i {%ANSWER%}=={6} (goto :n6)
  if /i {%ANSWER%}=={7} (goto :n7)
  if /i {%ANSWER%}=={8} (goto :n8)
  if /i {%ANSWER%}=={9} (goto :n9)
  if /i {%ANSWER%}=={10} (goto :n10)
  if /i {%ANSWER%}=={11} (goto :n11)
  if /i {%ANSWER%}=={12} (goto :n12)
  if /i {%ANSWER%}=={13} (goto :run)


  :n1
    call:va "https://launcher.mojang.com/v1/objects/b58b2ceb36e01bcd8dbf49c8fb66c55a9f0676cd/server.jar" "1.8"

  :n2
    call:va "https://launcher.mojang.com/v1/objects/edbb7b1758af33d365bf835eb9d13de005b1e274/server.jar" "1.9"

  :n3
    call:va "https://launcher.mojang.com/v1/objects/3d501b23df53c548254f5e3f66492d178a48db63/server.jar" "1.10"

  :n4
    call:va "https://launcher.mojang.com/v1/objects/f00c294a1576e03fddcac777c3cf4c7d404c4ba4/server.jar" "1.11"

  :n5
    call:va "https://launcher.mojang.com/v1/objects/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar" "1.12"

  :n6
    call:va "https://launcher.mojang.com/v1/objects/3737db93722a9e39eeada7c27e7aca28b144ffa7/server.jar" "1.13"

  :n7
    call:va "https://launcher.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar" "1.14"

  :n8
    call:va "https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar" "1.15"

  :n9
    call:va "https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar" "1.16"

  :n10
    call:va "https://launcher.mojang.com/v1/objects/dd9ca1bdc855535cd7ce0565f02285ad4d6d1ae5/server.jar" "1.17"
    
  :n11
    call:va "https://launcher.mojang.com/v1/objects/2f52c69c90d63c024548ae5c5438ff3156ece6c2/server.jar" "1.18"
    
  :n12
    call:va "https://piston-data.mojang.com/v1/objects/93649d39350077f998296138964e4591d4571140/server.jar" "1.19"
    
    
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
    call:sp "1.8"

  :no2
    call:sp "1.9"

  :no3
    call:sp "1.10"

  :no4
    call:sp "1.11"

  :no5
    call:sp "1.12"

  :no6
    call:sp "1.13"

  :no7
    call:sp "1.14"

  :no8
    call:sp "1.15"

  :no9
    call:sp "1.16"

  :no10
    call:sp "1.17"

  :no11
    call:sp "1.18"

  :no12
    call:sp "1.19"

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
    call:pa "https://api.papermc.io/v2/projects/paper/versions/1.8.8/builds/445/downloads/paper-1.8.8-445.jar" "paper-1.8.8-445" "1.8"

  :num2
    call:pa "https://api.papermc.io/v2/projects/paper/versions/1.9.4/builds/775/downloads/paper-1.9.4-775.jar" "paper-1.9.4-775" "1.9"

  :num3
    call:pa "https://api.papermc.io/v2/projects/paper/versions/1.10.2/builds/918/downloads/paper-1.10.2-918.jar" "paper-1.10.2-918" "1.10"

  :num4
    call:pa "https://api.papermc.io/v2/projects/paper/versions/1.11.2/builds/1106/downloads/paper-1.11.2-1106.jar" "paper-1.11.2-1106" "1.11"

  :num5
    call:pa "https://api.papermc.io/v2/projects/paper/versions/1.12.2/builds/1620/downloads/paper-1.12.2-1620.jar" "paper-1.12.2-1620" "1.12"

  :num6
    call:pa "https://api.papermc.io/v2/projects/paper/versions/1.13.2/builds/657/downloads/paper-1.13.2-657.jar" "paper-1.13.2-657" "1.13"

  :num7
    call:pa "https://api.papermc.io/v2/projects/paper/versions/1.14.4/builds/245/downloads/paper-1.14.4-245.jar" "paper-1.14.4-245" "1.14"

  :num8
    call:pa "https://api.papermc.io/v2/projects/paper/versions/1.15.2/builds/393/downloads/paper-1.15.2-393.jar" "paper-1.15.2-393" "1.15"

  :num9
    call:pa "https://api.papermc.io/v2/projects/paper/versions/1.16.5/builds/794/downloads/paper-1.16.5-794.jar" "paper-1.16.5-794" "1.16"

  :num10
    call:pa "https://api.papermc.io/v2/projects/paper/versions/1.17.1/builds/411/downloads/paper-1.17.1-411.jar" "paper-1.17.1-411" "1.17"

  :num11
    call:pa "https://api.papermc.io/v2/projects/paper/versions/1.18.2/builds/386/downloads/paper-1.18.2-386.jar" "paper-1.18.2-386" "1.18"

  :num12
    call:pa "https://api.papermc.io/v2/projects/paper/versions/1.19/builds/31/downloads/paper-1.19-31.jar" "paper-1.19-31" "1.19"
    

  :va
    curl -OL %~1
    ren server.jar %~2.jar
    java -Xms1024M -Xmx1024M -jar %~2.jar nogui
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
    echo java -Xms1024M -Xmx1024M -jar %~2.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar %~2.jar nogui
    pause
    exit
  
  :sp
    java -Xms1024M -Xmx1024M -jar BuildTools.jar --rev %~1
    ren spigot-%~1.jar %~1.jar
    java -Xms1024M -Xmx1024M -jar %~1.jar nogui
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
    echo java -Xms1024M -Xmx1024M -jar %~1.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar %~1.jar nogui
    pause
    exit
  
  :pa
    curl -OL %~1
    ren %~2.jar 1.8.jar
    java -Xms1024M -Xmx1024M -jar %~3.jar nogui
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
    echo java -Xms1024M -Xmx1024M -jar %~3.jar nogui > serverstart.bat
    java -Xms1024M -Xmx1024M -jar %~3.jar nogui
    pause
    exit

:plugin
  rem setlocal enabledelayedexpansion
  if "%pl%" == "" (set /p pl="Pluginsの場所を入力してください")
  if exist "%pl%" (
    goto :plg
  ) else (
    echo フォルダが存在しません。
    set pl=
    SET /P an="Pluginsを検索します。よろしいですか (Y/N)？"
  )
    if /i {%an%}=={y} (goto :pyes)
    if /i {%an%}=={yes} (goto :pyes)
    if /i {%an%}=={n} (goto :plugin)
    if /i {%an%}=={no} (goto :plugin)
    goto :plugin
  :pyes
    cd C:\
    dir /b /s /ad plugins
    cd %~dp0
    goto :plugin
  
  :plg
    echo "------------------------------------------------------"
    echo "██████╗░██╗░░░░░██╗░░░██╗░██████╗░██╗███╗░░██╗░██████╗"
    echo "██╔══██╗██║░░░░░██║░░░██║██╔════╝░██║████╗░██║██╔════╝"
    echo "██████╔╝██║░░░░░██║░░░██║██║░░██╗░██║██╔██╗██║╚█████╗░"
    echo "██╔═══╝░██║░░░░░██║░░░██║██║░░╚██╗██║██║╚████║░╚═══██╗"
    echo "██║░░░░░███████╗╚██████╔╝╚██████╔╝██║██║░╚███║██████╔╝"
    echo "╚═╝░░░░░╚══════╝░╚═════╝░░╚═════╝░╚═╝╚═╝░░╚══╝╚═════╝░"
    echo "------------------------------------------------------"
    echo ***********************
    echo 1. Geyser + FloodGate
    echo 2. CoreProtect
    echo 3. WorldEdit
    echo 4. OpenInv
    echo 5. LuckPerms
    echo 6. PluginManager
    echo 7. WorldGuard
    echo 8. Multiverse-Core + Multiverse-Portals
    echo 9. ViaVersion + ViaBackwards + ViaRewind
    echo 10. LunaChat
    echo 11. Exit
    echo ***********************
    SET /P ANSWER="番号を入力してください。(1,2,3,4)？"
    
    if /i {%ANSWER%}=={1} (goto :p1)
    if /i {%ANSWER%}=={2} (goto :p2)
    if /i {%ANSWER%}=={3} (goto :p3)
    if /i {%ANSWER%}=={4} (goto :p4)
    if /i {%ANSWER%}=={5} (goto :p5)
    if /i {%ANSWER%}=={6} (goto :p6)
    if /i {%ANSWER%}=={7} (goto :p7)
    if /i {%ANSWER%}=={8} (goto :p8)
    if /i {%ANSWER%}=={9} (goto :p9)
    if /i {%ANSWER%}=={10} (goto :p10)
    if /i {%ANSWER%}=={11} (EXIT)

:p1
  curl -o Geyser.jar -L "https://ci.opencollab.dev//job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/spigot/build/libs/Geyser-Spigot.jar"
  curl -o FloodGate.jar -L "https://ci.opencollab.dev/job/GeyserMC/job/Floodgate/job/master/lastSuccessfulBuild/artifact/spigot/build/libs/floodgate-spigot.jar"
  move Geyser.jar "%pl%"
  move FloodGate.jar "%pl%"
  echo インストールしました。
  goto :plugin
:p2
  curl -o CoreProtect.jar -L "https://www.spigotmc.org/resources/coreprotect.8631/download?version=446084"
  move CoreProtect.jar "%pl%"
  echo インストールしました。
  goto :plugin
:p3
  curl -o WorldEdit.jar -L "https://dev.bukkit.org/projects/worldedit/files/latest"
  move WorldEdit.jar "%pl%"
  echo インストールしました。
  goto :plugin
:p4
  curl -o OpenInv.jar -L "https://dev.bukkit.org/projects/openinv/files/latest"
  move OpenInv.jar "%pl%"
  echo インストールしました。
  goto :plugin
:p5
  curl -o LuckPerms.jar -L "https://download.luckperms.net/1460/bukkit/loader/LuckPerms-Bukkit-5.4.52.jar"
  move LuckPerms.jar "%pl%"
  echo インストールしました。
  goto :plugin
:p6
  curl -o PluginManager.jar -L "https://www.spigotmc.org/resources/pluginmanager.69061/download?version=470254"
  move PluginManager.jar "%pl%"
  echo インストールしました。
  goto :plugin
:p7
  curl -o WorldGuard.jar -L "https://dev.bukkit.org/projects/worldguard/files/latest"
  move WorldGuard.jar "%pl%"
  echo インストールしました。
  goto :plugin
:p8
  curl -o Multiverse-Core.jar -L "https://dev.bukkit.org/projects/multiverse-core/files/latest"
  curl -o Multiverse-Portals.jar -L "https://dev.bukkit.org/projects/multiverse-portals/files/latest"
  move Multiverse-Core.jar "%pl%"
  move Multiverse-Portals "%pl%"
  echo インストールしました。
  goto :plugin
:p9
  curl -o ViaVersion.jar -L "https://www.spigotmc.org/resources/viaversion.19254/download?version=466457"
  curl -o ViaBackwards.jar -L "https://www.spigotmc.org/resources/viabackwards.27448/download?version=466459"
  curl -o ViaRewind.jar -L "https://www.spigotmc.org/resources/viarewind.52109/download?version=430131"
  move ViaVersion.jar "%pl%"
  move ViaBackwards.jar "%pl%"
  move ViaRewind.jar "%pl%"
  echo インストールしました。
  goto :plugin
:p10
  curl -o LunaChat.jar -L "https://www.spigotmc.org/resources/lunachat.82293/download?version=359121"
  move LunaChat.jar "%pl%"
  echo インストールしました。
  goto :plugin
