ALTER SESSION SET `PLANNER.ENABLE_MERGEJOIN` = FALSE;
SELECT COUNT(*) 
    FROM part P1, part P2 
    WHERE P1.P_NAME = P2.P_NAME 
	AND P1.P_MFGR = P2.P_MFGR;
ALTER SESSION SET `PLANNER.ENABLE_MERGEJOIN` = TRUE;
