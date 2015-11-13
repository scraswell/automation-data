# dependencies::create_database.sql

use `craswell_automation_data`;

create table if not exists `accounts` (
	`id` int unsigned not null auto_increment,
    `name` varchar(255) not null,
    `number` varchar(255) not null,
    `balance` float not null,
    constraint `pk_accounts_id` primary key (`id`)
) engine = InnoDB;

