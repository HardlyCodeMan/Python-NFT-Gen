--Type this into terminal to load sqlite
--sqlite3 poundpups.db
 
CREATE TABLE backgrounds(
   name TEXT PRIMARY KEY NOT NULL,
   amount INT
);
 
INSERT INTO backgrounds VALUES ("Aqua.png", 1751);
INSERT INTO backgrounds VALUES ("Full Moon.png", 33);
INSERT INTO backgrounds VALUES ("Light Grey.png", 2000);
INSERT INTO backgrounds VALUES ("Purple.png", 1113);
INSERT INTO backgrounds VALUES ("Underwater.png", 34);
INSERT INTO backgrounds VALUES ("Yellow.png", 1700);
 
SELECT * FROM backgrounds;
 
CREATE TABLE furs(
   name TEXT PRIMARY KEY NOT NULL,
   amount INT
);
 
INSERT INTO furs VALUES ("Brown.png", 2119);
INSERT INTO furs VALUES ("Gold.png", 50);
INSERT INTO furs VALUES ("Grey.png", 2083);
INSERT INTO furs VALUES ("Ice.png", 100);
INSERT INTO furs VALUES ("Neon Green.png", 250);
INSERT INTO furs VALUES ("Pink.png", 1049);
INSERT INTO furs VALUES ("Purple.png", 980);
 
SELECT * FROM furs;
 
CREATE TABLE clothes(
   name TEXT PRIMARY KEY NOT NULL,
   amount INT
);
 
INSERT INTO clothes VALUES ("Black Hoodie.png", 505);
INSERT INTO clothes VALUES ("Blue Sweater.png", 571);
INSERT INTO clothes VALUES ("Camo Hoodie.png", 233);
INSERT INTO clothes VALUES ("Chef Jacket.png", 66);
INSERT INTO clothes VALUES ("Denim Shirt.png", 329);
INSERT INTO clothes VALUES ("Dracula Cape.png", 251);
INSERT INTO clothes VALUES ("Goku Uniform.png", 91);
INSERT INTO clothes VALUES ("Green Shirt.png", 521);
INSERT INTO clothes VALUES ("Gucci Shirt.png", 66);
INSERT INTO clothes VALUES ("Hi-Vis Vest.png", 110);
INSERT INTO clothes VALUES ("Jersey.png", 210);
INSERT INTO clothes VALUES ("Kimono.png", 66);
INSERT INTO clothes VALUES ("Letterman Jacket.png", 190);
INSERT INTO clothes VALUES ("Mustard Hoodie.png", 346);
INSERT INTO clothes VALUES ("Naked.png", 269);
INSERT INTO clothes VALUES ("Navy Singlet.png", 165);
INSERT INTO clothes VALUES ("Piccolo Uniform.png", 90);
INSERT INTO clothes VALUES ("Pink Hoodie.png", 442);
INSERT INTO clothes VALUES ("Puffer Jacket.png", 145);
INSERT INTO clothes VALUES ("Pup Only Shirt.png", 90);
INSERT INTO clothes VALUES ("Red Hawaiian.png", 300);
INSERT INTO clothes VALUES ("Red Sweater.png", 567);
INSERT INTO clothes VALUES ("Skull Tank.png", 165);
INSERT INTO clothes VALUES ("Trainer Shirt.png", 85);
INSERT INTO clothes VALUES ("Tuxedo.png", 160);
INSERT INTO clothes VALUES ("Vegeta Uniform.png", 90);
INSERT INTO clothes VALUES ("White Singlet.png", 233);
INSERT INTO clothes VALUES ("Yellow Hawaiian.png", 275);
 
SELECT * FROM clothes;
 
CREATE TABLE eyes(
   name TEXT PRIMARY KEY NOT NULL,
   amount INT
);
 
INSERT INTO eyes VALUES ("Angry.png", 661);
INSERT INTO eyes VALUES ("Anime.png", 85);
INSERT INTO eyes VALUES ("Black Eye.png", 296);
INSERT INTO eyes VALUES ("Crosses.png", 710);
INSERT INTO eyes VALUES ("Happy.png", 699);
INSERT INTO eyes VALUES ("Open.png", 1150);
INSERT INTO eyes VALUES ("Pixel.png", 140);
INSERT INTO eyes VALUES ("Squining.png", 850);
INSERT INTO eyes VALUES ("Stoner.png", 598);
INSERT INTO eyes VALUES ("Tired.png", 803);
INSERT INTO eyes VALUES ("Worried.png", 639);
 
SELECT * FROM eyes;
 
CREATE TABLE accessories(
   name TEXT PRIMARY KEY NOT NULL,
   amount INT
);
 
INSERT INTO accessories VALUES ("3D Glasses.png", 75);
INSERT INTO accessories VALUES ("Balaclava.png", 36);
INSERT INTO accessories VALUES ("Baseball Bat.png", 500);
INSERT INTO accessories VALUES ("Black Shades.png", 488);
INSERT INTO accessories VALUES ("Chef Knife.png", 510);
INSERT INTO accessories VALUES ("Cobie Sunnies.png", 33);
INSERT INTO accessories VALUES ("DBZ Scouter.png", 66);
INSERT INTO accessories VALUES ("Eye Patch.png", 530);
INSERT INTO accessories VALUES ("Face Tattoo.png", 77);
INSERT INTO accessories VALUES ("Gold Chains.png", 600);
INSERT INTO accessories VALUES ("None.png", 2165);
INSERT INTO accessories VALUES ("Pit Vipers.png", 476);
INSERT INTO accessories VALUES ("Squirtle Squad Sunnies.png", 555);
INSERT INTO accessories VALUES ("Wand.png", 520);
 
SELECT * FROM accessories;
 
CREATE TABLE noses(
   name TEXT PRIMARY KEY NOT NULL,
   amount INT
);
 
INSERT INTO noses VALUES ("Ball Gagv.png", 140);
INSERT INTO noses VALUES ("Blue.png", 253);
INSERT INTO noses VALUES ("Ciggie.png", 60);
INSERT INTO noses VALUES ("Face Mask.png", 66);
INSERT INTO noses VALUES ("Grey.png", 1202);
INSERT INTO noses VALUES ("Orange.png", 1119);
INSERT INTO noses VALUES ("Pink.png", 1206);
INSERT INTO noses VALUES ("Pringles Moustache.png", 80);
INSERT INTO noses VALUES ("Red.png", 1170);
INSERT INTO noses VALUES ("Tongue.png", 131);
INSERT INTO noses VALUES ("Yellow.png", 1204);
 
SELECT * FROM noses;
 
CREATE TABLE hats(
   name TEXT PRIMARY KEY NOT NULL,
   amount INT
);
 
INSERT INTO hats VALUES ("Air Helmet.png", 57);
INSERT INTO hats VALUES ("Black Hat.png", 322);
INSERT INTO hats VALUES ("Blue Bandana.png", 170);
INSERT INTO hats VALUES ("Blue Beanie.png", 307);
INSERT INTO hats VALUES ("Blue Hat.png", 349);
INSERT INTO hats VALUES ("Blue Mohawk.png", 174);
INSERT INTO hats VALUES ("Blue Runscape Hat.png", 152);
INSERT INTO hats VALUES ("Chef Hat.png", 150);
INSERT INTO hats VALUES ("Cork Hat.png", 421);
INSERT INTO hats VALUES ("Crown.png", 22);
INSERT INTO hats VALUES ("Devil Horns.png", 38);
INSERT INTO hats VALUES ("Green Beanie.png", 309);
INSERT INTO hats VALUES ("Green Mohawk.png", 209);
INSERT INTO hats VALUES ("Gucci Hat.png", 24);
INSERT INTO hats VALUES ("Halo.png", 73);
INSERT INTO hats VALUES ("Knife in Head.png", 53);
INSERT INTO hats VALUES ("Long Blonde Hair.png", 269);
INSERT INTO hats VALUES ("Long Brown Hair.png", 269);
INSERT INTO hats VALUES ("Maccas Hat.png", 96);
INSERT INTO hats VALUES ("None.png", 1327);
INSERT INTO hats VALUES ("Purple Runescape Hat.png", 161);
INSERT INTO hats VALUES ("Red Bandana.png", 151);
INSERT INTO hats VALUES ("Red Mohawk.png", 172);
INSERT INTO hats VALUES ("Short Blonde Hair.png", 213);
INSERT INTO hats VALUES ("Short Brown Hair.png", 222);
INSERT INTO hats VALUES ("Skull Beanie.png", 307);
INSERT INTO hats VALUES ("Sorting Hat.png", 136);
INSERT INTO hats VALUES ("Top Hat.png", 84);
INSERT INTO hats VALUES ("Trainer Cap.png", 87);
INSERT INTO hats VALUES ("Yellow Beanie.png", 307);
 
SELECT * FROM hats;
 