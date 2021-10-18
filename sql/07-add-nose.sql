/*
NOSES

Assign noses to backgrounds, furs, clothes, eyes & accessories randomly using the limits provided.

SELECT count(rowid) FROM images WHERE nose IS NULL; --6631 at start, 0 at end
SELECT count(rowid) FROM images WHERE nose IS NOT NULL; --0 at start, 6631 at end
*/
UPDATE images
SET nose = dt1.nose
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           "Ball Gagv.png" AS nose
    FROM images AS t1
    WHERE t1.nose IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM noses AS t2
        WHERE t2.name = "Ball Gagv.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET nose = dt1.nose
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           "Blue.png" AS nose
    FROM images AS t1
    WHERE t1.nose IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM noses AS t2
        WHERE t2.name = "Blue.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET nose = dt1.nose
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           "Ciggie.png" AS nose
    FROM images AS t1
    WHERE t1.nose IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM noses AS t2
        WHERE t2.name = "Ciggie.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET nose = dt1.nose
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           "Face Mask.png" AS nose
    FROM images AS t1
    WHERE t1.nose IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM noses AS t2
        WHERE t2.name = "Face Mask.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET nose = dt1.nose
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           "Grey.png" AS nose
    FROM images AS t1
    WHERE t1.nose IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM noses AS t2
        WHERE t2.name = "Grey.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET nose = dt1.nose
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           "Orange.png" AS nose
    FROM images AS t1
    WHERE t1.nose IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM noses AS t2
        WHERE t2.name = "Orange.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET nose = dt1.nose
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           "Pink.png" AS nose
    FROM images AS t1
    WHERE t1.nose IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM noses AS t2
        WHERE t2.name = "Pink.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET nose = dt1.nose
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           "Pringles Moustache.png" AS nose
    FROM images AS t1
    WHERE t1.nose IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM noses AS t2
        WHERE t2.name = "Pringles Moustache.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET nose = dt1.nose
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           "Red.png" AS nose
    FROM images AS t1
    WHERE t1.nose IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM noses AS t2
        WHERE t2.name = "Red.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET nose = dt1.nose
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           "Tongue.png" AS nose
    FROM images AS t1
    WHERE t1.nose IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM noses AS t2
        WHERE t2.name = "Tongue.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET nose = dt1.nose
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           "Yellow.png" AS nose
    FROM images AS t1
    WHERE t1.nose IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM noses AS t2
        WHERE t2.name = "Yellow.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
/*
Nose checks

SELECT count(rowid) FROM images WHERE nose IS NULL; --6631 at start, 0 at end
SELECT count(rowid) FROM images WHERE nose IS NOT NULL; --0 at start, 6631 at end
SELECT count(rowid) FROM images WHERE nose = "Ball Gagv.png"; --140
SELECT count(rowid) FROM images WHERE nose = "Blue.png"; --253
SELECT count(rowid) FROM images WHERE nose = "Ciggie.png"; --60
SELECT count(rowid) FROM images WHERE nose = "Face Mask.png"; --66
SELECT count(rowid) FROM images WHERE nose = "Grey.png"; --1202
SELECT count(rowid) FROM images WHERE nose = "Orange.png"; --1119
SELECT count(rowid) FROM images WHERE nose = "Pink.png"; --1206
SELECT count(rowid) FROM images WHERE nose = "Pringles Moustache.png"; --80
SELECT count(rowid) FROM images WHERE nose = "Red.png"; --1170
SELECT count(rowid) FROM images WHERE nose = "Tongue.png"; --131
SELECT count(rowid) FROM images WHERE nose = "Yellow.png"; --1204
 */
