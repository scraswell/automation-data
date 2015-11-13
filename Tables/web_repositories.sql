# dependencies::create_database.sql

use `craswell_automation_data`;

create table if not exists `web_repositories` (
    `id` int unsigned not null auto_increment,
    `type` int unsigned,
    `name` varchar(255) not null,
    `web_repository_configuration_id` int unsigned,
    constraint `pk_web_repositories_id` primary key (`id`),
    constraint `fk_web_repositories_configuration_id`
        foreign key (`web_repository_configuration_id`)
        references `web_repository_configurations` (`id`)
) engine = InnoDB;

