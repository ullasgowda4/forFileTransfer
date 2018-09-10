CREATE TABLE `sessions` (
  `sess_id` varchar(128) COLLATE utf8_bin NOT NULL,
  `sess_data` blob NOT NULL,
  `sess_time` int(10) UNSIGNED NOT NULL,
  `sess_lifetime` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
