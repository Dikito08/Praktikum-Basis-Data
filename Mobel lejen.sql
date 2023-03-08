CREATE TABLE `role` (
  `id_role` integer PRIMARY KEY,
  `jenis` varchar(255)
);

CREATE TABLE `hero` (
  `id_hero` integer PRIMARY KEY,
  `nama` varchar(255),
  `asal` varchar(255),
  `id_role` integer,
  `id_skill` integer,
  `harga` integer
);

CREATE TABLE `skill` (
  `id_skill` integer PRIMARY KEY,
  `nama` varchar(255),
  `damage` integer,
  `mana` integer
);

ALTER TABLE `hero` ADD FOREIGN KEY (`id_skill`) REFERENCES `skill` (`id_skill`);

ALTER TABLE `role` ADD FOREIGN KEY (`id_role`) REFERENCES `hero` (`id_role`);
