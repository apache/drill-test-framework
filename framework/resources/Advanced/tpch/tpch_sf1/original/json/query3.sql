SELECT
  L.L_ORDERKEY,
  SUM(L.L_EXTENDEDPRICE * (1 - L.L_DISCOUNT)) AS REVENUE,
  O.O_ORDERDate,
  O.O_SHIPPRIORITY
FROM
  customer C,
  orders O,
  lineitem L
WHERE
  C.C_MKTSEGMENT = 'HOUSEHOLD'
  AND C.C_CUSTKEY = O.O_CUSTKEY
  AND L.L_ORDERKEY = O.O_ORDERKEY
  AND O.O_ORDERDate < DATE '1995-03-25'
  AND L.L_SHIPDate > DATE '1995-03-25'
GROUP BY
  L.L_ORDERKEY,
  O.O_ORDERDate,
  O.O_SHIPPRIORITY
ORDER BY
  REVENUE DESC,
  O.O_ORDERDate
LIMIT 10;
