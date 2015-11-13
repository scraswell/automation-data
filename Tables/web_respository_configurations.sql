# dependencies::Tables/web_repositories.sql

use `craswell_automation_data`;

create table if not exists `web_repository_configurations` (
    `id` int unsigned not null auto_increment,
    `address` varchar(255) not null,
    `username` varchar(255) not null,
    `password` varchar(255) not null
) engine = InnoDB;


