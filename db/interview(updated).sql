-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2017 at 12:07 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interview`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `q_id` int(20) NOT NULL,
  `code` varchar(500) DEFAULT NULL,
  `topic` varchar(20) DEFAULT NULL,
  `discription` varchar(500) NOT NULL,
  `a` varchar(200) NOT NULL,
  `b` varchar(200) NOT NULL,
  `c` varchar(200) NOT NULL,
  `d` varchar(200) NOT NULL,
  `ans` char(2) NOT NULL,
  `company` varchar(20) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `explanation` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`q_id`, `code`, `topic`, `discription`, `a`, `b`, `c`, `d`, `ans`, `company`, `year`, `explanation`) VALUES
(1, NULL, 'C', 'In C, if you pass an array as an argument to a function, what actually gets passed?', ' Value of elements in array', 'First element of the array', 'Base address of the array', 'Address of the last element of array', 'c', 'Amazon', NULL, NULL),
(2, '#include<studio.h>\r\nint main()\r\n{\r\n            viod fun( int, int[]);\r\n            int arr[] = {1, 2, 3, 4};\r\n            int i;\r\n            fun (4, arr);\r\n            for (i=0; i<4; i++)          \r\n                         printf(“%d,”, arr[i]);\r\n            return 0;\r\n}\r\n\r\nvoid fun(int n, int arr[])\r\n{\r\n            int *p=0;\r\n            int i=0;\r\n            while(i++ < n)\r\n                        p = &arr[i];\r\n            *p=0;\r\n}', 'C', 'What will be the output of the program?', '2, 3, 4, 5', '1, 2, 3, 4', '0, 1, 2, 3', '3, 2, 1, 0', 'b', 'Amazon', NULL, NULL),
(3, '#include<stdio.h>\nint main()\n{\n            Int arr[]={2, 3, 4, 1, 6};\n            printf(“%u, %u, %u\\n”, arr, &arr[0], &arr);\n            return 0;\n}', 'C', 'What will be the output of the program if the array begins 1200 in memory?\r\n', '1200, 1202, 1204       ', '1200, 1200, 1200', '1200, 1204, 1208 ', '1200, 1202, 1200\r\n', 'b', 'Amazon', NULL, NULL),
(4, '1:         The array int num [26]; can store 26 elements.\n\n2:         The expression num [1] designates the very first element in the array.\n\n3:         It is necessary to initialize the array at the time of declaration.\n\n4:         The declaration num [SIZE] is allowed if SIZE is a macro.', 'C', 'Which of the following statements are correct about an array?\r\n', '1', '1,4', '2,3', '2,4', 'b', 'Amazon', NULL, NULL),
(5, NULL, 'C', 'Which of the following function is used to find the first occurrence of a given string in another string?', 'strchr()', 'strrchr()', 'strstr()', 'strnset()', 'c', 'Amazon', NULL, NULL),
(6, NULL, 'C', 'Which of the following function is correct that finds the length of a string?', 'int xstrlen(char *s)\r\n\r\n                        {\r\n\r\n                        int length=0:\r\n\r\n                        while(*s!=’\\0’)\r\n\r\n                        {          length++; s++; }\r\n\r\n        ', 'int xsrrlen(char s)\r\n\r\n            {\r\n\r\n            int length=0;\r\n\r\n            while(*s!=’\\0’)\r\n\r\n            length++; s++;\r\n\r\n            return (length);\r\n\r\n            }', 'int xstrlen(char *s)\r\n\r\n                        {\r\n\r\n                        int length=0;\r\n\r\n                        while(*s!=’\\0’)\r\n\r\n                        length++\r\n\r\n                        ret', 'None of these', 'a', 'Amazon', NULL, NULL),
(7, '#include<stdio.h>\nInt main()\n{\n            Printf(“%d, %d, %d”, sizeof(3.0f), sizeof(‘3’)), sizeof(3.0);\n            Return 0;\n}', 'C', 'What will be the output of the program in 16-bit platform (Turbo C under DOS)?', '8, 1, 4 ', '4, 2, 8', '4, 2, 4', '10, 3, 4', 'b', 'Amazon', NULL, NULL),
(8, '#include<stdio.h>\nint main()\n{\n            Int arr[]={2, 3, 4, 1, 6};\n            printf(“%u, %u, %u\\n”, arr, &arr[0], &arr);\n            return 0;\n}', 'C', 'What will be the output of the program if the array begins 1200 in memory?\r\n', '1200, 1202, 1204       ', '1200, 1200, 1200', '1200, 1204, 1208 ', '1200, 1202, 1200\r\n', 'b', 'Amazon', NULL, NULL),
(9, '1:         The array int num [26]; can store 26 elements.\r\n\r\n2:         The expression num [1] designates the very first element in the array.\r\n\r\n3:         It is necessary to initialize the array at the time of declaration.\r\n\r\n4:         The declaration num [SIZE] is allowed if SIZE is a macro.', 'C', 'which of the following statements are correct about an array?', '1', '1,4', '2,3', '2,4', 'b', 'Amazon', NULL, NULL),
(10, '1:         A string is a collection of characters terminated by \'\\0\'.\r\n\r\n2:         The format specifier %s is used to print a string.\r\n\r\n3:         The length of the string can be obtained by strlen().\r\n\r\n4:         The pointer CANNOT work on string.', 'C', 'Which of the following statements are correct ?', 'A, B ', 'A, B, C', 'B, D', 'C, D', 'b', 'Amazon', NULL, NULL),
(11, '#incluse<stdio.h>\r\nint main()\r\n{\r\n    struct emp\r\n    {\r\n        char name[20];\r\n        float sal;\r\n    };\r\n    struct emp e[10];\r\n    int i;\r\n    for(i=0; i<=9; i++)\r\n        scanf(“%s  %f”’ e[i].name, &e[i].sal);\r\n    return 0;\r\n}', 'C', 'Point out the error in the program?', 'Error: invalid structure member', 'Error: Floating point formats not linked', 'No error', 'None of above', 'b', 'Amazon', NULL, NULL),
(12, NULL, 'C', 'What is the similarity between a structure, union and enumeration?', 'All of them let you define new values\r\n', 'All of them let you define new data types\r\n', 'All of them let you define new pointers', 'All of them let you define new structures\r\n', 'b', 'Amazon', NULL, NULL),
(13, '#include<stdio.h>\nint main()\n{\n    enum days {MON=-1, TUE, WED=6, THU, FRI, SAT};\n    printf(\"%d, %d, %d, %d, %d, %d\\n\", MON, TUE, WED, THU, FRI, SAT);\n    return 0;\n}', 'C', 'What will be the output of the program ?\r\n', '-1, 0, 1, 2, 3, 4', '-1, 2, 6, 3, 4, 5', '-1, 0, 6, 2, 3, 4', '-1, 0, 6, 7, 8, 9', 'd', 'Amazon', NULL, NULL),
(14, '#include<stdio.h>\r\n            struct course\r\n            {\r\n                int courseno;\r\n                char coursename[25];\r\n            };\r\nint main()\r\n{\r\n            struct course c[] = { {102, “Java”},{ 103, “PHP”},{104, “DotNet”}};\r\n            printf(“%d”, c[1].courseno);\r\n            printf(“%s\\m”, (*(c+2)).coursename);\r\n}', 'C', 'What will be the output of the program ?\r\n', '103 Dotnet', '102 Java', '103 PHP', '104 DotNet', 'a', 'Amazon', NULL, NULL),
(15, '#include<stdio.h>\r\n\r\ngets replaced by the contents of the file stdio.h\r\n', 'C', 'In which stage the following code\r\n\r\n', 'During editing', 'During linking', 'During execution', 'During preprocessing', 'd', 'Amazon', NULL, NULL),
(16, '#incluse<stdio.h>\nint main()\n{\n            int I;\n            #if A\n                 printf(“Enter any number:”);\n                 scanf(“%d”, &i);\n            #elif B\n                 printf(“ The number is odd”);\n            return 0;\n}', 'C', 'Point out the error in the program\r\n\r\n \r\n\r\n', 'Error: unexpected end of file because there is no matching #endif\r\n', 'The number is odd', 'Garbage values', 'None of above', 'a', 'Amazon', NULL, NULL),
(17, NULL, 'C', 'What are the different types of real data type in C?', 'float, double ', 'short int, double, long int\r\n', 'float, double, long double', 'double, long int, float', 'c', 'Amazon', NULL, NULL),
(18, '#include<stdio.h>\nInt main()\n{\n            printf(“%f\\n”,  lof(36.0));\n            return 0;\n}', 'C', 'Which statement will you add in the following program to work it correctly?\r\n', '#include<conio.h>  ', '#include<math.h>', '#include<stdlib.h>', '#include<dos.h>', 'b', 'Amazon', NULL, NULL),
(19, 'int *ptr[30];', 'C', 'What do the following declaration signify?\r\n', 'ptr is a pointer to an array of 30 integer pointers.', 'ptr is a array of 30 pointers to integers.', ' ptr is a array of 30 integer pointers.', 'ptr is a array 30 pointers', 'b', 'Amazon', NULL, NULL),
(20, '#include\r\nvoid main()\r\n{\r\nint I=3,*j,**k; j=&I; k=&j;\r\nprintf(\"%d%d%d\",*j,**k,*(*k));\r\n}', 'C', 'What is the output of the above program code?', '444', '000', '333', '433', 'c', 'Flipkart', 2016, NULL),
(21, '#include\r\nvoid main()\r\n{\r\nint s=0;\r\nwhile(s++<10)\r\n{\r\nif(s<4 && s<9)\r\ncontinue;\r\nprintf(\"\\n%d\\t\",s);\r\n}\r\n}', 'C', 'What is the output of the following code?', '1 2 3 4 5 6 7 8 9 ', '1 2 3 10', '4 5 6 7 8 9 10', '4 5 6 7 8 9', 'c', 'Flipkart', 2016, NULL),
(22, NULL, NULL, 'Gavaskar\'s average in his first 50 innings was 50. After the 51st innings, his average was 51. How many runs did he score in his 51st innings.\r\n(supposing that he lost his wicket in his 51st innings)?', '106', '103', '101', 'none of these', 'c', 'Flipkart', 2016, 'Total score after 50 innings = 50*50 = 2500. Total score after 51 innings = 51*51 = 2601. So, runs made\r\nin the 51st innings = 2601-2500 = 101.\r\nIf he had not lost his wicket in his 51st innings, he would have scored an unbeaten 50 in his 51st innings.'),
(23, NULL, NULL, 'All men are vertebrates.Some mammals are vertebrates. Which of the following conclusions drawn from the above statement is correct ?', ' All men are mammals. ', 'All mammals are men. ', 'Some vertebrates are mammals.', 'None', 'a', 'Flipkart', 2016, 'Some vertebrates are mammals.'),
(24, 'main( )\r\n{\r\nint x,y, z;\r\nx=2;\r\ny=5;\r\nz= x+++y;\r\nprintf(\"%d %d %d\", x, y z);\r\n}', 'c', 'Find the output of the given code?', '3,5,7', '2,6,8', '3,5,8', '2,6,7', 'a', 'Flipkart', 2016, 'This statement can be broken to z = x + y; (i.e z = 7 ) x = x + 1; (i.e x = 3 ) Hence Correct Answer is : 3,5,7'),
(25, 'main( )\r\n{\r\nunsigned int i=3;\r\nwhile( i >=0)\r\nprintf( \"%d\", i--);\r\n}', 'C', 'How many times will the printf statement be executed?', '0', '3', 'Infinite', '4', 'c', 'Flipkart', 2016, '\'i\' is an unsigned integer and it will not decrement below \'0\' and hence end up in an infinite loop.'),
(26, NULL, 'Computer Network', 'In Open Systems Interconnect model, which of the following layers is responsible for terminal emulation ?', 'Transport Layer', 'Data link layer', 'Network layer', 'Physical layer', 'd', 'Flipkart', 2016, NULL),
(27, NULL, 'Computer Network', 'Which Layer establishes, manages and terminates connections between local and remote applications ?', 'Physical Layer', 'Session Layer', 'Data LInk Layer', 'Application Layer', 'b', 'Flipkart', 2016, NULL),
(28, NULL, 'Database', 'A top-to-bottom relationship among the items in a database is established by a', 'hierarchical schema ', 'network schema ', 'relational schema ', 'all of the above', 'a', 'Flipkart', 2016, NULL),
(29, NULL, 'Database', 'If a piece of data is stored in two places in the database, then', 'storage space is wasted', 'changing the data in one spot will cause data inconsistency', 'it can be more easily accessed', 'both a and b', 'd', 'Flipkart', 2016, NULL),
(30, NULL, 'Puzzles', 'A big cube painted with yellow colour in all sides. if you cut it into 1000 cubes with same dimension. than how many cubes were without painted anyside. explain it?', '12', '15', '08', '10', 'a', 'Ebay', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

CREATE TABLE `sign_up` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sign_up`
--

INSERT INTO `sign_up` (`name`, `email`, `pass`, `gender`) VALUES
('Nav', 'djkdh@gmail.com', 'asdfgh', 'Male'),
('mishika', 'aaaa@gmail.com', 'aa', 'Female'),
('sdfdz', 'xvxcvcx@sds.vbv', 'vxbvvxc', 'Male'),
('ji', 'ji@a.c', 'as', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_signup`
--

CREATE TABLE `teacher_signup` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_signup`
--

INSERT INTO `teacher_signup` (`name`, `pass`, `email`) VALUES
('zcn znc ', 'sdkjnsj', 'cmxb@ndn.ndj'),
('ds cs dcn', 'cjsdnckjs', 'jscx@bsjd.csnk'),
('sdfds', 'sdfsdf', 'sdfnk@dsknL.vsdm');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(50) NOT NULL,
  `topic` varchar(50) DEFAULT NULL,
  `progress` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `name` text NOT NULL,
  `image_link` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`q_id`),
  ADD KEY `topic` (`topic`),
  ADD KEY `topic_2` (`topic`);

--
-- Indexes for table `teacher_signup`
--
ALTER TABLE `teacher_signup`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `q_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
