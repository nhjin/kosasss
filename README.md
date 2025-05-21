# Helmet Detection Web Application
헬멧 착용 여부를 감지하는 웹 애플리케이션


## 📌 프로젝트 개요
이 프로젝트는 한국소프트웨어산업협회(KOSA)에서 진행한 팀 프로젝트로, 헬멧 착용 여부를 감지하는 웹 애플리케이션을 개발하였습니다. 주요 기능은 다음과 같습니다:

* 헬멧 착용 감지: YOLOv5를 활용하여 이미지 또는 영상에서 헬멧 착용 여부를 실시간으로 감지합니다.

* 웹 인터페이스 제공: Spring Boot를 기반으로 한 웹 인터페이스를 통해 사용자와의 상호작용을 제공합니다.

* 커뮤니티 기능: 사용자 간의 커뮤니케이션을 위한 게시판 및 댓글 기능을 제공합니다.

* 회원 관리: 회원가입, 로그인, 로그아웃 등의 사용자 인증 및 권한 관리를 구현하였습니다.

## 🛠️ 기술 스택
* 프론트엔드: HTML, CSS, JavaScript
* 백엔드: Java, Spring
* 객체 탐지: Python, YOLOv5
* 데이터베이스: MySQL
* 기타 도구: Maven, Git

## 📁 프로젝트 구조

```
kosasss/
├── backend/                  # Spring Boot 기반 백엔드 코드
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/
│   │   │   │   └── com/example/kosasss/
│   │   │   │       ├── controller/    # 컨트롤러 클래스
│   │   │   │       ├── service/       # 서비스 클래스
│   │   │   │       ├── repository/    # 리포지토리 인터페이스
│   │   │   │       └── model/         # 도메인 모델 클래스
│   │   │   └── resources/
│   │   │       ├── templates/         # Thymeleaf 템플릿
│   │   │       └── static/            # 정적 자원 (CSS, JS 등)
│   └── pom.xml                        # Maven 설정 파일
├── frontend/                 # 프론트엔드 코드
│   └── ...                   # HTML, CSS, JS 파일 등
├── yolov5/                   # YOLOv5 객체 탐지 관련 코드
│   ├── detect.py             # 객체 탐지 실행 스크립트
│   └── ...                   # 기타 관련 파일
└── README.md                 # 프로젝트 설명서

```

## 🚀 실행 방법
*  YOLOv5 모델 설정 및 실행
YOLOv5 레포지토리 클론 및 환경 설정

```
git clone https://github.com/ultralytics/yolov5.git
cd yolov5
python detect.py --weights yolov5s.pt --img 640 --source ../frontend/static/images/input.jpg

--source 옵션에 입력 이미지 또는 영상 파일 경로를 지정합니다.
```


## ✨ 주요 기능
* 실시간 헬멧 감지: YOLOv5를 활용하여 이미지 또는 영상에서 헬멧 착용 여부를 실시간으로 감지합니다.
* 사용자 인증 및 권한 관리: 회원가입, 로그인, 로그아웃 등의 기능을 통해 사용자 인증 및 권한 관리를 구현하였습니다.
* 커뮤니티 기능: 사용자 간의 커뮤니케이션을 위한 게시판 및 댓글 기능을 제공합니다.
* 관리자 기능: 게시글 및 댓글 관리, 회원 관리 등의 관리자 기능을 제공합니다.

##  저의 역할..
nhjin: YOLOv5 모델을 활용한 객체 탐지 기능 구현 및 웹 애플리케이션과의 연동, Spring Boot 기반 백엔드 전반 개발

