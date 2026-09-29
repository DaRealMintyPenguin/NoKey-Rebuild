CREATE TABLE IF NOT EXISTS `nokey_storage_boxes` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `box_number` VARCHAR(12) NOT NULL,
    `pin_hash` CHAR(64) NOT NULL,
    `label` VARCHAR(64) NOT NULL,
    `slots` SMALLINT UNSIGNED NOT NULL DEFAULT 100,
    `max_weight` INT UNSIGNED NOT NULL DEFAULT 1000000,
    `created_by` VARCHAR(64) DEFAULT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `active` TINYINT(1) NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uq_nokey_storage_box_number` (`box_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `nokey_vehicle_vouchers` (
    `token` CHAR(32) NOT NULL,
    `model` VARCHAR(64) NOT NULL,
    `vehicle_type` VARCHAR(8) NOT NULL,
    `garage` VARCHAR(64) NOT NULL,
    `status` VARCHAR(16) NOT NULL DEFAULT 'issued',
    `issued_by` VARCHAR(64) DEFAULT NULL,
    `issued_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `redeemed_by` VARCHAR(64) DEFAULT NULL,
    `redeemed_at` TIMESTAMP NULL DEFAULT NULL,
    `vehicle_id` INT DEFAULT NULL,
    PRIMARY KEY (`token`),
    KEY `idx_nokey_vehicle_voucher_status` (`status`),
    KEY `idx_nokey_vehicle_voucher_vehicle_id` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
