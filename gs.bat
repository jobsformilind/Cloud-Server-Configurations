@ECHO OFF

for /f "tokens=*" %%G in ('call git status -s') do (
	echo %%G
	set FILE_FOUND="%%G"
)

IF [%FILE_FOUND%] NEQ [] (
	ECHO Value NOT Missing - %FILE_FOUND%
) ELSE (
	ECHO Value Missing  - %FILE_FOUND%
)