CREATE TABLE `people-ware`.`dictionary_type` (
  `code` VARCHAR(20) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(225) NULL,
  PRIMARY KEY (`code`));

CREATE TABLE `people-ware`.`dictionary_value` (
  `id` CHAR(32) NOT NULL DEFAULT 'UUID',
  `dic_value` VARCHAR(45) NULL,
  `value` VARCHAR(45) NULL,
  `orderNo` INT NULL,
  `typeCode` VARCHAR(20) NULL,
  PRIMARY KEY (`id`),
  INDEX `code_idx` (`typeCode` ASC),
  CONSTRAINT `code`
    FOREIGN KEY (`typeCode`)
    REFERENCES `people-ware`.`dictionary_type` (`code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO `people-ware`.`dictionary_type` (`code`, `name`, `description`) VALUES ('salary', 'salary_range', '0-15000');
INSERT INTO `people-ware`.`dictionary_type` (`code`, `name`, `description`) VALUES ('time', 'work_time', 'full/part/both');
INSERT INTO `people-ware`.`dictionary_type` (`code`, `name`) VALUES ('degree', 'academic_degree');
INSERT INTO `people-ware`.`dictionary_type` (`code`, `name`) VALUES ('technique', 'technique_skill');

INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('2b29f270-a0a9-11e8-98d0-529269fb', 'level1', '0-5000', '1', 'salary');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('2b29f72a-a0a9-11e8-98d0-529269fb', 'level2', '5000-6000', '2', 'salary');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('2b29f9dc-a0a9-11e8-98d0-529269fb', 'level3', '6000-7000', '3', 'salary');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('2b29fc84-a0a9-11e8-98d0-529269fb', 'level4', '7000-8000', '4', 'salary');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('2b2a0382-a0a9-11e8-98d0-529269fb', 'level5', '8000-9000', '5', 'salary');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('2b2a0652-a0a9-11e8-98d0-529269fb', 'level6', '9000-10000', '6', 'salary');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('2b2a08c8-a0a9-11e8-98d0-529269fb', 'level7', '10000-15000', '7', 'salary');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('2b2a0b2a-a0a9-11e8-98d0-529269fb', 'full', 'full-time', '1', 'time');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('2b2a0da0-a0a9-11e8-98d0-529269fb', 'part', 'part-time', '2', 'time');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('2b2a1494-a0a9-11e8-98d0-529269fb', 'both', 'both', '3', 'time');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('ced1db22-a0a9-11e8-98d0-529269fb', 'level1', 'high-school', '1', 'degree');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('ced1df3c-a0a9-11e8-98d0-529269fb', 'level2', 'bachelor', '2', 'degree');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('ced1e586-a0a9-11e8-98d0-529269fb', 'level3', 'master', '3', 'degree');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('ced1e81a-a0a9-11e8-98d0-529269fb', 'level4', 'doctor', '4', 'degree');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('ced1eaa4-a0a9-11e8-98d0-529269fb', 'level5', 'post-doctor', '5', 'degree');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('ced1ecfc-a0a9-11e8-98d0-529269fb', 'level6', 'other', '6', 'degree');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('ced1efea-a0a9-11e8-98d0-529269fb', '1', 'Java', '1', 'technique');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('ced1f5a8-a0a9-11e8-98d0-529269fb', '2', 'Bootstrap', '2', 'technique');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('ced1f81e-a0a9-11e8-98d0-529269fb', '3', 'SQL', '3', 'technique');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('ced1fab2-a0a9-11e8-98d0-529269fb', '4', 'JavaScript', '4', 'technique');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('d7b09282-a0aa-11e8-98d0-529269fb', '5', 'Python', '5', 'technique');
INSERT INTO `people-ware`.`dictionary_value` (`id`, `dic_value`, `value`, `orderNo`, `typeCode`) VALUES ('d7b097be-a0aa-11e8-98d0-529269fb', '6', 'Spring', '6', 'technique');
