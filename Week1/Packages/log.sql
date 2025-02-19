
-- *** The Lost Letter ***
SELECT * FROM "scans" WHERE "package_id" = (SELECT "id" FROM "packages" WHERE "from_address_id" = (  SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue') AND "to_address_id" = (  SELECT "id" FROM "addresses" WHERE "address" LIKE '2 Fin%'));

-- *** The Devious Delivery ***
SELECT * FROM "addresses" WHERE id = (SELECT "address_id" FROM "scans" WHERE "package_id" = (SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL) AND "action" = 'Drop');
SELECT * FROM "packages" WHERE "from_address_id" IS NULL;

-- *** The Forgotten Gift ***
SELECT * FROM "packages" WHERE "from_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street') AND "to_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = '728 Maple Place');

SELECT "name" FROM "drivers" WHERE "id" = (SELECT driver_id FROM "scans" WHERE "package_id" = (SELECT "id" FROM "packages" WHERE "from_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street') AND "to_address_id" = (SELECT "id" FROM "addresses" WHERE "address" = '728 Maple Place')) ORDER BY "timestamp" DESC LIMIT 1);
