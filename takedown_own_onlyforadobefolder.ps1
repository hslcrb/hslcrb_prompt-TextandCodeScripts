# 대상 경로 설정
$target = "C:\Program Files\Adobe"

# 1. 폴더 및 하위 모든 파일의 소유권을 현재 로그인한 사용자로 변경
# /f: 경로, /r: 하위 포함, /d y: 기본값 '예' 선택
takeown /f $target /r /d y

# 2. 현재 사용자($env:USERNAME)에게 모든 권한(Full Control) 부여
# /grant: 권한 부여, :F (Full Control), /t: 하위 폴더 적용, /q: 조용한 실행, /c: 오류 무시하고 계속
icacls $target /grant "${env:USERNAME}:F" /t /q /c

Write-Host "Adobe 폴더의 권한 처리가 완료되었습니다. 이제 Git 사용이 가능합니다." -ForegroundColor Green
