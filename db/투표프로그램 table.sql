create sequence SEQ_VOTE
    nocache
    Start with 1
    increment by 1
    maxvalue 100
    minvalue 1
    nocycle;
    
create table votelist (
    num number primary key,
    question varchar2(200) not null,
    sdate date,
    edate date,
    wdate date,
    type number DEFAULT 1 not null,
    active number default 1
);

create table voteitem (
    listnum number,
    itemnum number,
    item varchar2(50),
    count number default 0,
    primary key(listnum, itemnum)
);