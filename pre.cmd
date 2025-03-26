
echo Restoring Arcade SDK

mkdir %~dp0\artifacts\toolset
echo ^<Project Sdk="Microsoft.DotNet.Arcade.Sdk"/^> > %~dp0\artifacts\toolset\arcadesdk.proj

%_Static_Artifacts_MsBuild_Run% %~dp0\artifacts\toolset\arcadesdk.proj /t:__WriteToolsetLocation /clp:ErrorsOnly`;NoSummary /p:__ToolsetLocationOutputFile=%~dp0\artifacts\toolset\arcadesdk.location.txt

for /f %%i in ('type %~dp0\artifacts\toolset\arcadesdk.location.txt') do set _Static_Dir_Source_Project=%%i

echo Arcade SDK Build: %_Static_Dir_Source_Project%
