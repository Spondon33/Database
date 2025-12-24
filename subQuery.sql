SELECT*
FROM EMP
WHERE SAL > (SELECT AVG(SAL)
             FROM EMP
             WHERE DEPTNO = 10)

SELECT*
FROM EMP
WHERE SAL = (SELECT MAX(sal)
             FROM EMP
             WHERE DEPTNO = 30)

SELECT*
FROM EMP
WHERE SAL IN (SELECT MIN(SAl)
              FROM EMP
              GROUP BY DEPTNO)

SELECT*
FROM EMP
WHERE HIREDATE < (SELECT MIN(HIREDATE)
                  FROM EMP
                  WHERE DEPTNO = 20)

SELECT*
FROM EMP
WHERE job = (SELECT JOB
             FROM EMP
             WHERE ENAME = 'SMITH')

SELECT*
FROM EMP
WHERE SAL > All(SELECT SAL
                FROM EMP
                WHERE JOB = 'SALESMAN')

SELECT*
FROM EMP
WHERE SAL = (SELECT min(SAL)
             FROM EMP
             WHERE SAL > (SELECT MIN(SAL)
                          FROM EMP))