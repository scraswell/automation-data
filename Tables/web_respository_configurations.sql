use `craswell_automation_data`;

create table if not exists `web_repository_configurations` (
    `id` int unsigned not null auto_increment,
    `address` varchar(255) not null,
    `username` varchar(255) not null,
    `password` varchar(255) not null,
	constraint `pk_web_repository_configurations_id` primary key (`id`)
) engine = InnoDB;


