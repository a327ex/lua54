call cl /MD /O2 /c /DLUA_BUILD_AS_DLL src/*.c
ren lua.obj lua.o
ren luac.obj luac.o
link /DLL /IMPLIB:lua54.lib /OUT:lua54.dll *.obj
link /OUT:lua54.exe lua.o lua54.lib
lib /OUT:lua54-static.lib *.obj
link /OUT:luac.exe luac.o lua54-static.lib
del *.obj
del *.exp
del *.o
