$ErrorActionPreference = 'Stop'

#
# dotnet build isn't used because it can't build net35 tfms
#

msbuild -v:m -restore -t:Build -p:Configuration=Release -p:TargetFramework=net472 EazFixer.sln
if ($LASTEXITCODE) { exit $LASTEXITCODE }
