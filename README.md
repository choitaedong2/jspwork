# jspwork

[eclips setting]
1. encoding
 : window>references>encoding검색 ~> utf8로 변경

2. apach Tomcat
 : 인텔리J는 불필요
 1) version: 10.1.36
 2) 64-bit Windows(apache-tomcat-10.1.36) zip 다운로드/압축해제를 통한 바로 실행

3. Project Explorer
 : Java EE -> Dynamic Web Project 사용
 1) Target runtime -> Apache Tomcat > brower[C:\dev\apache-tomcat-10.1.36] bin 상위 폴더 지정

4. 오류 모음
 - The selection is not within a vaild module.
   : Project > properties > Dynamic Web Module v6.0 ~> v5.0으로 재시도
 - 
