SELECT T.TCODE �ֹ���ȣ, 
TO_CHAR(T.TDATE,'YYYY-MM-DD DY') �ŷ�����, 
P.NAME ��ǰ��, C.NAME �ŷ�ó��,
DECODE(T.CATEGORY, '1', '�԰�','���') ����, 
TO_CHAR(SUM(P.PRICE * T.AMOUNT),'L999,999,999') �ѱݾ� 
FROM TRANSACTION_TBL T, PRODUCT_TBL P, CUSTOMER_TBL C 
WHERE T.CCODE = C.CCODE AND P.PCODE=T.PCODE 
GROUP BY T.TCODE,  
TO_CHAR(T.TDATE,'YYYY-MM-DD DY'), 
P.NAME, 
C.NAME, 
DECODE(T.CATEGORY, '1', '�԰�','���') 
ORDER BY T.TCODE;