# One Day Project : 매입매출 관리

### 개요
 * Loo9 매장에서 판매할 상품 구입, 상품 판매 후 매입매출 관리를 위한 간편장부 작성
 
### 개발도구
 * Spring Tool Suite 3
 * Oracle Ex 11
 * Visual Studio Code
 * Language : Java 1.8

### Library
Package Manager : Maven Repository
 * spring framework 5.2.8
 * spring-jdbc
 * mybatis
 * mybatis-spring
 * ojdbc
 * commons-dbcp2
 * lombok

### 상세 기능
 * 접속 시 매입매출 리스트를 확인 가능
 * '+' 아이콘을 클릭하여 리스트에 데이터 추가
	- 날짜와 시간은 현재를 기준으로 자동 설정
	- 입력받은 구분 값을 기준으로 매입매출 가격 분리
	- 리스트로 돌아갈 수 있도록 목록 버튼 제공
 * 제품명을 클릭하여 상세 내용 보기
	- 상세 내역 확인과 데이터 수정 및 삭제(아이콘)
	- 리스트로 돌아갈 수 있도록 목록 버튼 제공
	- 입력 받은 구분 값 1과 2를 각각 매입, 매출로 표기

### 문제점
 * 수정 기능이 수행되지 않음
	- 데이터 수정 시 명령은 수행되지만 수정된 결과값이 반영되지 않음
 * 유효성 검사 필요
	- 매입매출 구분 시 1과 2 이외의 값을 입력받지 않도록 함
	- 제품명을 반드시 입력받도록 함