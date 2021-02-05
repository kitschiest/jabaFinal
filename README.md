# 내 손 안의 카페, 잡아(JABA)
<img width="1200" alt="Jaba_main" src="https://user-images.githubusercontent.com/66562887/106995536-76d63c00-67c2-11eb-83f6-2f13fa9a03bf.png"></img>
## Test Video
* Youtube: 
[**Presentation**](https://youtu.be/HZJ_ZFwd6DA) [![Youtube Badge](https://img.shields.io/badge/Youtube-ff0000?style=flat-square&logo=youtube&link=https://www.youtube.com/watch?v=DFRlnNcDH-Q)](https://youtu.be/HZJ_ZFwd6DA)

## 목차
1. [개요](#개요)
2. [개발 배경 및 목표](#개발-배경-및-목표)
3. [개발 환경](#개발-환경)
4. [핵심 기능](#핵심-기능)
5. [Document](#document)

## 개요
* 최근 코로나로 인한 사회적 거리두기로 비대면 소비문화가 확산되는 추세에 배달앱 이용자 수가 크게 증가하지만, 배달료도 함께 올라가며 소비자들에게 부담을 주고 있는 추세입니다.
* 저희는 내 손 안의 카페라는 컨셉으로, 선 결제 후 고객이 직접 픽업을 할 수 있는 서비스를 개발하였습니다.

## 개발 배경 및 목표
* 다른 사람들과의 접촉은 피하면서, 줄 서기와 같은 시간 소모를 최소화 하면서 '선 결제 후 픽업'를 통해 고객들에게 편의성을 제공할 수 있습니다. 
* 비즈니스 파트너들에게는 인건비 축소, 그리고 피크 타임 시의 매장 내 혼잡도를 해소할 수 있는 서비스를 제공하는 것입니다. 
추가적으로 각 매장 별로 판매량 분포도 분석과 같은 통계 자료들을 제공하여 컨설팅에 도움을 주어
궁극적으로 파트너 매장의 성공을 돕는 것을 목표로 하고 있습니다.
* 모든 페이지에서 반응형이 적용되게 설계하였습니다.
* 주소 별, 브랜드 별, 현재위치 기반 검색이 모두 가능하도록 설계하였습니다.
* 파트너의 UX를 보다 직관적이고 사용하기 쉽게 설계하였습니다.

## 개발 환경
1. FrontEnd - HTML5, JS, CSS3, jQuery
2. BackEnd - Java(JDK 1.8), Servlet, Spring, Mybatis
3. OS - Windows, macOS (Amazon Linux 2 - aws)
4. Library&API - Kakaomap, BootStrap(v3.3.7), OJDBC(v6), COS, JavaMail API, JSON(v1.2), JSTL, I'mport, Websocket
5. IDE - Spring Tool Suite 3 (3.9.12.RELEASE)
6. Server - Tomcat(v8.5)
7. Document - Google Drive, diagrams.net
8. CI - git(v2.28.0.windows.1), Github
9. DataBase - Oracle DataBase 11g
## 핵심 기능
* client page
<img width="1200" alt="client" src="https://user-images.githubusercontent.com/66562887/106883844-e1846a80-6723-11eb-8fee-83c04cf518fb.png">

* partner page
<img width="1200" alt="partner" src="https://user-images.githubusercontent.com/66562887/106884112-3c1dc680-6724-11eb-9a8b-e41307542d47.png">

* admin page
<img width="1200" alt="admin" src="https://user-images.githubusercontent.com/66562887/106884192-4fc92d00-6724-11eb-9d3b-c98c60ebd87c.png">

## Document

1. 기능 정의서
<img width="600" alt="요구사항 명세서" src="https://user-images.githubusercontent.com/66562887/107018344-aa758e00-67e3-11eb-9934-9035bb1ef5ab.png">
2. UseCase
<img width="600" alt="usecase_diagram1" src="https://user-images.githubusercontent.com/66562887/107018386-b5c8b980-67e3-11eb-89c8-c319df34e618.png">
<img width="600" alt="usecase_diagram2" src="https://user-images.githubusercontent.com/66562887/107018398-ba8d6d80-67e3-11eb-8a85-d1abb45bd099.png">

3. UI
<img width="600" alt="UI설계" src="https://user-images.githubusercontent.com/66562887/107018430-c37e3f00-67e3-11eb-8c84-d622d4945fbc.png">

4. ERD
<img width="600" alt="erd" src="https://user-images.githubusercontent.com/66562887/107018448-ca0cb680-67e3-11eb-98b0-bb5bb6d25163.png">

5. Table Description
<img width="600" alt="테이블 정의서" src="https://user-images.githubusercontent.com/66562887/107018576-f4f70a80-67e3-11eb-8016-a753bf10144d.png">

6. Class Diagram
<img width="600" alt="클래스 다이어그램" src="https://user-images.githubusercontent.com/66562887/107018611-0213f980-67e4-11eb-809e-14adfe96cf3d.png">

7. Sequence Diagram
<img width="600" alt="시퀀스 다이어그램" src="https://user-images.githubusercontent.com/66562887/107018638-093b0780-67e4-11eb-8a81-36be6fe4dd08.png">



