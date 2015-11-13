# dependencies::create_database.sql

use `craswell_automation_data`;

create table if not exists `database_version` (
	`version` varchar(255) not null
);

