#/bin/bash
runtime=$(date)
devenv="C:/Program Files (x86)/Microsoft Visual Studio 12.0/Common7/IDE/"

buildConfig="C:/C#/InspectDrawing/trunk/Overlay/InspectDrawing2D.csproj"
buildTypeDll="Library"
buildTypeExe="WinExe"

buildSolution="D:/Repositories/inspect/trunk/InspectDrawing2D.sln"
buildReleaseOutput="C:/C#/InspectDrawing/trunk/Overlay/bin/Release"
buildDll="InspectDrawing2D.dll"

inspectDir="D:/Repositories/inspect"

echo "Starting at ${runtime}"
echo "Set application to \"${buildTypeDll}\""
sed -i "s/\\(<OutputType.*>\\)[^<>]*\\(<\\/OutputType.*\\)/\\1${buildTypeDll}\\2/" $buildConfig

echo "Starting build..."
cd "${devenv}";
./devenv.exe /build Release ${buildSolution};

echo "Build ended \"${buildSolution}\""
echo "Copying \"${buildDll}\" to \"${inspectDir}\""
cp ${buildReleaseOutput}/InspectDrawing2D.dll ${inspectDir}/InspectDrawing2D.dll

echo "Reverting to \"${buildTypeExe}\""
sed -i "s/\\(<OutputType.*>\\)[^<>]*\\(<\\/OutputType.*\\)/\\1${buildTypeExe}\\2/" $buildConfig


