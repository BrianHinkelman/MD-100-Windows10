cls
echo off
fsutil file createnew c:\bigfile 1000000000 > nul
copy c:\bigfile \\LON-dc1\c$ > nul
del c:\bigfile > nul
copy \\LON-dc1\c$\bigfile c:\bigfile > nul
del \\LON-dc1\c$\bigfile > nul
del c:\bigfile > nul
fsutil file createnew c:\bigfile 2000000000 > nul
copy c:\bigfile \\LON-dc1\c$ > nul
del c:\bigfile > nul
copy \\LON-dc1\c$\bigfile c:\bigfile > nul
del \\LON-dc1\c$\bigfile > nul
del c:\bigfile > nul
fsutil file createnew c:\bigfile 3000000000 > nul
copy c:\bigfile \\LON-dc1\c$ > nul
del c:\bigfile > nul
copy \\LON-dc1\c$\bigfile c:\bigfile > nul
del \\LON-dc1\c$\bigfile > nul
del c:\bigfile > nul
fsutil file createnew c:\bigfile 4000000000 > nul
copy c:\bigfile \\LON-dc1\c$ > nul
del c:\bigfile > nul
copy \\LON-dc1\c$\bigfile c:\bigfile > nul
del \\LON-dc1\c$\bigfile > nul
del c:\bigfile > nul
cls
