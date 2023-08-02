--ALLISWELL생성
--CREATE USER C##ALLISWELL IDENTIFIED BY 1234;
--GRANT CONNECT , RESOURCE TO C##ALLISWELL;
--ALTER USER C##ALLISWELL DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

--DROP 구문
DROP TABLE MEMBER CASCADE CONSTRAINTS;
DROP TABLE PATIENT CASCADE CONSTRAINTS;
DROP TABLE MAIL CASCADE CONSTRAINTS;
DROP TABLE CHATTING CASCADE CONSTRAINTS;
DROP TABLE ADMIN CASCADE CONSTRAINTS;
DROP TABLE PRESCRIPTION CASCADE CONSTRAINTS;
DROP TABLE OPERATING_ROOM CASCADE CONSTRAINTS;
DROP TABLE INPATIENT CASCADE CONSTRAINTS;
DROP TABLE NOTICE_ATTACHMENT CASCADE CONSTRAINTS;
DROP TABLE NOTICE CASCADE CONSTRAINTS;
DROP TABLE ATTENDANCE CASCADE CONSTRAINTS;
DROP TABLE INQUIRY CASCADE CONSTRAINTS;
DROP TABLE PROCEEDING CASCADE CONSTRAINTS;
DROP TABLE INVENTORY CASCADE CONSTRAINTS;
DROP TABLE POSITION CASCADE CONSTRAINTS;
DROP TABLE DEPARTMENT CASCADE CONSTRAINTS;
DROP TABLE SUGGESTIONS CASCADE CONSTRAINTS;
DROP TABLE INPATIENT_LIST CASCADE CONSTRAINTS;
DROP TABLE INQUIRY_REPLY CASCADE CONSTRAINTS;
DROP TABLE NOTICE_REPLY CASCADE CONSTRAINTS;
DROP TABLE CHATTING_ROOM CASCADE CONSTRAINTS;
DROP TABLE DUTY CASCADE CONSTRAINTS;
DROP TABLE OPERATION_SCHEDULE CASCADE CONSTRAINTS;
DROP TABLE ADMISSION_RECORD CASCADE CONSTRAINTS;
DROP TABLE DIAGNOSIS CASCADE CONSTRAINTS;
DROP TABLE RECEIVER_MAIL CASCADE CONSTRAINTS;
DROP TABLE MAIL_ATTACHMENT CASCADE CONSTRAINTS;
DROP TABLE PRESCRIPTION_LIST CASCADE CONSTRAINTS;
DROP TABLE VACATION_APPROVAL_DOCUMENT CASCADE CONSTRAINTS;
DROP TABLE RECEIPT CASCADE CONSTRAINTS;
DROP TABLE PARTICIPANT CASCADE CONSTRAINTS;
DROP TABLE APPROVER CASCADE CONSTRAINTS;
DROP TABLE SENDER_MAIL CASCADE CONSTRAINTS;
DROP TABLE BUSINESS_TRIP_APPROVAL_DOCUMENT CASCADE CONSTRAINTS;
DROP TABLE INVENTORY_REQUEST_APPROVAL_DOCUMENT CASCADE CONSTRAINTS;
DROP TABLE INVENTORY_CATEGORY CASCADE CONSTRAINTS;
DROP TABLE APPROVAL_DOCUMENT CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_MEMBER_NO;
DROP SEQUENCE SEQ_PATIENT_NO;
DROP SEQUENCE SEQ_MAIL_NO;
DROP SEQUENCE SEQ_CHATTING_NO;
DROP SEQUENCE SEQ_ADMIN_NO;
DROP SEQUENCE SEQ_PRESCRIPTION_NO;
DROP SEQUENCE SEQ_OPERATING_ROOM_NO; 
DROP SEQUENCE SEQ_INPATIENT_NO; 
DROP SEQUENCE SEQ_NOTICE_ATTACHMENT_NO;
DROP SEQUENCE SEQ_NOTICE_NO;
DROP SEQUENCE SEQ_ATTENDANCE_NO;
DROP SEQUENCE SEQ_INQUIRY_NO;
DROP SEQUENCE SEQ_PROCEEDING_NO;
DROP SEQUENCE SEQ_INVENTORY_NO;
DROP SEQUENCE SEQ_POSITION_NO;
DROP SEQUENCE SEQ_DEPARTMENT_NO;
DROP SEQUENCE SEQ_SUGGESTIONS_NO;
DROP SEQUENCE SEQ_INPATIENT_LIST_NO;
DROP SEQUENCE SEQ_INQUIRY_REPLY_NO;
DROP SEQUENCE SEQ_NOTICE_REPLY_NO;
DROP SEQUENCE SEQ_CHATTING_ROOM_NO;
DROP SEQUENCE SEQ_DUTY_NO;
DROP SEQUENCE SEQ_OPERATION_SCHEDULE_NO;
DROP SEQUENCE SEQ_ADMISSION_RECORD_NO;
DROP SEQUENCE SEQ_RECEIPT_NO;
DROP SEQUENCE SEQ_DIAGNOSIS_NO;
DROP SEQUENCE SEQ_RECEIVER_MAIL_NO;
DROP SEQUENCE SEQ_MAIL_ATTACHMENT_NO;
DROP SEQUENCE SEQ_PRESCRIPTION_LIST_NO;
DROP SEQUENCE SEQ_VACATION_APPROVAL_DOCUMENT_NO;
DROP SEQUENCE SEQ_PARTICIPANT_NO;
DROP SEQUENCE SEQ_APPROVER_NO;
DROP SEQUENCE SEQ_SENDER_MAIL_NO;
DROP SEQUENCE SEQ_BUSINESS_TRIP_APPROVAL_DOCUMENT_NO;
DROP SEQUENCE SEQ_INVENTORY_REQUEST_APPROVAL_DOCUMENT_NO;
DROP SEQUENCE SEQ_INVENTORY_CATEGORY_NO;
DROP SEQUENCE SEQ_APPROVAL_DOCUMENT_NO;

--CREATE 구문
CREATE SEQUENCE SEQ_MEMBER_NO;
CREATE SEQUENCE SEQ_PATIENT_NO;
CREATE SEQUENCE SEQ_MAIL_NO;
CREATE SEQUENCE SEQ_CHATTING_NO;
CREATE SEQUENCE SEQ_ADMIN_NO;
CREATE SEQUENCE SEQ_PRESCRIPTION_NO;
CREATE SEQUENCE SEQ_OPERATING_ROOM_NO; 
CREATE SEQUENCE SEQ_INPATIENT_NO; 
CREATE SEQUENCE SEQ_NOTICE_ATTACHMENT_NO;
CREATE SEQUENCE SEQ_NOTICE_NO;
CREATE SEQUENCE SEQ_ATTENDANCE_NO;
CREATE SEQUENCE SEQ_INQUIRY_NO;
CREATE SEQUENCE SEQ_PROCEEDING_NO;
CREATE SEQUENCE SEQ_INVENTORY_NO;
CREATE SEQUENCE SEQ_POSITION_NO;
CREATE SEQUENCE SEQ_DEPARTMENT_NO;
CREATE SEQUENCE SEQ_SUGGESTIONS_NO;
CREATE SEQUENCE SEQ_INPATIENT_LIST_NO;
CREATE SEQUENCE SEQ_INQUIRY_REPLY_NO;
CREATE SEQUENCE SEQ_NOTICE_REPLY_NO;
CREATE SEQUENCE SEQ_CHATTING_ROOM_NO;
CREATE SEQUENCE SEQ_DUTY_NO;
CREATE SEQUENCE SEQ_OPERATION_SCHEDULE_NO;
CREATE SEQUENCE SEQ_ADMISSION_RECORD_NO;
CREATE SEQUENCE SEQ_RECEIPT_NO;
CREATE SEQUENCE SEQ_DIAGNOSIS_NO;
CREATE SEQUENCE SEQ_RECEIVER_MAIL_NO;
CREATE SEQUENCE SEQ_MAIL_ATTACHMENT_NO;
CREATE SEQUENCE SEQ_PRESCRIPTION_LIST_NO;
CREATE SEQUENCE SEQ_VACATION_APPROVAL_DOCUMENT_NO;
CREATE SEQUENCE SEQ_PARTICIPANT_NO;
CREATE SEQUENCE SEQ_APPROVER_NO;
CREATE SEQUENCE SEQ_SENDER_MAIL_NO;
CREATE SEQUENCE SEQ_BUSINESS_TRIP_APPROVAL_DOCUMENT_NO;
CREATE SEQUENCE SEQ_INVENTORY_REQUEST_APPROVAL_DOCUMENT_NO;
CREATE SEQUENCE SEQ_INVENTORY_CATEGORY_NO;
CREATE SEQUENCE SEQ_APPROVAL_DOCUMENT_NO;

CREATE TABLE MEMBER (
	NO	NUMBER		NOT NULL,
	DEPARTMENT_NO	NUMBER		NOT NULL,
	POSITION_NO	NUMBER		NOT NULL,
	ID	VARCHAR2(200)		NOT NULL UNIQUE,
	PASSWORD	VARCHAR2(200)		NOT NULL,
	NAME	VARCHAR2(200)		NOT NULL,
	STATUS	CHAR(1)	DEFAULT 'O'	NOT NULL,
	POSITION_TYPE	CHAR(1)		NOT NULL,
	ENROLL_DATE	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	REGISTRATION_NUMBER	CHAR(14)		NULL,
	EMAIL	VARCHAR2(100)		NULL UNIQUE,
	PROFILE	VARCHAR2(1000)		NULL,
	PHONE_NUMBER	CHAR(11)		NULL,
	OFFICE_NUMBER	CHAR(7)		NULL,
	LICENSE_NUMBER	VARCHAR2(100)		NULL,
	YEAR_SALARY	NUMBER		NOT NULL,
	SIGN	VARCHAR2(1000)		NULL,
    VACATION    NUMBER  DEFAULT 15  NOT NULL
);


CREATE TABLE PATIENT (
	NO	NUMBER		NOT NULL,
	NAME	VARCHAR2(100)		NOT NULL,
	GENDER	CHAR(1)		NOT NULL,
	REGISTRATION_NUMBER	CHAR(14)		NOT NULL,
	PHONE_NUMBER	CHAR(11)		NOT NULL,
	EMAIL	VARCHAR2(50)		NULL,
	CAUTION	VARCHAR2(1000)		NULL
);


CREATE TABLE MAIL (
	NO	NUMBER		NOT NULL,
	MAIL_TITLE	VARCHAR2(400)		NOT NULL,
	MAIL_CONTENT	VARCHAR2(1000)		NOT NULL,
	MAIL_ENROLL_DATE	TIMESTAMP	DEFAULT SYSDATE	NOT NULL
);


CREATE TABLE CHATTING (
	NO	NUMBER		NOT NULL,
	WRITER_NO	NUMBER		NOT NULL,
	MESSENGER_CONTENT	VARCHAR2(1000)		NOT NULL,
	MAIL_ENROLL_DATE	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	CONFIRM_YN	CHAR(1)		NOT NULL,
	DELETE_YN	CHAR(1)		NOT NULL
);


CREATE TABLE ADMIN (
	NO	NUMBER		NOT NULL,
	ADMIN_ID	VARCHAR2(200)		NOT NULL,
	ADMIN_PWD	VARCHAR2(200)		NOT NULL,
	ADMIN_NICK	VARCHAR2(200)		NOT NULL
);


CREATE TABLE PRESCRIPTION (
	NO	        NUMBER		NOT NULL,
	PATIENT_NO	NUMBER		NOT NULL
);


CREATE TABLE OPERATING_ROOM (
	NO	NUMBER		NOT NULL,
	STATUS	CHAR(1)		NOT NULL,
	LOCATION	VARCHAR2(100)		NOT NULL
);


CREATE TABLE INPATIENT (
	NO	NUMBER		NOT NULL,
	MAX_CAPACITY	NUMBER		NOT NULL,
	INPATIENT_POSITION	VARCHAR2(100)		NULL
);


CREATE TABLE NOTICE_ATTACHMENT (
	NO	NUMBER		NOT NULL,
	NOTICE_NO	NUMBER		NOT NULL,
	ATTACH_NAME	VARCHAR2(1000)		NULL
);


CREATE TABLE NOTICE (
	NO	NUMBER		NOT NULL,
	WRITER_NO	NUMBER		NOT NULL,
	TITLE	VARCHAR2(1000)		NOT NULL,
	CONTENT	VARCHAR2(3000)		NOT NULL,
	ENROLL_DATE	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	MODIFY_DATE	TIMESTAMP	DEFAULT SYSDATE,
	STATUS	CHAR(1)	DEFAULT 'O'	NOT NULL
);


CREATE TABLE ATTENDANCE (
	NO	NUMBER		NOT NULL,
	MEMBER_NO	NUMBER		NOT NULL,
	PRESENCE_TIME	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	LEAVE_TIME	TIMESTAMP		NULL,
    STATUS  CHAR(1) DEFAULT 'O'  NOT NULL
);


CREATE TABLE INQUIRY (
	NO	NUMBER		NOT NULL,
	MEMBER_NO	NUMBER		NOT NULL,
	TITLE	VARCHAR2(100)		NOT NULL,
	CONTENT	VARCHAR2(4000)		NOT NULL,
	ENROLL_DATE	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	MODIFY_DATE	TIMESTAMP	DEFAULT SYSDATE	NULL,
	INQUIRY_STATUS	CHAR(1)		NOT NULL
);

CREATE TABLE PROCEEDING (
   NO   NUMBER      NOT NULL,
   MEMBER_NO   NUMBER      NOT NULL,
   TITLE   VARCHAR2(100)      NOT NULL,
   CONTENT   VARCHAR2(4000)      NULL,
   ENROLL_DATE   TIMESTAMP   DEFAULT SYSDATE   NOT NULL,
   MODIFY_DATE	 TIMESTAMP  NULL,
   STATUS CHAR(1) DEFAULT 'O'
);



CREATE TABLE INVENTORY (
	NO	NUMBER		NOT NULL,
	CATEGORY_NO	NUMBER		NOT NULL,
	INVENTORY_COUNT	NUMBER		NOT NULL
);


CREATE TABLE POSITION (
	NO	NUMBER		NOT NULL,
	NAME	VARCHAR2(100)		NOT NULL,
	SALARY	NUMBER		NOT NULL
);


CREATE TABLE DEPARTMENT (
	NO	NUMBER		NOT NULL,
	NAME	VARCHAR2(100)		NOT NULL
);


CREATE TABLE SUGGESTIONS (
	NO	NUMBER		NOT NULL,
	MEMBER_NO	NUMBER		NOT NULL,
	TITLE	VARCHAR2(100)		NOT NULL,
	CONTENT	VARCHAR2(4000)		NOT NULL,
	ENROLL_DATE	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	MODIFY_DATE	TIMESTAMP	DEFAULT SYSDATE	NULL,
	SUGGESTION_STATUS	CHAR(1)		NOT NULL
);


CREATE TABLE INPATIENT_LIST (
	NO	NUMBER		NOT NULL,
	INPATIENT_NO	NUMBER		NOT NULL,
	PATIENT_NO	NUMBER		NOT NULL
);


CREATE TABLE INQUIRY_REPLY (
	NO	NUMBER		NOT NULL,
	INQUIRY_NO	NUMBER		NOT NULL,
	ADMIN_NO	NUMBER		NOT NULL,
	CONTENT	VARCHAR2(1000)		NOT NULL,
	ENROLL_DATE	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	MODIFY_DATE	TIMESTAMP	DEFAULT SYSDATE	NULL,
	DELETE_YN	CHAR(1)	DEFAULT 'N'	NOT NULL
);


CREATE TABLE NOTICE_REPLY (
	NO	NUMBER		NOT NULL,
	NOTICE_NO	NUMBER		NOT NULL,
	WRITER_NO	NUMBER		NOT NULL,
	CONTENT	VARCHAR2(1000)		NOT NULL,
	ENROLL_DATE	TIMESTAMP	DEFAULT SYSDATE	NOT NULL,
	MODIFY_DATE	TIMESTAMP		NULL,
	DELETE_YN	CHAR(1)	DEFAULT 'N'	NOT NULL
);

CREATE TABLE CHATTING_ROOM (
  NO NUMBER NOT NULL,
  CHATTING_NO NUMBER NOT NULL,
  SENDER_NO NUMBER NOT NULL,       -- 자기 자신의 회원 번호를 저장
  RECEIVER_NO NUMBER NOT NULL,     -- 상대방의 회원 번호를 저장
  SENDER_STATUS CHAR(1) DEFAULT 'O' NOT NULL,     -- 자기 자신의 상태 정보
  RECEIVER_STATUS CHAR(1) DEFAULT 'O' NOT NULL    -- 상대방의 상태 정보
);

CREATE TABLE DUTY (
	NO	NUMBER		NOT NULL,
	MEMBER_NO	NUMBER		NOT NULL,
	DUTY_DAY	TIMESTAMP		NOT NULL
);


CREATE TABLE OPERATION_SCHEDULE (
	NO	NUMBER		NOT NULL,
	OPERATING_ROOM_NO	NUMBER		NOT NULL,
	PATIENT_NO	NUMBER		NOT NULL,
	OPERATION_NAME	VARCHAR2(100)		NOT NULL,
	START_DATE	TIMESTAMP		NOT NULL,
	END_DATE	TIMESTAMP		NULL,
	STATUS	CHAR(1)		NOT NULL,
	OPERATION_RECORD	VARCHAR2(1000)		NULL
);


CREATE TABLE ADMISSION_RECORD (
	NO	NUMBER		NOT NULL,
	PATIENT_NO	NUMBER		NOT NULL,
	INPATIENT_NO	NUMBER		NOT NULL,
	REASON	VARCHAR2(1000)		NOT NULL,
	ADMISSION_DATE	TIMESTAMP		NULL,
	DISCHARGE_DATE	TIMESTAMP		NULL
);

CREATE TABLE RECEIPT (
	NO	NUMBER		NOT NULL,
	PATIENT_NO	NUMBER		NOT NULL,
	SYMPTOM	VARCHAR2(100)		NOT NULL,
	ENROLL_DATE	TIMESTAMP	DEFAULT SYSDATE	NOT NULL 
);

CREATE TABLE DIAGNOSIS (
	RECEIPT_NO	NUMBER		NOT NULL,
	DAY	TIMESTAMP		NOT NULL,
	MEDICAL_RECORD	VARCHAR2(1000)		NOT NULL
);


CREATE TABLE RECEIVER_MAIL (
	NO	NUMBER		NOT NULL,
	RECEIVER_NO	NUMBER		NOT NULL,
	MAIL_NO	NUMBER		NOT NULL,
	STATUS	CHAR(1)	DEFAULT 'O'	NOT NULL,
	MAIL_YN	CHAR(1)	DEFAULT 'N'	NOT NULL
);


CREATE TABLE MAIL_ATTACHMENT (
	NO	NUMBER		NOT NULL,
	MAIL_NO	NUMBER		NOT NULL,
	ATTACH_NAME	VARCHAR2(100)		NULL,
    FILE_PATH  VARCHAR2(100) NULL
);


CREATE TABLE PRESCRIPTION_LIST (
	NO	NUMBER		NOT NULL,
    NAME   VARCHAR2(100)      NOT NULL,
	PRESCRIPTION_NO	NUMBER		NOT NULL,
	MEDICINE	VARCHAR2(100)		NOT NULL,
	TOTAL_DAY	CHAR(100)		NOT NULL,
	DOSE	VARCHAR2(100)		NOT NULL,
	USAGE	VARCHAR2(100)		NOT NULL
);

CREATE TABLE APPROVAL_DOCUMENT (
	NO	NUMBER		NOT NULL,
	MEMBER_NO	NUMBER		NOT NULL,
	CREATE_DATE	TIMESTAMP		NOT NULL,
	TITLE	VARCHAR2(100)   DEFAULT SYSDATE	NOT NULL,
    STATUS  CHAR(1) DEFAULT 'W' NOT NULL
);

CREATE TABLE VACATION_APPROVAL_DOCUMENT (
	NO	NUMBER		NOT NULL,
	APPROVAL_DOCUMENT_NO	NUMBER		NOT NULL,
	CONTENT	VARCHAR2(4000)		NOT NULL,
	USE_DATE	NUMBER		NOT NULL,
	START_DATE	TIMESTAMP		NOT NULL,
	END_DATE	TIMESTAMP		NOT NULL
);

CREATE TABLE PARTICIPANT (
	NO	NUMBER		NOT NULL,
	PARTICIPANT_NO	NUMBER		NOT NULL,
	OPERATION_SCHEDULE_NO	NUMBER		NOT NULL
);


CREATE TABLE APPROVER (
	NO	NUMBER		NOT NULL,
	APPROVAL_DOCUMENT_NO	NUMBER		NOT NULL,
	APPROVER_NO	NUMBER		NOT NULL,
	APPROVAL_DATE	TIMESTAMP		NULL,
	REASON	VARCHAR2(1000)		NULL,
    STATUS	CHAR(1)	DEFAULT 'W'	NOT NULL
);

CREATE TABLE SENDER_MAIL (
	NO	NUMBER		NOT NULL,
	SENDER_NO	NUMBER		NOT NULL,
	MAIL_NO	NUMBER		NOT NULL,
	STATUS	CHAR(1)	DEFAULT 'O'	NOT NULL
);


CREATE TABLE BUSINESS_TRIP_APPROVAL_DOCUMENT (
	NO	NUMBER		NOT NULL,
	APPROVAL_DOCUMENT_NO	NUMBER		NOT NULL,
	CONTENT	VARCHAR2(4000)		NOT NULL,
	START_DATE	TIMESTAMP		NOT NULL,
	END_DATE	TIMESTAMP		NOT NULL
);


CREATE TABLE INVENTORY_REQUEST_APPROVAL_DOCUMENT (
	NO	NUMBER		NOT NULL,
	CATEGORY_NO	NUMBER		NOT NULL,
	APPROVAL_DOCUMENT_NO	NUMBER		NOT NULL,
	COUNT	NUMBER		NOT NULL
);


CREATE TABLE INVENTORY_CATEGORY (
	NO	NUMBER		NOT NULL,
	ITEM_NAME	VARCHAR2(100)		NOT NULL
);

ALTER TABLE MEMBER ADD CONSTRAINT PK_MEMBER PRIMARY KEY (
	NO
);

ALTER TABLE PATIENT ADD CONSTRAINT PK_PATIENT PRIMARY KEY (
	NO
);

ALTER TABLE MAIL ADD CONSTRAINT PK_MAIL PRIMARY KEY (
	NO
);

ALTER TABLE CHATTING ADD CONSTRAINT PK_CHATTING PRIMARY KEY (
	NO
);

ALTER TABLE ADMIN ADD CONSTRAINT PK_ADMIN PRIMARY KEY (
	NO
);

ALTER TABLE PRESCRIPTION ADD CONSTRAINT PK_PRESCRIPTION PRIMARY KEY (
	NO
);

ALTER TABLE OPERATING_ROOM ADD CONSTRAINT PK_OPERATING_ROOM PRIMARY KEY (
	NO
);

ALTER TABLE INPATIENT ADD CONSTRAINT PK_INPATIENT PRIMARY KEY (
	NO
);

ALTER TABLE NOTICE_ATTACHMENT ADD CONSTRAINT PK_NOTICE_ATTACHMENT PRIMARY KEY (
	NO
);

ALTER TABLE NOTICE ADD CONSTRAINT PK_NOTICE PRIMARY KEY (
	NO
);

ALTER TABLE ATTENDANCE ADD CONSTRAINT PK_ATTENDANCE PRIMARY KEY (
	NO
);

ALTER TABLE INQUIRY ADD CONSTRAINT PK_INQUIRY PRIMARY KEY (
	NO
);

ALTER TABLE PROCEEDING ADD CONSTRAINT PK_PROCEEDING PRIMARY KEY (
	NO
);

ALTER TABLE INVENTORY ADD CONSTRAINT PK_INVENTORY PRIMARY KEY (
	NO
);

ALTER TABLE POSITION ADD CONSTRAINT PK_POSITION PRIMARY KEY (
	NO
);

ALTER TABLE DEPARTMENT ADD CONSTRAINT PK_DEPARTMENT PRIMARY KEY (
	NO
);

ALTER TABLE SUGGESTIONS ADD CONSTRAINT PK_SUGGESTIONS PRIMARY KEY (
	NO
);

ALTER TABLE INPATIENT_LIST ADD CONSTRAINT PK_INPATIENT_LIST PRIMARY KEY (
	NO
);

ALTER TABLE INQUIRY_REPLY ADD CONSTRAINT PK_INQUIRY_REPLY PRIMARY KEY (
	NO
);

ALTER TABLE NOTICE_REPLY ADD CONSTRAINT PK_NOTICE_REPLY PRIMARY KEY (
	NO
);

ALTER TABLE CHATTING_ROOM ADD CONSTRAINT PK_CHATTING_ROOM PRIMARY KEY (
	NO
);

ALTER TABLE DUTY ADD CONSTRAINT PK_DUTY PRIMARY KEY (
	NO
);

ALTER TABLE OPERATION_SCHEDULE ADD CONSTRAINT PK_OPERATION_SCHEDULE PRIMARY KEY (
	NO
);

ALTER TABLE ADMISSION_RECORD ADD CONSTRAINT PK_ADMISSION_RECORD PRIMARY KEY (
	NO
);

ALTER TABLE DIAGNOSIS ADD CONSTRAINT PK_DIAGNOSIS PRIMARY KEY (
	RECEIPT_NO
);

ALTER TABLE RECEIVER_MAIL ADD CONSTRAINT PK_RECEIVER_MAIL PRIMARY KEY (
	NO
);

ALTER TABLE MAIL_ATTACHMENT ADD CONSTRAINT PK_MAIL_ATTACHMENT PRIMARY KEY (
	NO
);

ALTER TABLE PRESCRIPTION_LIST ADD CONSTRAINT PK_PRESCRIPTION_LIST PRIMARY KEY (
	NO
);

ALTER TABLE VACATION_APPROVAL_DOCUMENT ADD CONSTRAINT PK_VACATION_APPROVAL_DOCUMENT PRIMARY KEY (
	NO
);

ALTER TABLE RECEIPT ADD CONSTRAINT PK_RECEIPT PRIMARY KEY (
	NO
);

ALTER TABLE PARTICIPANT ADD CONSTRAINT PK_PARTICIPANT PRIMARY KEY (
	NO
);

ALTER TABLE APPROVER ADD CONSTRAINT PK_APPROVER PRIMARY KEY (
	NO
);

ALTER TABLE SENDER_MAIL ADD CONSTRAINT PK_SENDER_MAIL PRIMARY KEY (
	NO
);

ALTER TABLE BUSINESS_TRIP_APPROVAL_DOCUMENT ADD CONSTRAINT PK_BUSINESS_TRIP_APPROVAL_DOCUMENT PRIMARY KEY (
	NO
);

ALTER TABLE INVENTORY_REQUEST_APPROVAL_DOCUMENT ADD CONSTRAINT PK_INVENTORY_REQUEST_APPROVAL_DOCUMENT PRIMARY KEY (
	NO
);

ALTER TABLE INVENTORY_CATEGORY ADD CONSTRAINT PK_INVENTORY_CATEGORY PRIMARY KEY (
	NO
);

ALTER TABLE APPROVAL_DOCUMENT ADD CONSTRAINT PK_APPROVAL_DOCUMENT PRIMARY KEY (
	NO
);

ALTER TABLE MEMBER ADD CONSTRAINT FK_DEPARTMENT_TO_MEMBER_1 FOREIGN KEY (
	DEPARTMENT_NO
)
REFERENCES DEPARTMENT (
	NO
);

ALTER TABLE MEMBER ADD CONSTRAINT FK_POSITION_TO_MEMBER_1 FOREIGN KEY (
	POSITION_NO
)
REFERENCES POSITION (
	NO
);

ALTER TABLE CHATTING ADD CONSTRAINT FK_MEMBER_TO_CHATTING_1 FOREIGN KEY (
	WRITER_NO
)
REFERENCES MEMBER (
	NO
);

ALTER TABLE NOTICE_ATTACHMENT ADD CONSTRAINT FK_NOTICE_TO_NOTICE_ATTACHMENT_1 FOREIGN KEY (
	NOTICE_NO
)
REFERENCES NOTICE (
	NO
);

ALTER TABLE NOTICE ADD CONSTRAINT FK_ADMIN_TO_NOTICE_1 FOREIGN KEY (
	WRITER_NO
)
REFERENCES ADMIN (
	NO
);

ALTER TABLE ATTENDANCE ADD CONSTRAINT FK_MEMBER_TO_ATTENDANCE_1 FOREIGN KEY (
	MEMBER_NO
)
REFERENCES MEMBER (
	NO
);

ALTER TABLE INQUIRY ADD CONSTRAINT FK_MEMBER_TO_INQUIRY_1 FOREIGN KEY (
	MEMBER_NO
)
REFERENCES MEMBER (
	NO
);

ALTER TABLE PROCEEDING ADD CONSTRAINT FK_MEMBER_TO_PROCEEDING_1 FOREIGN KEY (
	MEMBER_NO
)
REFERENCES MEMBER (
	NO
);

ALTER TABLE INVENTORY ADD CONSTRAINT FK_INVENTORY_CATEGORY_TO_INVENTORY_1 FOREIGN KEY (
	CATEGORY_NO
)
REFERENCES INVENTORY_CATEGORY (
	NO
);

ALTER TABLE SUGGESTIONS ADD CONSTRAINT FK_MEMBER_TO_SUGGESTIONS_1 FOREIGN KEY (
	MEMBER_NO
)
REFERENCES MEMBER (
	NO
);

ALTER TABLE INPATIENT_LIST ADD CONSTRAINT FK_INPATIENT_TO_INPATIENT_LIST_1 FOREIGN KEY (
	INPATIENT_NO
)
REFERENCES INPATIENT (
	NO
);

ALTER TABLE INPATIENT_LIST ADD CONSTRAINT FK_PATIENT_TO_INPATIENT_LIST_1 FOREIGN KEY (
	PATIENT_NO
)
REFERENCES PATIENT (
	NO
);

ALTER TABLE INQUIRY_REPLY ADD CONSTRAINT FK_INQUIRY_TO_INQUIRY_REPLY_1 FOREIGN KEY (
	INQUIRY_NO
)
REFERENCES INQUIRY (
	NO
);

ALTER TABLE INQUIRY_REPLY ADD CONSTRAINT FK_ADMIN_TO_INQUIRY_REPLY_1 FOREIGN KEY (
	ADMIN_NO
)
REFERENCES ADMIN (
	NO
);

ALTER TABLE NOTICE_REPLY ADD CONSTRAINT FK_NOTICE_TO_NOTICE_REPLY_1 FOREIGN KEY (
	NOTICE_NO
)
REFERENCES NOTICE (
	NO
);

ALTER TABLE NOTICE_REPLY ADD CONSTRAINT FK_MEMBER_TO_NOTICE_REPLY_1 FOREIGN KEY (
	WRITER_NO
)
REFERENCES MEMBER (
	NO
);

ALTER TABLE CHATTING_ROOM ADD CONSTRAINT FK_CHATTING_TO_CHATTING_ROOM_1 FOREIGN KEY (
	CHATTING_NO
)
REFERENCES CHATTING (
	NO
);

ALTER TABLE CHATTING_ROOM ADD CONSTRAINT FK_MEMBER_TO_CHATTING_ROOM_1 FOREIGN KEY (
	SENDER_NO
)
REFERENCES MEMBER (
	NO
);

ALTER TABLE CHATTING_ROOM ADD CONSTRAINT FK_MEMBER_TO_CHATTING_ROOM_2 FOREIGN KEY (
	RECEIVER_NO
)
REFERENCES MEMBER (
	NO
);

ALTER TABLE DUTY ADD CONSTRAINT FK_MEMBER_TO_DUTY_1 FOREIGN KEY (
	MEMBER_NO
)
REFERENCES MEMBER (
	NO
);

ALTER TABLE OPERATION_SCHEDULE ADD CONSTRAINT FK_OPERATING_ROOM_TO_OPERATION_SCHEDULE_1 FOREIGN KEY (
	OPERATING_ROOM_NO
)
REFERENCES OPERATING_ROOM (
	NO
);

ALTER TABLE OPERATION_SCHEDULE ADD CONSTRAINT FK_PATIENT_TO_OPERATION_SCHEDULE_1 FOREIGN KEY (
	PATIENT_NO
)
REFERENCES PATIENT (
	NO
);

ALTER TABLE ADMISSION_RECORD ADD CONSTRAINT FK_PATIENT_TO_ADMISSION_RECORD_1 FOREIGN KEY (
	PATIENT_NO
)
REFERENCES PATIENT (
	NO
);

ALTER TABLE ADMISSION_RECORD ADD CONSTRAINT FK_INPATIENT_TO_ADMISSION_RECORD_1 FOREIGN KEY (
	INPATIENT_NO
)
REFERENCES INPATIENT (
	NO
);

ALTER TABLE DIAGNOSIS ADD CONSTRAINT FK_RECEIPT_TO_DIAGNOSIS_1 FOREIGN KEY (
	RECEIPT_NO
)
REFERENCES RECEIPT (
	NO
);

ALTER TABLE RECEIVER_MAIL ADD CONSTRAINT FK_MEMBER_TO_RECEIVER_MAIL_1 FOREIGN KEY (
	RECEIVER_NO
)
REFERENCES MEMBER (
	NO
);

ALTER TABLE RECEIVER_MAIL ADD CONSTRAINT FK_MAIL_TO_RECEIVER_MAIL_1 FOREIGN KEY (
	MAIL_NO
)
REFERENCES MAIL (
	NO
);

ALTER TABLE MAIL_ATTACHMENT ADD CONSTRAINT FK_MAIL_TO_MAIL_ATTACHMENT_1 FOREIGN KEY (
	MAIL_NO
)
REFERENCES MAIL (
	NO
);

ALTER TABLE PRESCRIPTION_LIST ADD CONSTRAINT FK_PRESCRIPTION_TO_PRESCRIPTION_LIST_1 FOREIGN KEY (
	PRESCRIPTION_NO
)
REFERENCES PRESCRIPTION (
	NO
);

ALTER TABLE PRESCRIPTION ADD CONSTRAINT FK_PATIENT_TO_PRESCRIPTION_1 FOREIGN KEY (
	PATIENT_NO
)
REFERENCES PATIENT (
	NO
);

ALTER TABLE VACATION_APPROVAL_DOCUMENT ADD CONSTRAINT FK_APPROVAL_DOCUMENT_TO_VACATION_APPROVAL_DOCUMENT_1 FOREIGN KEY (
	APPROVAL_DOCUMENT_NO
)
REFERENCES APPROVAL_DOCUMENT (
	NO
);

ALTER TABLE RECEIPT ADD CONSTRAINT FK_PATIENT_TO_RECEIPT_1 FOREIGN KEY (
	PATIENT_NO
)
REFERENCES PATIENT (
	NO
);

ALTER TABLE PARTICIPANT ADD CONSTRAINT FK_MEMBER_TO_PARTICIPANT_1 FOREIGN KEY (
	PARTICIPANT_NO
)
REFERENCES MEMBER (
	NO
);

ALTER TABLE PARTICIPANT ADD CONSTRAINT FK_OPERATION_SCHEDULE_TO_PARTICIPANT_1 FOREIGN KEY (
	OPERATION_SCHEDULE_NO
)
REFERENCES OPERATION_SCHEDULE (
	NO
);

ALTER TABLE APPROVER ADD CONSTRAINT FK_APPROVAL_DOCUMENT_TO_APPROVER_1 FOREIGN KEY (
	APPROVAL_DOCUMENT_NO
)
REFERENCES APPROVAL_DOCUMENT (
	NO
);

ALTER TABLE APPROVER ADD CONSTRAINT FK_MEMBER_TO_APPROVER_1 FOREIGN KEY (
	APPROVER_NO
)
REFERENCES MEMBER (
	NO
);

ALTER TABLE SENDER_MAIL ADD CONSTRAINT FK_MEMBER_TO_SENDER_MAIL_1 FOREIGN KEY (
	SENDER_NO
)
REFERENCES MEMBER (
	NO
);

ALTER TABLE SENDER_MAIL ADD CONSTRAINT FK_MAIL_TO_SENDER_MAIL_1 FOREIGN KEY (
	MAIL_NO
)
REFERENCES MAIL (
	NO
);

ALTER TABLE BUSINESS_TRIP_APPROVAL_DOCUMENT ADD CONSTRAINT FK_APPROVAL_DOCUMENT_TO_BUSINESS_TRIP_APPROVAL_DOCUMENT_1 FOREIGN KEY (
	APPROVAL_DOCUMENT_NO
)
REFERENCES APPROVAL_DOCUMENT (
	NO
);

ALTER TABLE INVENTORY_REQUEST_APPROVAL_DOCUMENT ADD CONSTRAINT FK_INVENTORY_CATEGORY_TO_INVENTORY_REQUEST_APPROVAL_DOCUMENT_1 FOREIGN KEY (
	CATEGORY_NO
)
REFERENCES INVENTORY_CATEGORY (
	NO
);

ALTER TABLE INVENTORY_REQUEST_APPROVAL_DOCUMENT ADD CONSTRAINT FK_APPROVAL_DOCUMENT_TO_INVENTORY_REQUEST_APPROVAL_DOCUMENT_1 FOREIGN KEY (
	APPROVAL_DOCUMENT_NO
)
REFERENCES APPROVAL_DOCUMENT (
	NO
);

ALTER TABLE APPROVAL_DOCUMENT ADD CONSTRAINT FK_MEMBER_TO_APPROVAL_DOCUMENT_1 FOREIGN KEY (
	MEMBER_NO
)
REFERENCES MEMBER (
	NO
);

COMMIT;