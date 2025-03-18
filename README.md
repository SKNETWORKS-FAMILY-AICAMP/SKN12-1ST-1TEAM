# SKN12-1ST-1TEAM

## SK 네트웍스 AI과정 1차 프로젝트


## 1. 팀 소개
---
**팀명: AZ AutoviZ**  
**팀원:** 김도윤 | 김원우 | 김이경 | 남의현 | 박진양  



## 2. 프로젝트 개요
---
### 2.1. 프로젝트 명  
- 전국 차량 등록 정보 조회 시스템 및 FAQ 시스템  

### 2.2. 프로젝트 소개  
- 본 프로젝트는 2024년의 데이터를 기반으로 차량 정보 및 판매량 데이터를 조회하는 시스템입니다.
- 사용자는 2024년 월별 판매량과 차종 별 세부 정보를 조회할 수 있습니다.  
- 차량 관련 FAQ 및 서비스 센터 정보도 제공하여 접근하기 쉬운 질문을 쉽게 확인 할 수 있습니다.  

### 2.3. 프로젝트 필요성 (배경)  
- 소비자에게 명료하고 직관적인 데이터를 제공하여 분산되어 있는 정보 필터링에 시간 낭비 감소  

### 2.4. 프로젝트 목표  
- 차량 구매 희망자에게 심플하고 간단 명료한 정보를 필터링하여 제공  
- 최근 1년간 브랜드, 모델 별 판매량 데이터를 제공  
- 브랜드별 FAQ 제공: 빈번히 발생하는 문의 내용에 쉽게 접근 가능  



## 3. 기술 스택
---
### 3.1. 프론트엔드  
- <img svg role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><title>Streamlit</title><path d="M16.673 11.32l6.862-3.618c.233-.136.554.12.442.387L20.463 17.1zm-8.556-.229l3.473-5.187c.203-.328.578-.316.793-.028l7.886 11.75zm-3.375 7.25c-.28 0-.835-.284-.993-.716l-3.72-9.46c-.118-.331.139-.614.48-.464l19.474 10.306c-.149.147-.453.337-.72.334z"/></svg>웹 대시보드 프레임워크 (데이터 시각화 및 조회 시스템)  

### 3.2. 백엔드  
- 데이터 처리 및 비즈니스 로직 구현  
- 데이터베이스 관리 및 저장  
- 데이터 분석 및 필터링 처리  


## 4. WBS (Work Breakdown Structure)
---
### 4.1. 프로젝트 기획  
- 기획 방향 회의  

### 4.2. 크롤링  
- 자동차 판매량 & 세부정보  
- 회사별 FAQ  

### 4.3. SQL 연결  
- 데이터베이스 입력  
- 자동차 판매량 & 세부정보 SQL 쿼리 연결 및 구현  
- FAQ 및 서비스센터 SQL 연결  

### 4.4. STREAMLIT 구현  
- Streamlit 대시보드 구축  
- 판매량 통계 데이터 제공 화면 구현  
- 브랜드별 FAQ 화면 구현  
- 검색 및 필터 기능 구현 (월별)  

### 4.5. 프로젝트 정리  


## 5. 요구사항 명세서
---
### 5.1. 사용자 요구사항  
- 2024년 특정 월에 어떤 차량이 많이 판매되었는지 조회할 수 있어야 한다.  
- FAQ 정보를 브랜드별로 조회할 수 있어야 하며 질문 및 답변 데이터를 가져올 수 있어야 한다.  

### 5.2. 시스템 요구사항  
- MySQL 데이터베이스를 사용하여 실시간 필터링 및 조회가 가능해야 한다.  
- Streamlit 대시보드를 통해 직관적인 사용자 인터페이스를 제공해야 한다.  

## 6. ERD (Entity-Relationship Diagram)
---
### 주요 테이블 구조
- **brand**: 브랜드 정보  
- **model**: 차량 정보  
- **brand_sales**: 브랜드 별 차량 판매 정보  
- **model_sales**: 차량 모델 별 차량 판매 정보  
- **faq**: 차량 FAQ 정보  

### ERD 다이어그램  
<img width="523" alt="erd_final" src="https://github.com/user-attachments/assets/82b41f79-2265-4156-9e4f-8937d22e0b2b" />


## 7. 주요 프로시저 및 수행 결과
---
### 7.1. 메인 프로시저  
<img width="1280" alt="image" src="https://github.com/user-attachments/assets/766aaa07-b9b0-4db7-b490-09d4db31376f" />

### 7.2. 모델 별 판매 순위 프로시저  
- 기간별 모델 판매 순위 정보 제공  
<img width="1280" alt="image" src="https://github.com/user-attachments/assets/5263dc3c-70f6-4baf-84f7-cc3ccf202e17" />

### 7.3. 브랜드 별 판매 순위 프로시저  
- 특정 브랜드 별 판매 순위 정보 제공  
<img width="1280" alt="image" src="https://github.com/user-attachments/assets/6bb067c7-0ce3-42c5-aabc-d7ab3982b149" />

### 7.4. 차량 세부 정보 조회 프로시저  
- 모델 별 세부 정보 제공  
<img width="1280" alt="image" src="https://github.com/user-attachments/assets/aecf25de-a78e-4a28-9bbd-e2ee0677a08c" />

### 7.5 FAQ 프로시저  
- 브랜드 별 빈도 높은 상위 10개 질문 정보 제공  
 <img width="1280" alt="image" src="https://github.com/user-attachments/assets/f1451a61-de1b-471a-9190-0493802edabc" />


## 8. 한 줄 회고
---
- **김도윤** : 
- **김원우** : 첫 프로젝트라 많이 긴장했지만 다들 열심히 해주셨고, 결과적으로 잘 마무리할 수 있어서 좋았습니다.
- **김이경** : 첫 번째 챕터 동안 배운 내용이 총집합으로 단위 프로젝트에 적용되는 것을 크게 느꼈고, 다음 챕터의 수업부터는 더욱 열심히 듣고 이해 해야겠다는 생각이 들었습니다. 크롤링 부분에서 많이 부족하다고 느껴 더 노력해야할 것 같습니다. 주로 DB 부분을 맡았는데, 그동안 학습했던 내용을 복습할 수 있어 좋았고 팀원으로부터 도움을 받아 보완할 수 있었습니다.
- **남의현** : 작은 팀 단위로 배웠던 것을 직접 사용해보고, 미숙한 부분을 직접 다시 해보며 정리해볼 수 있는 좋은 경험이었습니다. 프로젝트 기간동안 팀원 분들 다들 너무 고생 많으셨습니다!
- **박진양** : 첫 프로젝트였기에 많이 떨렸고 저의 개인적인 기량을 보완해주었던 팀원 분들께 정말 감사드립니다. 처음으로 배운 크롤링을 실전에서 써보는 값진 경험이었으며 이를 통해 데이터 구축과 mysql 데이터베이스를 만드는 작업을 할 수 있어서 좋은 시간이었습니다. 특히, 너무 고생하신 팀원 분들께 다시 한번 무한한 감사를 드리고싶습니다!


