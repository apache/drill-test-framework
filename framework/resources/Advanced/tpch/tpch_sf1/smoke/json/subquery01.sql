SELECT C.C_CUSTKEY 
  FROM customer C 
  WHERE C.C_CUSTKEY IN (SELECT O.O_CUSTKEY 
	FROM orders O 
	WHERE O.O_TOTALPRICE BETWEEN 100000 AND 100100);
