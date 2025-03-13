# jspwork

[eclips 2023.03 setting]
1. encoding
 > window>references>encoding검색 ~> utf8로 변경


2. apach Tomcat
 > 인텔리J는 불필요
 - version: 10.1.36
 - 64-bit Windows(apache-tomcat-10.1.36) zip 다운로드/압축해제를 통한 바로 실행


3. Project Explorer
 > Java EE -> Dynamic Web Project 사용
 - Target runtime -> Apache Tomcat > brower[C:\dev\apache-tomcat-10.1.36] bin 상위 폴더 지정


4. Option
 - Window>Web Browser : 브라우저 창 생성위치(이클립스, 웹-크롬, ms) 선택


5. Oracle DB JDBC연동
 - "C:\app\TJ\product\18.0.0\dbhomeXE\jdbc\lib\ojdbc8.jar"를 프로젝트(ch06_orcleJDBC)\src\main\webapp\WEB_INF\lib\ojdbc8.jar 복사