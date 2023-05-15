CREATE TABLE IF NOT EXISTS `users` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `username` varchar(50) NOT NULL,
 `email` varchar(50) NOT NULL,
 `password` varchar(50) NOT NULL,
 PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `sponsors` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `username` varchar(50) NOT NULL,
 `email` varchar(50) NOT NULL,
 `password` varchar(50) NOT NULL,
 PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `book` (
	 `id` int(11) NOT NULL AUTO_INCREMENT,
	  `username` varchar(50) NOT NULL,
	 `fname` varchar(50) NOT NULL,
	 `mname` varchar(50) NOT NULL,
	 `lname` varchar(50) NOT NULL,
	 `Mnumber1` int(10) NOT NULL,
	 gender` varchar(50) NOT NULL,
	 `email` varchar(50) NOT NULL,
	 `crmatch` varchar(50) NOT NULL,
	 `no_seat` int(11) NOT NULL,
	 `podium` int(11) NOT NULL,
	PRIMARY KEY (`id`)
);
CREATE TABLE IF NOT EXISTS `feedback`(
	`f_name` varchar(30) not null,
	`l_name` varchar(30) not null,
	`email` varchar(30) not null,
	`experience` varchar(30) not null
);
CREATE TABLE IF NOT EXISTS `admin`(
	admin_id int primary key NOT NULL,
	admin_name varchar(30) NOT NULL,
	admin_password varchar(30) NOT NULL
);