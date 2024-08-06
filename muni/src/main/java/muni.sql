DROP TABLE "BOARD_FILE"; -- 게시판 파일 삭제

DROP TABLE "BOARD_QA"; -- QA 게시판 삭제
DROP TABLE "BOARD_REVIEW"; -- QA 게시판 삭제

DROP TABLE "USER_POINT"; -- 회원포인트 삭제

DROP TABLE "ORDER_PRODUCT_LIST"; -- 주문내역 삭제
DROP TABLE "ORDER_LIST"; -- 주문목록 삭제

DROP TABLE "USER_WISH"; -- 찜목록 삭제
DROP TABLE "USER_DELIVERY"; -- 회원배송지 삭제
DROP TABLE "MUNI_USER"; -- 회원정보 삭제


DROP TABLE "ORDER_CART"; -- 장바구니 삭제
DROP TABLE "PRODUCT_OPTION"; -- 상품옵션 삭제
DROP TABLE "PRODUCT_ITEM"; -- 상품 아이템 삭제
DROP TABLE "PRODUCT_CATE"; -- 상품 카테고리 삭제


DROP TABLE "ORDER_DELIVERY"; -- 주문 배송지 삭제



-- 회원정보
CREATE TABLE MUNI_USER(
    USER_NUM NUMBER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    USER_ID VARCHAR2(255) NOT NULL,
    USER_PASSWORD VARCHAR2(256) NOT NULL,
    USER_NAME VARCHAR2(30) NOT NULL,
    USER_ADDRESS_NUM VARCHAR2(10),
    USER_ADDRESS VARCHAR2(255),
    USER_ADDRESS_ETC VARCHAR2(255),
    USER_TEL VARCHAR2(30),
    USER_PHONE VARCHAR2(30) NOT NULL,
    USER_EMAIL VARCHAR2(255) NOT NULL,
    USER_SOLAR VARCHAR2(1),
    USER_BIRTHDAY DATE,
    USER_RECOMMEND VARCHAR2(255),
    USER_POINT NUMBER DEFAULT 0 NOT NULL,
    USER_DEL VARCHAR2(1) DEFAULT 'N' NOT NULL,
    USER_EMAIL_AGREE VARCHAR2(1),
    USER_SNS_AGREE VARCHAR2(1),
    USER_REGIST DATE DEFAULT sysdate NOT NULL,
    CONSTRAINT PK_USER_NUM PRIMARY KEY(USER_NUM),
    CONSTRAINT UQ_USER_ID UNIQUE(USER_ID)
);

-- 회원 배송지
CREATE TABLE USER_DELIVERY(
    UD_NUM NUMBER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    USER_ID VARCHAR2(255) NOT NULL,
    UD_SUBJECT VARCHAR2(255) NOT NULL,
    UD_NAME VARCHAR2(50) NOT NULL,
    UD_ADDRESS_NUM VARCHAR2(50) NOT NULL,
    UD_ADDRESS VARCHAR2(255) NOT NULL,
    UD_ADDRESS_ETC VARCHAR2(255),
    UD_TEL VARCHAR2(50),
    UD_PHONE VARCHAR2(50) NOT NULL,
    CONSTRAINT PK_UD_NUM PRIMARY KEY(UD_NUM),
    CONSTRAINT FK_UD_USER_ID FOREIGN KEY(USER_ID) REFERENCES MUNI_USER(USER_ID)
);

-- 상품 카테고리
CREATE TABLE PRODUCT_CATE(
    PC_ID VARCHAR2(10) NOT NULL,
    PC_NAME VARCHAR2(255) NOT NULL,
    CONSTRAINT PK_PC_ID PRIMARY KEY(PC_ID)
);

-- 상품 아이템
CREATE TABLE "PRODUCT_ITEM" (
	"PI_NUM"        NUMBER GENERATED BY DEFAULT AS IDENTITY NOT NULL, -- 상품번호
	"PC_ID"         VARCHAR2(10)  NOT NULL, -- 카테고리 아이디
	"PI_NAME"       VARCHAR2(255) NOT NULL, -- 상품명
	"PI_CPRICE"     NUMBER        NOT NULL, -- 상품소비자가
	"PI_PRICE"      NUMBER        NOT NULL, -- 상품가격
	"PI_SAIL_PRICE" NUMBER        NOT NULL, -- 상품할인가
	"PI_DELIVERY"   NUMBER        NOT NULL, -- 상품배송비
	"PI_POINT"      NUMBER        NOT NULL, -- 적립금
	"PI_COUNT"      NUMBER        NOT NULL, -- 재고수량
	"PI_CONTENT"    LONG          , -- 상세정보
	"PI_HIT"        NUMBER(1)     NOT NULL, -- 상품히트
	"PI_FILE1"      VARCHAR2(255) NULL,     -- 이미지1
	"PI_FILE2"      VARCHAR2(255) NULL,     -- 이미지2
	"PI_FILE3"      VARCHAR2(255) NULL,     -- 이미지3
	"PI_FILE4"      VARCHAR2(255) NULL,     -- 이미지4
	"PI_FILE5"      VARCHAR2(255) NULL,     -- 이미지5
	"PI_FILE6"      VARCHAR2(255) NULL,     -- 이미지6
	"PI_FILE7"      VARCHAR2(255) NULL,     -- 이미지7
	"PI_DATE"       DATE          NOT NULL,  -- 등록일
    CONSTRAINT PK_PI_NUM PRIMARY KEY(PI_NUM),
    CONSTRAINT FK_PI_PC_ID FOREIGN KEY(PC_ID) REFERENCES PRODUCT_CATE(PC_ID)
);

--찜목록
CREATE TABLE USER_WISH(
    UW_NUM NUMBER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    USER_ID VARCHAR2(255) NOT NULL,
    PI_NUM NUMBER NOT NULL,
    CONSTRAINT PK_UW_NUM PRIMARY KEY(UW_NUM),
    CONSTRAINT FK_UW_USER_ID FOREIGN KEY(USER_ID) REFERENCES MUNI_USER(USER_ID),
    CONSTRAINT FK_UW_PI_NUM FOREIGN KEY(PI_NUM) REFERENCES PRODUCT_ITEM(PI_NUM)
);

-- 장바구니
CREATE TABLE ORDER_CART(
    OC_NUM NUMBER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    OC_ID VARCHAR2(255) NOT NULL,
    PI_NUM NUMBER NOT NULL,
    OC_COUNT NUMBER NOT NULL,
    OC_PRICE NUMBER NOT NULL,
    CONSTRAINT PK_OC_NUM PRIMARY KEY(OC_NUM),
    CONSTRAINT UQ_OC_ID UNIQUE(OC_ID),
    CONSTRAINT FK_OC_PI_NUM FOREIGN KEY(PI_NUM) REFERENCES PRODUCT_ITEM(PI_NUM)
);

-- 주문 배송지
CREATE TABLE ORDER_DELIVERY(
    OD_NUM NUMBER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    OD_NAME VARCHAR2(255) NOT NULL,
    OD_ADDRESS_NUM VARCHAR2(50) NOT NULL,
    OD_ADDRESS VARCHAR2(255) NOT NULL,
    OD_ADDRESS_ETC VARCHAR2(255),
    OD_TEL VARCHAR2(50),
    OD_PHONE VARCHAR2(50) NOT NULL,
    OD_EMAIL VARCHAR2(255),
    OD_MEMO VARCHAR2(255),
    CONSTRAINT PK_OD_NUM PRIMARY KEY(OD_NUM)
);

--주문목록
CREATE TABLE ORDER_LIST(
    OL_NUM NUMBER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    OL_ID NUMBER NOT NULL,
    OL_PASSWORD VARCHAR2(255),
    USER_ID VARCHAR2(255),
    OD_NUM NUMBER NOT NULL,
    OL_DATE DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT PK_OL_NUM PRIMARY KEY(OL_NUM),
    CONSTRAINT UQ_OL_ID UNIQUE(OL_ID),
    CONSTRAINT FK_OL_USER_ID FOREIGN KEY(USER_ID) REFERENCES MUNI_USER(USER_ID),
    CONSTRAINT FK_OL_OD_NUM FOREIGN KEY(OD_NUM) REFERENCES ORDER_DELIVERY(OD_NUM)
    
);

--주문내역
CREATE TABLE ORDER_PRODUCT_LIST(
    OPL_NUM NUMBER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    OL_ID NUMBER NOT NULL,
    PI_NUM NUMBER NOT NULL,
    OPL_NAME VARCHAR2(255) NOT NULL,
    OPL_PRICE NUMBER NOT NULL,
    OPL_COUNT NUMBER NOT NULL,
    OPL_POINT NUMBER NOT NULL,
    OPL_STATE VARCHAR2(1) NOT NULL,
    CONSTRAINT PK_OPL_NUM PRIMARY KEY(OPL_NUM),
    CONSTRAINT FK_OPL_OL_ID FOREIGN KEY(OL_ID) REFERENCES ORDER_LIST(OL_ID),
    CONSTRAINT FK_OPL_PI_NUM FOREIGN KEY(PI_NUM) REFERENCES PRODUCT_ITEM(PI_NUM)
);

-- 회원 포인트
CREATE TABLE USER_POINT(
    UP_NUM NUMBER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    USER_ID VARCHAR2(255) NOT NULL,
    UP_POINT NUMBER NOT NULL,
    UP_SUBJECT VARCHAR2(255) NOT NULL,
    OPL_NUM NUMBER,
    UP_DATE DATE NOT NULL,
    USER_NUM NUMBER NOT NULL,
    CONSTRAINT PK_UP_NUM PRIMARY KEY(UP_NUM),
    CONSTRAINT FK_UP_OPL_NUM FOREIGN KEY(OPL_NUM) REFERENCES ORDER_PRODUCT_LIST(OPL_NUM),
    CONSTRAINT FK_UP_USER_NUM FOREIGN KEY(USER_NUM) REFERENCES MUNI_USER(USER_NUM)
);
-- QA 게시판
CREATE TABLE BOARD_QA(
    B_NUM NUMBER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    PI_NUM NUMBER,
    USER_ID VARCHAR2(255) NOT NULL,
    B_SUBJECT VARCHAR2(255) NOT NULL,
    B_CONTENT LONG,
    B_STAR NUMBER(1),
    B_WRITER VARCHAR2(255) NOT NULL,
    B_COUNT NUMBER NOT NULL,
    B_DATE DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT PK_QA_B_NUM PRIMARY KEY(B_NUM),
    CONSTRAINT FK_QA_PI_NUM FOREIGN KEY(PI_NUM) REFERENCES PRODUCT_ITEM(PI_NUM),
    CONSTRAINT FK_QA_USER_ID FOREIGN KEY(USER_ID) REFERENCES MUNI_USER(USER_ID)
);

-- REVIEW 게시판
CREATE TABLE BOARD_REVIEW(
    B_NUM NUMBER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    PI_NUM NUMBER,
    USER_ID VARCHAR2(255) NOT NULL,
    B_SUBJECT VARCHAR2(255) NOT NULL,
    B_CONTENT LONG,
    B_STAR NUMBER(1),
    B_WRITER VARCHAR2(255) NOT NULL,
    B_COUNT NUMBER NOT NULL,
    B_DATE DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT PK_RV_B_NUM PRIMARY KEY(B_NUM),
    CONSTRAINT FK_RV_PI_NUM FOREIGN KEY(PI_NUM) REFERENCES PRODUCT_ITEM(PI_NUM),
    CONSTRAINT FK_RV_USER_ID FOREIGN KEY(USER_ID) REFERENCES MUNI_USER(USER_ID)
);




-- 게시판 파일
CREATE TABLE BOARD_FILE(
    BF_NUM NUMBER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    BF_NAME VARCHAR2(255) NOT NULL,
    B_NUM NUMBER NOT NULL,
    BF_FILE_NAME VARCHAR2(255) NOT NULL,
    BF_FILE_R_NAME VARCHAR2(255) NOT NULL,
    BF_ROOT VARCHAR2(255) NOT NULL,
    CONSTRAINT PK_BF_NUM PRIMARY KEY(BF_NUM)
);


insert into MUNI_USER(USER_ID,USER_PASSWORD,USER_NAME,USER_PHONE,USER_EMAIL) values('admin','1234','관리자','010-1234-5678','test@test.com');
insert into PRODUCT_CATE values('10','Wooman');
insert into PRODUCT_CATE values('20','Man');
insert into PRODUCT_CATE values('30','Kids');
insert into PRODUCT_CATE values('40','Accessories');
insert into PRODUCT_CATE values('1010','Top');
insert into PRODUCT_CATE values('1020','Bottom');
insert into PRODUCT_CATE values('101010','Short Sleeve');
insert into PRODUCT_CATE values('101020','Long Sleeve');
insert into PRODUCT_CATE values('102010','Skirt');
insert into PRODUCT_CATE values('102020','Pants');
insert into PRODUCT_CATE values('2010','Top');
insert into PRODUCT_CATE values('2020','Bottom');
insert into PRODUCT_CATE values('201010','Short Sleeve');
insert into PRODUCT_CATE values('201020','Long Sleeve');

insert into PRODUCT_ITEM(PC_ID,PI_NAME,PI_CPRICE,PI_PRICE,PI_SAIL_PRICE,PI_DELIVERY,PI_POINT,PI_COUNT,PI_HIT,PI_DATE) values('10','테스트',1,2,3,4,5,6,1,sysdate);
