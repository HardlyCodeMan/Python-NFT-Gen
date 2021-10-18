/*
BACKGROUNDS

Select and store the start background n times using the limits added earlier. - https://stackoverflow.com/a/2472757
*/
INSERT INTO images (background)
SELECT *
FROM (
    SELECT t1.name
    FROM backgrounds t1
    CROSS JOIN numbers t2
    WHERE t1.name = 'Aqua.png'
    AND t2.a_number <= (
        SELECT amount
        FROM backgrounds
        WHERE name = 'Aqua.png'
    )
);
INSERT INTO images (background)
SELECT *
FROM (
    SELECT t1.name
    FROM backgrounds t1
    CROSS JOIN numbers t2
    WHERE t1.name = 'Full Moon.png'
    AND t2.a_number <= (
        SELECT amount
        FROM backgrounds
        WHERE name = 'Full Moon.png'
    )
);
INSERT INTO images (background)
SELECT *
FROM (
    SELECT t1.name
    FROM backgrounds t1
    CROSS JOIN numbers t2
    WHERE t1.name = 'Light Grey.png'
    AND t2.a_number <= (
        SELECT amount
        FROM backgrounds
        WHERE name = 'Light Grey.png'
    )
);
INSERT INTO images (background)
SELECT *
FROM (
    SELECT t1.name
    FROM backgrounds t1
    CROSS JOIN numbers t2
    WHERE t1.name = 'Purple.png'
    AND t2.a_number <= (
        SELECT amount
        FROM backgrounds
        WHERE name = 'Purple.png'
    )
);
INSERT INTO images (background)
SELECT *
FROM (
    SELECT t1.name
    FROM backgrounds t1
    CROSS JOIN numbers t2
    WHERE t1.name = 'Underwater.png'
    AND t2.a_number <= (
        SELECT amount
        FROM backgrounds
        WHERE name = 'Underwater.png'
    )
);
INSERT INTO images (background)
SELECT *
FROM (
    SELECT t1.name
    FROM backgrounds t1
    CROSS JOIN numbers t2
    WHERE t1.name = 'Yellow.png'
    AND t2.a_number <= (
        SELECT amount
        FROM backgrounds
        WHERE name = 'Yellow.png'
    )
);
/*
Background Checks

SELECT count(rowid) FROM images; --6631
SELECT count(*) FROM images WHERE background = 'Aqua.png'; --1751
SELECT count(*) FROM images WHERE background = 'Full Moon.png'; --33
SELECT count(*) FROM images WHERE background = 'Light Grey.png'; --2000
SELECT count(*) FROM images WHERE background = 'Purple.png'; --1113
SELECT count(*) FROM images WHERE background = 'Underwater.png'; --34
SELECT count(*) FROM images WHERE background = 'Yellow.png'; --1700
*/
