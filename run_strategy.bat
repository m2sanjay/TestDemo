@echo off
setLocal EnableDelayedExpansion
set CLASSPATH="
for /R ./lib %%a in (*.jar) do (
set CLASSPATH=!CLASSPATH!;%%a
)
set CLASSPATH=!CLASSPATH!"
echo !CLASSPATH!


java -cp %CLASSPATH% -jar lib/ig-webapi-java-sample-console-ui-2.2.0-SNAPSHOT.jar

