USE ytera_connections;

INSERT INTO `ship_types`
(`name`, `commercial_name`, `description`, `model_release_date`, `engine_type`, `max_speed_kms`, `avg_speed_kms`, `power_source`)
VALUES
( 'lynx 10C 2020', 'lynx 10C', 'Economy class large distance spaceship', '2020-02-12 12:00:00', 'NU612', 130.34, 103.03, 'nuclear'),
( 'lynx 12A 2025', 'lynx 12A', 'Economy class large distance spaceship', '2025-03-05 11:22:16', 'NU837', 167.12, 150.12, 'nuclear'),
( 'Dream chaser KE021_2', 'Dream chaser 2', 'Luxery spaceship for private flights', '2023-10-23 18:00:54', 'S3NU02', 224.99, 180.45, 'solar-nuclear');


INSERT INTO `ships`
(`name`, `ship_type_id`, `build_date`, `first_use_date`, `last_maintenance`, `scob_id`)
VALUES
('CCS Cholimon', 1, '2020-02-12 00:00:00', '2020-02-12 00:00:00', '2026-01-01 03:02:40', null),
('FTLS Sherman', 1, '2020-02-18 00:00:00', '2020-03-18 00:00:00', '2026-01-01 04:01:21', null),
('USS Hermes', 1, '2021-03-12 00:00:00', '2021-03-28 00:00:00', '2026-01-01 05:02:00', null),
('Zajra Yucholl', 2, '2025-03-05 11:22:16', '2023-10-23 18:00:54', '2026-01-02 12:02:40', null),
('Qeexer', 2, '2025-03-05 11:22:16', '2025-03-05 11:22:16', '2026-01-02 12:23:00', null),
('Slofaa', 2, '2025-03-05 11:22:16', '2025-03-06 11:22:16', '2026-01-02 14:12:20', null),
('HMS Narada', 2, '2025-03-05 11:22:16', '2025-03-07 11:22:16', '2026-01-01 03:02:40', null),
('UFS Vigilant', 2, '2025-03-05 11:22:16', '2025-03-08 11:22:16', '2026-01-01 03:02:40', null),
('Zadra Tintissi', 2, '2025-05-12 11:22:16', '2025-05-14 11:22:16', '2026-01-01 03:02:40', null),
('Glenzen', 2, '2025-05-12 11:22:16', '2025-05-14 11:22:16', '2026-01-01 03:02:40', null),
('ISV Panama', 3, '2023-10-23 18:00:54', '2023-10-23 18:00:54', '2026-01-01 03:02:40', null),
('HSV Manticore', 3, '2025-06-23 00:00:00', '2025-07-01 01:10:00', '2026-01-01 03:02:40', null);


INSERT INTO `spaceports`
(`name`, `space_region`,`unified_coordinates`,`local_address`)
VALUES
('YELLOWSTONE US SPACEPORT', 'earth-region', '0329849,87213,9183912,912839123,0.309', 'Grand loop Road 238, Canyon Village, Yellowstone National Park, WY 82190, USA'),
('EUROPE SPACEPORT', 'earth-region', '0329849,87213,9183912,912839139,0.307', 'Untermallebarn 2011, Austria, Europe'),
('MARS ALPHA SPACEPORT', 'mars-region', '0328394,33292,39284023,33088139,0.012', 'Altordas 87, Elev 7, District Pionia'),
('UNITED SPACEPORT HQ', 'solar-union-region','03837624,12000,83972489,9832748139,1.2', 'PLATFORM 002' ),
('FIRST MOON SPACEPORT', 'earth-region', '0329849,87212,9183212,912839139,0.307', 'vidal 97, D8');

/*
INSERT INTO `routes`
(`departure_spaceport_id`, `destination_spaceport_id`, `code` )
VALUES
(1, 3, 'E/US_M1'),
(1, 4, 'E/US_USP1'),
(1, 5, 'E/US_FM'),
(2, 3, 'E/EU_M1'),
(2, 4, 'E/EU_USP1'),
(3, 1, 'M1_E/US'),
(3, 5, 'M1_E/M1'),
(3, 4, 'M1_USP1'),
(4, 1, 'USP1_E/US'),
(4, 2, 'USP1_E/EU'),
(4, 3, 'USP1_M1'),
(4, 5, 'USP1_FM');
*/

INSERT INTO `connections`
(`departure_spaceport_id`, `destination_spaceport_id`, `checkin_time`, `departure_time`, `status`, `ship_id` )
VALUES
/* 1 - 10 */

/* Earth to ... */
( 1, 3, '2026-01-01 09:00:00', '2026-01-01 10:00:00', 'IN_SPACE', 1 ),
( 2, 3, '2026-01-01 11:00:00', '2026-01-01 12:00:00', 'IN_SPACE', 2 ),
( 1, 4, '2026-01-01 12:00:00', '2026-01-01 13:00:00', 'IN_SPACE', 3 ),
( 1, 5, '2026-01-01 15:00:00', '2026-01-01 16:00:00', 'CHECK_IN', 4 ),
( 2, 5, '2026-01-01 15:00:00', '2026-01-01 16:00:00', 'CHECK_IN', 8 ),
( 1, 4, '2026-01-01 18:00:00', '2026-01-01 18:30:00', 'PLANNED', 12),

/* Usp to ... */
( 4, 1, '2026-01-01 09:00:00', '2026-01-01 09:30:00', 'IN_SPACE', 11),

/* Moon to ... */
( 5, 1, '2026-01-01 16:00:00', '2026-01-01 17:00:00', 'PLANNED', 9),

/* Mars to ... */
( 3, 1, '2026-01-01 10:00:00', '2026-01-01 11:00:00', 'IN_SPACE', 10),
( 3, 4, '2026-01-01 17:00:00', '2026-01-01 18:00:00', 'PLANNED', 5);
