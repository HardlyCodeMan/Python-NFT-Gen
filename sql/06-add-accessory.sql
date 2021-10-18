/*
ACCESSORIES

Assign accessories to backgrounds, furs, clothes & eyes randomly using the limits provided.

SELECT count(rowid) FROM images WHERE accessory IS NULL; --6631 at start, 0 at end
SELECT count(rowid) FROM images WHERE accessory IS NOT NULL; --0 at start, 6631 at end
*/
UPDATE images
SET accessory = dt1.accessory
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           "3D Glasses.png" AS accessory
    FROM images AS t1
    WHERE t1.accessory IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM accessories AS t2
        WHERE t2.name = "3D Glasses.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET accessory = dt1.accessory
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           "Balaclava.png" AS accessory
    FROM images AS t1
    WHERE t1.accessory IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM accessories AS t2
        WHERE t2.name = "Balaclava.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET accessory = dt1.accessory
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           "Baseball Bat.png" AS accessory
    FROM images AS t1
    WHERE t1.accessory IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM accessories AS t2
        WHERE t2.name = "Baseball Bat.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET accessory = dt1.accessory
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           "Black Shades.png" AS accessory
    FROM images AS t1
    WHERE t1.accessory IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM accessories AS t2
        WHERE t2.name = "Black Shades.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET accessory = dt1.accessory
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           "Chef Knife.png" AS accessory
    FROM images AS t1
    WHERE t1.accessory IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM accessories AS t2
        WHERE t2.name = "Chef Knife.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET accessory = dt1.accessory
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           "Cobie Sunnies.png" AS accessory
    FROM images AS t1
    WHERE t1.accessory IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM accessories AS t2
        WHERE t2.name = "Cobie Sunnies.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET accessory = dt1.accessory
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           "DBZ Scouter.png" AS accessory
    FROM images AS t1
    WHERE t1.accessory IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM accessories AS t2
        WHERE t2.name = "DBZ Scouter.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET accessory = dt1.accessory
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           "Eye Patch.png" AS accessory
    FROM images AS t1
    WHERE t1.accessory IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM accessories AS t2
        WHERE t2.name = "Eye Patch.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET accessory = dt1.accessory
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           "Face Tattoo.png" AS accessory
    FROM images AS t1
    WHERE t1.accessory IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM accessories AS t2
        WHERE t2.name = "Face Tattoo.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET accessory = dt1.accessory
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           "Gold Chains.png" AS accessory
    FROM images AS t1
    WHERE t1.accessory IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM accessories AS t2
        WHERE t2.name = "Gold Chains.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET accessory = dt1.accessory
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           "None.png" AS accessory
    FROM images AS t1
    WHERE t1.accessory IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM accessories AS t2
        WHERE t2.name = "None.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET accessory = dt1.accessory
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           "Pit Vipers.png" AS accessory
    FROM images AS t1
    WHERE t1.accessory IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM accessories AS t2
        WHERE t2.name = "Pit Vipers.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET accessory = dt1.accessory
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           "Squirtle Squad Sunnies.png" AS accessory
    FROM images AS t1
    WHERE t1.accessory IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM accessories AS t2
        WHERE t2.name = "Squirtle Squad Sunnies.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET accessory = dt1.accessory
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           t1.clothes,
           t1.eyes,
           "Wand.png" AS accessory
    FROM images AS t1
    WHERE t1.accessory IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM accessories AS t2
        WHERE t2.name = "Wand.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
/*
Accessory checks

SELECT count(rowid) FROM images WHERE accessory IS NULL; --6631 at start, 0 at end
SELECT count(rowid) FROM images WHERE accessory IS NOT NULL; --0 at start, 6631 at end
SELECT count(rowid) FROM images WHERE accessory = "3D Glasses.png"; --75
SELECT count(rowid) FROM images WHERE accessory = "Balaclava.png"; --36
SELECT count(rowid) FROM images WHERE accessory = "Baseball Bat.png"; --500
SELECT count(rowid) FROM images WHERE accessory = "Black Shades.png"; --488
SELECT count(rowid) FROM images WHERE accessory = "Chef Knife.png"; --510
SELECT count(rowid) FROM images WHERE accessory = "Cobie Sunnies.png"; --33
SELECT count(rowid) FROM images WHERE accessory = "DBZ Scouter.png"; --66
SELECT count(rowid) FROM images WHERE accessory = "Eye Patch.png"; --530
SELECT count(rowid) FROM images WHERE accessory = "Face Tattoo.png"; --77
SELECT count(rowid) FROM images WHERE accessory = "Gold Chains.png"; --600
SELECT count(rowid) FROM images WHERE accessory = "None.png"; --2165
SELECT count(rowid) FROM images WHERE accessory = "Pit Vipers.png"; --476
SELECT count(rowid) FROM images WHERE accessory = "Squirtle Squad Sunnies.png"; --555
SELECT count(rowid) FROM images WHERE accessory = "Wand.png"; --520
 */