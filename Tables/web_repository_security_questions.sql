# dependencies::Tables/web_repository_configurations.sql

use `craswell_automation_data`;

create table if not exists `web_repository_security_questions` (
    `id` int unsigned not null auto_increment,
    `web_repository_configuration_id` int unsigned,
    `question` varchar(255) not null,
    `answer` varchar(255) not null,
    constraint `pk_web_repository_security_questions_id` primary key (`id`),
    constraint `fk_security_questions_repository_configuration_id`
        foreign key (`web_repository_configuration_id`)
        references `web_repository_configurations` (`id`)
) engine = InnoDB;

