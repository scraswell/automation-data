# dependencies::Tables/accounts.sql

use `craswell_automation_data`;

create table if not exists `statements` (
    `id` int unsigned not null auto_increment,
    `timestamp` datetime not null,
    `account_id` int unsigned,
    `account_number` varchar(255) not null,
    `file_name` varchar(255) not null,
    constraint `pk_statements_id` primary key (`id`),
    constraint `fk_statements_account_id` foreign key (`account_id`) references `accounts` (`id`)
) engine = InnoDB;

