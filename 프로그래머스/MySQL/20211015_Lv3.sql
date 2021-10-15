-- 있었는데요 없었습니다 (JOIN)
SELECT INS.ANIMAL_ID, INS.NAME
FROM ANIMAL_INS INS RIGHT JOIN ANIMAL_OUTS OUTS
ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
WHERE INS.DATETIME > OUTS.DATETIME
ORDER BY INS.DATETIME;
--------------------------------------------------------
-- 오랜 기간 보호한 동물(1) (JOIN)
SELECT INS.NAME, INS.DATETIME
FROM ANIMAL_INS INS LEFT JOIN ANIMAL_OUTS OUTS
ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
WHERE OUTS.DATETIME IS NULL
ORDER BY INS.DATETIME
LIMIT 3;
