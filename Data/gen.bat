set WORKSPACE=../..
set LUBAN_DLL=%WORKSPACE%\MyFramework-Data\Tools\Luban\Luban.dll
set CONF_ROOT=.
set PRO_NAME=MyFramework
set DATA_OUTPATH=%WORKSPACE%/%PRO_NAME%/Assets/Res/Data/Config/
set OFFSET_OUTPATH=%WORKSPACE%/%PRO_NAME%/Assets/Res/Data/Config/
set CODE_OUTPATH=%WORKSPACE%/%PRO_NAME%/Assets/Scripts/Game/Config/Gen/

dotnet %LUBAN_DLL% ^
    -t client ^
    -c cs-lazyload-bin ^
    -d bin bin-offsetlength  ^
    --conf %CONF_ROOT%\luban.conf ^
    -x outputCodeDir=%CODE_OUTPATH% ^
    -x outputDataDir=%DATA_OUTPATH% ^
	-x bin-offsetlength.outputDataDir=%OFFSET_OUTPATH%
	
pause