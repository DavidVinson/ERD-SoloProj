CREATE TABLE "player" (
	"pid" serial(3) NOT NULL,
	"player" VARCHAR(40) NOT NULL DEFAULT 'player',
	CONSTRAINT "player_pk" PRIMARY KEY ("pid")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "game" (
	"gid" serial(3) NOT NULL,
	"date" DATETIME NOT NULL,
	"pid" integer NOT NULL,
	"ptid" integer NOT NULL,
	CONSTRAINT "game_pk" PRIMARY KEY ("gid")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "point" (
	"ptid" serial(3) NOT NULL,
	"bingo" integer(1) NOT NULL DEFAULT '1',
	"bango" integer(1) NOT NULL DEFAULT '1',
	"bongo" integer(1) NOT NULL DEFAULT '1',
	CONSTRAINT "point_pk" PRIMARY KEY ("ptid")
) WITH (
  OIDS=FALSE
);




ALTER TABLE "game" ADD CONSTRAINT "game_fk0" FOREIGN KEY ("pid") REFERENCES "player"("pid");
ALTER TABLE "game" ADD CONSTRAINT "game_fk1" FOREIGN KEY ("ptid") REFERENCES "point"("ptid");


