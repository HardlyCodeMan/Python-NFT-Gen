/*
FURS

Assign furs to backgrounds randomly using the limits provided.

SELECT count(fur) FROM images WHERE fur IS NULL; --6631
*/
--Use the implicit rowid to update the table https://www.sqlite.org/rowidtable.html & https://stackoverflow.com/a/8963158
UPDATE images
SET fur = dt1.fur
FROM (
    SELECT rowid, t1.background, "Brown.png" AS fur
    FROM images AS t1
    WHERE t1.fur IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM furs AS t2
        WHERE t2.name = "Brown.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET fur = dt1.fur
FROM (
    SELECT rowid, t1.background, "Gold.png" AS fur
    FROM images AS t1
    WHERE t1.fur IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM furs AS t2
        WHERE t2.name = "Gold.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET fur = dt1.fur
FROM (
    SELECT rowid, t1.background, "Grey.png" AS fur
    FROM images AS t1
    WHERE t1.fur IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM furs AS t2
        WHERE t2.name = "Grey.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET fur = dt1.fur
FROM (
    SELECT rowid, t1.background, "Ice.png" AS fur
    FROM images AS t1
    WHERE t1.fur IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM furs AS t2
        WHERE t2.name = "Ice.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET fur = dt1.fur
FROM (
    SELECT rowid, t1.background, "Neon Green.png" AS fur
    FROM images AS t1
    WHERE t1.fur IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM furs AS t2
        WHERE t2.name = "Neon Green.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET fur = dt1.fur
FROM (
    SELECT rowid, t1.background, "Pink.png" AS fur
    FROM images AS t1
    WHERE t1.fur IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM furs AS t2
        WHERE t2.name = "Pink.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET fur = dt1.fur
FROM (
    SELECT rowid, t1.background, "Purple.png" AS fur
    FROM images AS t1
    WHERE t1.fur IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM furs AS t2
        WHERE t2.name = "Purple.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
/*
Fur checks

SELECT count(rowid) FROM images WHERE fur IS NULL; --6631 at start, 0 at end
SELECT count(rowid) FROM images WHERE fur IS NOT NULL; --0 at start, 6631 at end
SELECT count(*) FROM images WHERE fur = 'Brown.png'; --2119
SELECT count(*) FROM images WHERE fur = 'Gold.png'; --50
SELECT count(*) FROM images WHERE fur = 'Grey.png'; --2083
SELECT count(*) FROM images WHERE fur = 'Ice.png'; --100
SELECT count(*) FROM images WHERE fur = 'Neon Green.png'; --250
SELECT count(*) FROM images WHERE fur = 'Pink.png'; --1049
SELECT count(*) FROM images WHERE fur = 'Purple.png'; --980
*/