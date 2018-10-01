@ECHO OFF

for /f %%i in ('call git status -s') do set FILE_FOUND=%%i

IF [%FILE_FOUND%] NEQ [] (
	ECHO Value NOT Missing - %FILE_FOUND%
) ELSE (
	ECHO Value Missing  - %FILE_FOUND%
)