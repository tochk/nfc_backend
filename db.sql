CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `keyword` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `startTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `endTime` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `tagId` varchar(100) DEFAULT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `departmentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tagId` (`tagId`);


ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
