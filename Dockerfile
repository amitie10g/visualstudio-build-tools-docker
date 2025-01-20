# ltsc2022, ltsc2019, ltsc2016
ARG WIN_VER=ltsc2022

FROM amitie10g/chocolatey:${WIN_VER}

SHELL ["powershell", "-Command"]

# 2022, 2019, 2017
ARG VS_VER=2022
RUN choco install -y --execution-timeout=20000 visualstudio${env:VS_VER}buildtools; choco-cleaner

WORKDIR C:\\Users\\ContainerUser

# Create a script in the docker container's file system we can use to spawn a developer shell.  We do it this weay because we can evaluate VS_VER here, but we can't in ENTRYPOINT.
RUN Set-Content -Path dev_prompt.bat -value "\"@call \"\"C:\Program Files (x86)\Microsoft Visual Studio\${env:VS_VER}\BuildTools\Common7\Tools\VsDevCmd.bat\"\" && powershell.exe -NoLogo -ExecutionPolicy Bypass\""

# Define the entry point for the docker container.
# This entry point starts the developer command prompt and launches the PowerShell shell.
ENTRYPOINT ["cmd.exe", "/c", "C:\\Users\\ContainerUser\\dev_prompt.bat"]
