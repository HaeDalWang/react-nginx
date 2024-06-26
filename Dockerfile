# 베이스 이미지
FROM python:3.9-slim

# 작업 디렉터리 설정
WORKDIR /app

# 종속성 파일 복사 및 설치
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# 애플리케이션 소스 복사
COPY app.py app.py

# 컨테이너 포트 노출
EXPOSE 80

# 애플리케이션 실행
CMD ["python", "app.py"]

