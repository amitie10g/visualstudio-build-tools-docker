# Visual Studio Build Tools
This container brings Visual Studio Build Tools (2022, 2019 and 2017) in a Docker container using the [.NET Framework runtime](https://hub.docker.com/_/microsoft-dotnet-framework-runtime/) 4.8 (on Windows Server Core ltsc2022 and ltsc2019) base image, plus [Chocolatey](https://chocolatey.org/).

# Container images available at Docker Hub
* [``amitie10g/visualstudio2022buildtools``](https://hub.docker.com/r/amitie10g/visualstudio2022buildtools)
* [``amitie10g/visualstudio2019buildtools``](https://hub.docker.com/r/amitie10g/visualstudio2019buildtools)
* [``amitie10g/visualstudio2017buildtools``](https://hub.docker.com/r/amitie10g/visualstudio2017buildtools)

## Tags:
* ``ltsc2022`` ``latest``
* ``ltsc2019``

# Building
* GitHub Actions workflow is provided for automated builds onto Server Core 2022 and 2019.
* ``build.ps1`` Powershell script is provided for building different versions as your needs.

# Licensing
* The contents on this repo are released into the Public domain (**The Unlicense**)
* Chocolatey is licensed under the **[Apache License](https://github.com/chocolatey/choco/blob/master/LICENSE)**
* Micriosoft Windows Container images usage is subjected to the **[Microsoft EULA](https://learn.microsoft.com/virtualization/windowscontainers/images-eula)**
* Visual Studio Build Tools usage is subjected to the **[Microsoft EULA](https://visualstudio.microsoft.com/license-terms/vs2022-ga-diagnosticbuildtools/)**
