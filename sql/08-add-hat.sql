/*
HATS

Assign noses to backgrounds, furs, clothes, eyes, accessories & hats randomly using the limits provided.

SELECT count(rowid) FROM images WHERE hat IS NULL; --6631 at start, 0 at end
SELECT count(rowid) FROM images WHERE hat IS NOT NULL; --0 at start, 6631 at end
*/
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Air Helmet.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Air Helmet.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Black Hat.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Black Hat.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Blue Bandana.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Blue Bandana.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Blue Beanie.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Blue Beanie.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Blue Hat.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Blue Hat.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Blue Mohawk.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Blue Mohawk.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Blue Runscape Hat.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Blue Runscape Hat.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Chef Hat.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Chef Hat.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Cork Hat.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Cork Hat.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Crown.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Crown.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Devil Horns.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Devil Horns.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Green Beanie.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Green Beanie.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Green Mohawk.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Green Mohawk.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Gucci Hat.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Gucci Hat.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Halo.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Halo.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Knife in Head.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Knife in Head.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Long Blonde Hair.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Long Blonde Hair.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Long Brown Hair.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Long Brown Hair.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Maccas Hat.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Maccas Hat.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "None.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "None.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Purple Runescape Hat.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Purple Runescape Hat.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Red Bandana.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Red Bandana.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Red Mohawk.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Red Mohawk.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Short Blonde Hair.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Short Blonde Hair.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Short Brown Hair.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Short Brown Hair.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Skull Beanie.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Skull Beanie.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Sorting Hat.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Sorting Hat.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Top Hat.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Top Hat.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Trainer Cap.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Trainer Cap.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET hat = dt1.hat
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           t1.accessory,
           t1.nose,
           "Yellow Beanie.png" AS hat
    FROM images AS t1
    WHERE t1.hat IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM hats AS t2
        WHERE t2.name = "Yellow Beanie.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
/*
Hats check

SELECT count(rowid) FROM images WHERE hat IS NULL; --6631 at start, 0 at end
SELECT count(rowid) FROM images WHERE hat IS NOT NULL; --0 at start, 6631 at end
SELECT count(rowid) FROM images WHERE hat = "Air Helmet.png"; --57
SELECT count(rowid) FROM images WHERE hat = "Black Hat.png"; --322
SELECT count(rowid) FROM images WHERE hat = "Blue Bandana.png"; --170
SELECT count(rowid) FROM images WHERE hat = "Blue Beanie.png"; --307
SELECT count(rowid) FROM images WHERE hat = "Blue Hat.png"; --349
SELECT count(rowid) FROM images WHERE hat = "Blue Mohawk.png"; --174
SELECT count(rowid) FROM images WHERE hat = "Blue Runscape Hat.png"; --152
SELECT count(rowid) FROM images WHERE hat = "Chef Hat.png"; --150
SELECT count(rowid) FROM images WHERE hat = "Cork Hat.png"; --421
SELECT count(rowid) FROM images WHERE hat = "Crown.png"; --22
SELECT count(rowid) FROM images WHERE hat = "Devil Horns.png"; --38
SELECT count(rowid) FROM images WHERE hat = "Green Beanie.png"; --309
SELECT count(rowid) FROM images WHERE hat = "Green Mohawk.png"; --209
SELECT count(rowid) FROM images WHERE hat = "Gucci Hat.png"; --24
SELECT count(rowid) FROM images WHERE hat = "Halo.png"; --73
SELECT count(rowid) FROM images WHERE hat = "Knife in Head.png"; --53
SELECT count(rowid) FROM images WHERE hat = "Long Blonde Hair.png"; --269
SELECT count(rowid) FROM images WHERE hat = "Long Brown Hair.png"; --269
SELECT count(rowid) FROM images WHERE hat = "Maccas Hat.png"; --96
SELECT count(rowid) FROM images WHERE hat = "None.png"; --1327
SELECT count(rowid) FROM images WHERE hat = "Purple Runescape Hat.png"; --161
SELECT count(rowid) FROM images WHERE hat = "Red Bandana.png"; --151
SELECT count(rowid) FROM images WHERE hat = "Red Mohawk.png"; --172
SELECT count(rowid) FROM images WHERE hat = "Short Blonde Hair.png"; --213
SELECT count(rowid) FROM images WHERE hat = "Short Brown Hair.png"; --222
SELECT count(rowid) FROM images WHERE hat = "Skull Beanie.png"; --307
SELECT count(rowid) FROM images WHERE hat = "Sorting Hat.png"; --136
SELECT count(rowid) FROM images WHERE hat = "Top Hat.png"; --84
SELECT count(rowid) FROM images WHERE hat = "Trainer Cap.png"; --87
SELECT count(rowid) FROM images WHERE hat = "Yellow Beanie.png"; --307
 */