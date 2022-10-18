
CREATE TABLE IF NOT EXISTS `trains` (
  `t_no` decimal(5,0) NOT NULL,
  `t_name` varchar(30) DEFAULT NULL,
  `t_source` varchar(30) DEFAULT NULL,
  `t_destination` varchar(30) DEFAULT NULL,
  `t_type` varchar(30) DEFAULT NULL,
  `t_duration` int(11) DEFAULT NULL,
  PRIMARY KEY (`t_no`)
) ;

INSERT INTO `trains` (`t_no`, `t_name`, `t_source`, `t_destination`, `t_type`,  `t_duration`) VALUES
(4971, 'garibrath', 'Udaipurr', 'Jammu Tawi', 'Express',  20),
(12284, 'duronto', 'Mumbai central', 'Ernakulum', 'AC superfast', 24),
(12859, 'geetanjali', 'CST', 'Kolkata', 'express', 'On time', 500, 25),
(12951, 'rajdhani', 'Mumbai Central', 'Delhi', 'Superfast', 15),
(16205, 'mysoreexp', 'Talguppa', 'Mysore JN', 'Express', 21);



CREATE TABLE IF NOT EXISTS `passengers` (
  `p_id` int(30) NOT NULL AUTO_INCREMENT,
  `p_fname` varchar(30) DEFAULT NULL,
  `p_lname` varchar(30) DEFAULT NULL,
  `p_contact` varchar(20) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`p_id`),
  UNIQUE KEY `p_id` (`p_id`)
);

INSERT INTO `passengers` (`p_id`, `p_fname`, `p_lname`, `p_contact`,  `email`, `password`) VALUES
(1, 'Rahul', 'Dravid', '9090909090',  'rahul@dravid.com', '123123123'),
(2, 'Rahul', 'Dravid',  '1010101010',  'qwe@w.cc', '123123123'),
(4, 'qwe', 'qwe',  '1010101010',  '123@123.cc', '123123123'),
(5, 'abc', 'sbc', '9090909090',  'abc@g.cc', '123123123');



