/*
CLOTHES

Assign clothes to backgrounds & furs randomly using the limits provided.

SELECT count(rowid) FROM images WHERE clothes IS NULL; --6631 at start, 0 at end
SELECT count(rowid) FROM images WHERE clothes IS NOT NULL; --0 at start, 6631 at end
*/
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Black Hoodie.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Black Hoodie.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Blue Sweater.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Blue Sweater.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Camo Hoodie.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Camo Hoodie.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Chef Jacket.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Chef Jacket.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Denim Shirt.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Denim Shirt.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Dracula Cape.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Dracula Cape.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Goku Uniform.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Goku Uniform.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Green Shirt.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Green Shirt.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Gucci Shirt.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Gucci Shirt.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Hi-Vis Vest.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Hi-Vis Vest.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Jersey.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Jersey.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Kimono.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Kimono.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Letterman Jacket.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Letterman Jacket.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Mustard Hoodie.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Mustard Hoodie.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Naked.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Naked.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Navy Singlet.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Navy Singlet.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Piccolo Uniform.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Piccolo Uniform.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Pink Hoodie.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Pink Hoodie.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Puffer Jacket.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Puffer Jacket.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Pup Only Shirt.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Pup Only Shirt.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Red Hawaiian.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Red Hawaiian.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Red Sweater.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Red Sweater.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Skull Tank.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Skull Tank.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Trainer Shirt.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Trainer Shirt.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Tuxedo.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Tuxedo.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Vegeta Uniform.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Vegeta Uniform.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "White Singlet.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "White Singlet.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
UPDATE images
SET clothes = dt1.clothes
FROM (
    SELECT rowid,
           t1.background,
           t1.fur,
           "Yellow Hawaiian.png" AS clothes
    FROM images AS t1
    WHERE t1.clothes IS NULL
    ORDER BY RANDOM()
    LIMIT (
        SELECT t2.amount
        FROM clothes AS t2
        WHERE t2.name = "Yellow Hawaiian.png"
    )
) AS dt1
WHERE images.rowid = dt1.rowid
;
/*
Clothes checks

SELECT count(rowid) FROM images WHERE clothes IS NULL; --6631 at start, 0 at end
SELECT count(rowid) FROM images WHERE clothes IS NOT NULL; --0 at start, 6631 at end
SELECT count(rowid) FROM images WHERE clothes = "Black Hoodie.png"; --505
SELECT count(rowid) FROM images WHERE clothes = "Blue Sweater.png"; --571
SELECT count(rowid) FROM images WHERE clothes = "Camo Hoodie.png"; --233
SELECT count(rowid) FROM images WHERE clothes = "Chef Jacket.png"; --66
SELECT count(rowid) FROM images WHERE clothes = "Denim Shirt.png"; --329
SELECT count(rowid) FROM images WHERE clothes = "Dracula Cape.png"; --251
SELECT count(rowid) FROM images WHERE clothes = "Goku Uniform.png"; --91
SELECT count(rowid) FROM images WHERE clothes = "Green Shirt.png"; --521
SELECT count(rowid) FROM images WHERE clothes = "Gucci Shirt.png"; --66
SELECT count(rowid) FROM images WHERE clothes = "Hi-Vis Vest.png"; --110
SELECT count(rowid) FROM images WHERE clothes = "Jersey.png"; --210
SELECT count(rowid) FROM images WHERE clothes = "Kimono.png"; --66
SELECT count(rowid) FROM images WHERE clothes = "Letterman Jacket.png"; --190
SELECT count(rowid) FROM images WHERE clothes = "Mustard Hoodie.png"; --346
SELECT count(rowid) FROM images WHERE clothes = "Naked.png"; --269
SELECT count(rowid) FROM images WHERE clothes = "Navy Singlet.png"; --165
SELECT count(rowid) FROM images WHERE clothes = "Piccolo Uniform.png"; --90
SELECT count(rowid) FROM images WHERE clothes = "Pink Hoodie.png"; --442
SELECT count(rowid) FROM images WHERE clothes = "Puffer Jacket.png"; --145
SELECT count(rowid) FROM images WHERE clothes = "Pup Only Shirt.png"; --90
SELECT count(rowid) FROM images WHERE clothes = "Red Hawaiian.png"; --300
SELECT count(rowid) FROM images WHERE clothes = "Red Sweater.png"; --567
SELECT count(rowid) FROM images WHERE clothes = "Skull Tank.png"; --165
SELECT count(rowid) FROM images WHERE clothes = "Trainer Shirt.png"; --85
SELECT count(rowid) FROM images WHERE clothes = "Tuxedo.png"; --160
SELECT count(rowid) FROM images WHERE clothes = "Vegeta Uniform.png"; --90
SELECT count(rowid) FROM images WHERE clothes = "White Singlet.png"; --233
SELECT count(rowid) FROM images WHERE clothes = "Yellow Hawaiian.png"; --275
 */