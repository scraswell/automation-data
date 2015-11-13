# dependencies::Tables/accounts.sql

use `craswell_automation_data`;

create table if not exists `transactions` (
    `id` int unsigned not null auto_increment,
    `timestamp` datetime not null,
    `account_id` int unsigned,
    `subject` varchar(255) not null,
    `amount` float not null,
    constraint `pk_transactions_id` primary key (`id`),
    constraint `fk_transactions_account_id` foreign key (`account_id`) references `accounts` (`id`)
) engine = InnoDB;

