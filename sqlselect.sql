SELECT T.TCODE 주문번호, 
TO_CHAR(T.TDATE,'YYYY-MM-DD DY') 거래일자, 
P.NAME 제품명, C.NAME 거래처명,
DECODE(T.CATEGORY, '1', '입고','출고') 구분, 
TO_CHAR(SUM(P.PRICE * T.AMOUNT),'L999,999,999') 총금액 
FROM TRANSACTION_TBL T, PRODUCT_TBL P, CUSTOMER_TBL C 
WHERE T.CCODE = C.CCODE AND P.PCODE=T.PCODE 
GROUP BY T.TCODE,  
TO_CHAR(T.TDATE,'YYYY-MM-DD DY'), 
P.NAME, 
C.NAME, 
DECODE(T.CATEGORY, '1', '입고','출고') 
ORDER BY T.TCODE;