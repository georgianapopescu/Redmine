@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"C:\Bitnami\redmine-3.4.6-3\ruby\bin\ruby.exe" "C:/Bitnami/redmine-3.4.6-3/apps/redmine/htdocs/vendor/bundle/ruby/2.3.0/bin/coderay" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"C:\Bitnami\redmine-3.4.6-3\ruby\bin\ruby.exe" "%~dpn0" %*
