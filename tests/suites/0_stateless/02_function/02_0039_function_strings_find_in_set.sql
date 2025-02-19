SELECT '=== const ===';
SELECT '=== FIND_IN_SET(a, a); ===';
SELECT FIND_IN_SET('a', 'a');
SELECT '=== FIND_IN_SET(a, ,a); ===';
SELECT FIND_IN_SET('a', ',a');
SELECT '=== FIND_IN_SET(a, a,); ===';
SELECT FIND_IN_SET('a', 'a,');
SELECT '=== FIND_IN_SET(a, ,,a,); ===';
SELECT FIND_IN_SET('a', ',,a,');
SELECT '=== FIND_IN_SET(a, 1,2,a,4,5); ===';
SELECT FIND_IN_SET('a', '1,2,a,4,5');
SELECT '=== FIND_IN_SET(a, 1,2,a,4,5); ===';
SELECT FIND_IN_SET('a', '1,2,a,4,5');
SELECT '=== FIND_IN_SET(a, 1,2,a,); ===';
SELECT FIND_IN_SET('a', '1,2,a,');
SELECT '=== FIND_IN_SET(a, ,1,2,a); ===';
SELECT FIND_IN_SET('a', ',1,2,a');
SELECT '=== FIND_IN_SET(ab, 1,2,ab,3,4,5); ===';
SELECT FIND_IN_SET('ab', '1,2,ab,3,4,5');
SELECT '=== FIND_IN_SET(ab, 1,2,ab,); ===';
SELECT FIND_IN_SET('ab', '1,2,ab,');
SELECT '=== FIND_IN_SET(ab, 1,2,ab); ===';
SELECT FIND_IN_SET('ab', '1,2,ab');
SELECT '=== FIND_IN_SET(ab, ,ab); ===';
SELECT FIND_IN_SET('ab', ',ab');
SELECT '=== FIND_IN_SET(ab, ab); ===';
SELECT FIND_IN_SET('ab', 'ab');

SELECT '=== series ===';
SELECT '=== FIND_IN_SET(3, number) ===';
SELECT FIND_IN_SET('3', toString(number))  FROM numbers(5) ORDER BY number;
SELECT '=== FIND_IN_SET(number, 1,2,3,4,5) ===';
SELECT FIND_IN_SET(toString(number), '1,2,3,4,5')  FROM numbers(5) ORDER BY number;

SELECT '=== null ===';
SELECT FIND_IN_SET(NULL, NULL);
SELECT FIND_IN_SET('abc', NULL);
SELECT FIND_IN_SET(NULL, 'abc,cdf');
