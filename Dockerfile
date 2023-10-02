# ltsc2022, ltsc2019, ltsc2016
ARG WIN_VER=ltsc2022

# 2022, 2019, 2017
ARG VS_VER=2022

FROM amitie10g/chocolatey:${WIN_VER}
ARG VS_VER

SHELL ["powershell", "-Command"]
RUN choco install -y visualstudio${env:VS_VER}buildtools; choco-cleaner

WORKDIR C:\\Users\\ContainerUser

# Define the entry point for the docker container.
# This entry point starts the developer command prompt and launches the PowerShell shell.
ENTRYPOINT ["C:\\Program Files (x86)\\Microsoft Visual Studio\\$VS_VER\\BuildTools\\Common7\\Tools\\VsDevCmd.bat", "&&", "powershell.exe", "-NoLogo", "-ExecutionPolicy", "Bypass"]
