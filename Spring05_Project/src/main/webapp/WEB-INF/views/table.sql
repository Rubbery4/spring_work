-- 아이템 테이블을 만들기 위한 테이블 
CREATE TABLE maple(
   num NUMBER PRIMARY KEY,
   id VARCHAR2(100),
   type VARCHAR2(20),
   enhance NUMBER,   
   rating NUMBER,
   regdate DATE  
);

CREATE SEQUENCE maple_seq;
