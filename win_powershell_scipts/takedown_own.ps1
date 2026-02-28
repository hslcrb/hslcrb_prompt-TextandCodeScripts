# 관리자 권한으로 PowerShell을 열고 아래 명령어를 입력하세요.
# 'C:\YourFolderName' 부분을 실제 폴더 경로로 수정하세요.

$targetFolder = "C:\YourFolderName"

# 1. 폴더 소유권을 현재 사용자로 변경
takeown /f $targetFolder /r /d y

# 2. 현재 사용자에게 모든 권한(Full Control) 부여
icacls $targetFolder /grant "${env:USERNAME}:F" /t /q /c
