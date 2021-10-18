/*
EYES

Assign eyes to backgrounds, furs & clothes randomly using the limits provided.

SELECT count(rowid) FROM images WHERE eyes IS NULL; --6631 at start, 0 at end
SELECT count(rowid) FROM images WHERE eyes IS NOT NULL; --0 at start, 6631 at end
*/
UPDATE images
SET eyes = dt1.eyes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           "Angry.png" AS eyes
    FROM images AS t1
    WHERE t1.eyes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM eyes AS t2
        WHERE t2.name = "Angry.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET eyes = dt1.eyes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           "Anime.png" AS eyes
    FROM images AS t1
    WHERE t1.eyes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM eyes AS t2
        WHERE t2.name = "Anime.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET eyes = dt1.eyes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           "Black Eye.png" AS eyes
    FROM images AS t1
    WHERE t1.eyes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM eyes AS t2
        WHERE t2.name = "Black Eye.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET eyes = dt1.eyes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           "Crosses.png" AS eyes
    FROM images AS t1
    WHERE t1.eyes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM eyes AS t2
        WHERE t2.name = "Crosses.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET eyes = dt1.eyes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           "Happy.png" AS eyes
    FROM images AS t1
    WHERE t1.eyes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM eyes AS t2
        WHERE t2.name = "Happy.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET eyes = dt1.eyes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           "Open.png" AS eyes
    FROM images AS t1
    WHERE t1.eyes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM eyes AS t2
        WHERE t2.name = "Open.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET eyes = dt1.eyes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           "Pixel.png" AS eyes
    FROM images AS t1
    WHERE t1.eyes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM eyes AS t2
        WHERE t2.name = "Pixel.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET eyes = dt1.eyes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           "Squining.png" AS eyes
    FROM images AS t1
    WHERE t1.eyes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM eyes AS t2
        WHERE t2.name = "Squining.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET eyes = dt1.eyes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           "Stoner.png" AS eyes
    FROM images AS t1
    WHERE t1.eyes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM eyes AS t2
        WHERE t2.name = "Stoner.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET eyes = dt1.eyes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           "Tired.png" AS eyes
    FROM images AS t1
    WHERE t1.eyes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM eyes AS t2
        WHERE t2.name = "Tired.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET eyes = dt1.eyes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           "Worried.png" AS eyes
    FROM images AS t1
    WHERE t1.eyes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM eyes AS t2
        WHERE t2.name = "Worried.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
/*
Eye checks
SELECT count(rowid) FROM images WHERE eyes IS NULL; --6631 at start, 0 at end
SELECT count(rowid) FROM images WHERE eyes IS NOT NULL; --0 at start, 6631 at end
SELECT count(rowid) FROM images WHERE eyes = "Angry.png"; --661
SELECT count(rowid) FROM images WHERE eyes = "Anime.png"; --85
SELECT count(rowid) FROM images WHERE eyes = "Black Eye.png"; --296
SELECT count(rowid) FROM images WHERE eyes = "Crosses.png"; --710
SELECT count(rowid) FROM images WHERE eyes = "Happy.png"; --699
SELECT count(rowid) FROM images WHERE eyes = "Open.png"; --1150
SELECT count(rowid) FROM images WHERE eyes = "Pixel.png"; --140
SELECT count(rowid) FROM images WHERE eyes = "Squining.png"; --850
SELECT count(rowid) FROM images WHERE eyes = "Stoner.png"; --598
SELECT count(rowid) FROM images WHERE eyes = "Tired.png"; --803
SELECT count(rowid) FROM images WHERE eyes = "Worried.png"; --639
 */