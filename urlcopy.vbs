Dim fso,openFile
Set fso=CreateObject("Scripting.FileSystemObject")
Set openFile=fso.OpenTextFile("url.txt",1,True)
a=openFile.Readall
str=a
Set ws = wscript.createobject("wscript.shell")
ws.run "mshta vbscript:clipboardData.SetData("+""""+"text"+""""+","+""""&str&""""+")(close)",0,true