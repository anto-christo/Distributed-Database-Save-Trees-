--
-- Database: `trees`
--

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `people` int(100) NOT NULL,
  `time` time NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`state`, `city`, `address`, `people`, `time`, `date`) VALUES
('maha', 'mum', 'bleh', 12, '00:00:00', '0000-00-00'),
('h', 'h', 'h', 2, '00:00:00', '0000-00-00'),
('l', 'l', 'l', 1, '00:00:00', '0000-00-00'),
('k', 'k', 'k', 2, '00:00:00', '0000-00-00'),
('w', 'w', 'w', 1, '00:00:00', '0000-00-00'),
('a', 'a', 'a', 1, '00:00:00', '0000-00-00'),
('m', 'm', 'w', 2, '05:12:00', '2018-03-02'),
('k', 'k', 'k', 1, '02:02:00', '2001-01-01'),
('', '', '', 0, '00:00:00', '0000-00-00'),
('', '', '', 0, '00:00:00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `addr` varchar(200) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pno` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`addr`, `email`, `pno`) VALUES
('j', 'j', 1),
('we', 'w@gmail.com', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

CREATE TABLE `donate` (
  `bankName` varchar(40) NOT NULL,
  `card` int(50) NOT NULL,
  `amt` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donate`
--

INSERT INTO `donate` (`bankName`, `card`, `amt`) VALUES
('ty', 2, 1),
('hj', 0, 0),
('tt', 22, 22);

-- --------------------------------------------------------

--
-- Table structure for table `kolkata`
--

CREATE TABLE `kolkata` (
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kolkata`
--

INSERT INTO `kolkata` (`name`, `username`, `email`, `state`, `city`, `password`, `address`) VALUES
('ppp', 'ppp', 'ppp@cc', 'ppp', 'Kolkata', 'ppp', 'ppp');

-- --------------------------------------------------------

--
-- Table structure for table `mumbai`
--

CREATE TABLE `mumbai` (
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mumbai`
--

INSERT INTO `mumbai` (`name`, `username`, `email`, `state`, `city`, `password`, `address`) VALUES
('dion', 'dion', 'dion@gmail.com', 'Maha', 'Mumbai', 'plm', 'Mulund'),
('Shyam', 'shyam', 'shyam@gm', 'Maha', 'Mumbai', 'abcd', 'Mumbai');

-- --------------------------------------------------------

--
-- Table structure for table `others`
--

CREATE TABLE `others` (
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `others`
--

INSERT INTO `others` (`name`, `username`, `email`, `state`, `city`, `password`, `address`) VALUES
('Anto', 'anto', 'anto@gmail.com', 'Maha', 'Thane', '1234', 'Thane'),
('ppp', 'ppp', 'ppp@cc', 'ppp', 'Kolkata', 'ppp', 'ppp');

-- --------------------------------------------------------

--
-- Table structure for table `thane`
--

CREATE TABLE `thane` (
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thane`
--

INSERT INTO `thane` (`name`, `username`, `email`, `state`, `city`, `password`, `address`) VALUES
('Anto', 'anto', 'anto@gmail.com', 'Maha', 'Thane', '1234', 'Thane');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`name`, `username`, `email`, `state`, `city`, `password`, `address`) VALUES
('aaaa', 'aaaa', 'aaaa@gmail', 'aaa', 'aaa', '1234', 'aaaa'),
('Anto', 'anto', 'anto@gmail.com', 'Maha', 'Thane', '1234', 'Thane'),
('dion', 'dion', 'dion@gmail.com', 'Maha', 'Mumbai', 'plm', 'Mulund'),
('ijiji', 'hihih', 'ihihi@jjj', 'ihih', 'jkihjhi', '1234', 'ihihi'),
('ppp', 'ppp', 'ppp@cc', 'ppp', 'Kolkata', 'ppp', 'ppp'),
('Shyam', 'shyam', 'shyam@gm', 'Maha', 'Mumbai', 'abcd', 'Mumbai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mumbai`
--
ALTER TABLE `mumbai`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `others`
--
ALTER TABLE `others`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `thane`
--
ALTER TABLE `thane`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
