BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "users" (
	"id"	INTEGER,
	"username"	TEXT NOT NULL,
	"hash"	TEXT NOT NULL,
	"cash"	NUMERIC NOT NULL DEFAULT 10000.00,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "stockUsers" (
	"id_stockes"	INTEGER NOT NULL,
	"symbol"	TEXT NOT NULL,
	"name"	TEXT NOT NULL,
	"shares"	INTEGER NOT NULL,
	"history_shares"	INTEGER,
	"price"	INTEGER NOT NULL,
	"total"	NUMERIC NOT NULL,
	"type"	TEXT NOT NULL,
	"data"	TEXT,
	"id_user"	INTEGER,
	FOREIGN KEY("id_user") REFERENCES "users"("id") ON UPDATE CASCADE,
	PRIMARY KEY("id_stockes" AUTOINCREMENT)
);
INSERT INTO "users" VALUES (1,'tales','pbkdf2:sha256:260000$q0xIuIGaf7Zkvk6B$f78df26b2d5bdc58a0f979308f1e848def4745038cab4db2c40569ffbb5b87dd',9285.85);
INSERT INTO "users" VALUES (2,'talesJardim','pbkdf2:sha256:260000$ekNCZb3BP0aHJslI$8f8a2d5ce08cb2ddaa26e5671843705646a5661326ea0650971694a437e225a6',9428.68);
INSERT INTO "stockUsers" VALUES (2,'AAPL','Apple Inc',5,10,142.83,1428.3,'BUY','2021-09-29 23:33:25.924795',1);
INSERT INTO "stockUsers" VALUES (3,'AAPL','Apple Inc',-5,-5,142.83,714.15,'SELL','2021-09-29 23:33:30.985863',1);
INSERT INTO "stockUsers" VALUES (4,'AAPL','Apple Inc',0,12,142.83,1713.96,'BUY','2021-09-30 00:25:53.565225',2);
INSERT INTO "stockUsers" VALUES (5,'AAPL','Apple Inc',0,6,142.83,856.98,'BUY','2021-09-30 00:25:59.871633',2);
INSERT INTO "stockUsers" VALUES (6,'AAPL','Apple Inc',-15,-15,142.83,428.49,'SELL','2021-09-30 00:26:06.516776',2);
INSERT INTO "stockUsers" VALUES (7,'NFLX','NetFlix Inc',0,10,599.06,5990.6,'BUY','2021-09-30 00:26:14.945646',2);
INSERT INTO "stockUsers" VALUES (8,'NFLX','NetFlix Inc',-10,-10,599.06,5990.6,'SELL','2021-09-30 00:26:23.127508',2);
INSERT INTO "stockUsers" VALUES (9,'AAPL','Apple Inc',-3,-3,142.83,428.49,'SELL','2021-09-30 00:26:36.365718',2);
INSERT INTO "stockUsers" VALUES (10,'AAPL','Apple Inc',4,12,142.83,1713.96,'BUY','2021-09-30 00:37:32.960246',2);
INSERT INTO "stockUsers" VALUES (11,'AAPL','Apple Inc',0,0,142.83,0,'SELL','2021-09-30 00:37:48.301477',2);
INSERT INTO "stockUsers" VALUES (12,'AAPL','Apple Inc',-8,-8,142.83,1142.64,'SELL','2021-09-30 00:37:57.607525',2);
CREATE UNIQUE INDEX IF NOT EXISTS "username" ON "users" (
	"username"
);
COMMIT;
