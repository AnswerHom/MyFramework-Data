#!/bin/bash

[ -d Luban ] && rm -rf Luban

dotnet build  ../../kaji-luban/src/Luban/Luban.csproj -c Release -o Luban