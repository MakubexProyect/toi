#Detener Tareas
schtasks /End /TN �TOI\TOI-Update�
schtasks /End /TN �TOI\TOI-Inventario�
schtasks /End /TN �TOI\TOI-Password"

#IMPORTADO DE TAREA POR XML
schtasks /create /TN �TOI\TOI-Update� /RU "SYSTEM" /XML "C:\sonda\toi\toi_programer\TOI-Update.xml" /F
schtasks /create /TN �TOI\TOI-Inventario� /RU "SYSTEM" /XML "C:\sonda\toi\toi_programer\TOI-Inventario.xml" /F
schtasks /create /TN �TOI\TOI-Password" /RU "SYSTEM" /XML "C:\sonda\toi\toi_programer\TOI-Password.xml" /F

#Start Tareas
schtasks /Run /TN �TOI\TOI-Update�
schtasks /Run /TN �TOI\TOI-Inventario�
schtasks /Run /TN �TOI\TOI-Password"

#Copia de StartUP - CONTINGENCIA
#robocopy "C:\sonda\toi\Install\alt\" 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp' inventario.bat /MIR
#robocopy "C:\sonda\toi\fondo\" 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp' *.lnk
#powershell -WindowStyle Hidden -file "C:\sonda\toi\toi_task\inventario_v2.ps1"

