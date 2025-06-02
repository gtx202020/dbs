#!/bin/bash

# Windows 줄 끝 문자 제거 (스크립트 실행 전 한 번만 해도 됩니다) ###
# dos2unix "$0" > /dev/null 2>&1

echo "Git 상태 확인"
git status
echo "" # Bash에서 빈 줄 출력

echo "모든 변경 사항 추가"
git add -A
echo ""

# 커밋 메시지를 사용자가 직접 입력받는 경우 (주석 처리됨)
# read -p "커밋 메시지를 입력하세요: " commitMessage
# git commit -m "$commitMessage"
# echo ""

# 현재 시간을 커밋 메시지로 사용:
# Linux 'date' 명령어는 Windows 'date /t' 와 다릅니다.
# YYYY-MM-DD_HHMM 형식으로 생성
commitMessage=$(date +"%Y-%m-%d_%H%M")
git commit -m "$commitMessage"
echo ""

echo "원격 저장소에 푸시:"
git push origin master

echo "완료!"