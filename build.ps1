#escape=`
$DockerUser="amitie10g"

# Visual Studio version
$VisualStudioVersions = @(
  "2022",
  "2019",
  "2017"
)

# Windows version
$WindowsVersions = @(
  "ltsc2022",
  "ltsc2019"
)

# Build each version available
foreach (${VSVer} in ${VisualStudioVersions}) {
	docker build `
	-t ${DockerUser}/visualstudio${VSVer}buildtools `
	--build-arg VS_VER=${VSVer} `
	--isolation=hyperv  `
	.
	foreach (${WinVer} in ${WindowsVersions}) {
		docker build `
			-t ${DockerUser}/visualstudio${VSVer}buildtools:${WinVer} `
			--build-arg WIN_VER=${WinVer} `
			--build-arg VS_VER=${VSVer} `
			--isolation=hyperv  `
			.
	}
	
	docker push ${DockerUser}/visualstudio${VSVer}buildtools --all-tags
}
