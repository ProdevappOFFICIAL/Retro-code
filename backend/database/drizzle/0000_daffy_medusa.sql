CREATE TABLE `user` (
    `id` text PRIMARY KEY NOT NULL,
    `name` text NOT NULL,
    `email` text NOT NULL
);

CREATE TABLE `virtualbox` (
    `id` text PRIMARY KEY NOT NULL,
    `name` text NOT NULL,
    `type` text NOT NULL,
    `bucket` text,
    `user_id` text NOT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE UNIQUE INDEX `user_id_unique` ON `user` (`id`);
CREATE UNIQUE INDEX `virtualbox_id_unique` ON `virtualbox` (`id`);
