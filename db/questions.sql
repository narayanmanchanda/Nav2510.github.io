-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2017 at 10:06 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 */SET NAMES utf8;

--
-- Database: `interview`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `q_id` int(20) NOT NULL,
  `topic` varchar(20) DEFAULT NULL,
  `discription` varchar(500) NOT NULL,
  `a` varchar(200) NOT NULL,
  `b` varchar(200) NOT NULL,
  `c` varchar(200) NOT NULL,
  `d` varchar(200) NOT NULL,
  `ans` char(2) NOT NULL,
  `company` varchar(20) DEFAULT NULL,
  `year` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`q_id`, `topic`, `discription`, `a`, `b`, `c`, `d`, `ans`, `company`, `year`) VALUES
(1, NULL, 'In C, if you pass an array as an argument to a function, what actually gets passed?', ' Value of elements in array', 'First element of the array', 'Base address of the array', 'Address of the last element of array', 'C', 'Amazon', NULL),
(2, NULL, 'What will be the output of the program?\r\n\r\n \r\n\r\n#include<studio.h>\r\n\r\nint main()\r\n\r\n{\r\n\r\n            viod fun( int, int[]);\r\n\r\n            int arr[] = {1, 2, 3, 4};\r\n\r\nint i;\r\n\r\n            fun (4, arr);\r\n\r\nfor (i=0; i<4; i++)\r\n\r\n            printf(“%d,”, arr[i]);\r\n\r\nreturn 0;\r\n\r\n}\r\n\r\nvoid fun(int n, int arr[])\r\n\r\n{\r\n\r\n            int *p=0;\r\n\r\nint i=0;\r\n\r\nwhile(i++ < n)\r\n\r\n            p = &arr[i];\r\n\r\n*p=0;\r\n\r\n}', '2, 3, 4, 5', ' 1, 2, 3, 4', '0,1,2,3', '3,2,1,0', 'B', 'Amazon', NULL),
(3, NULL, 'What will be the output of the program if the array begins 1200 in memory?\r\n\r\n \r\n\r\n#include<stdio.h>\r\n\r\nint main()\r\n\r\n{\r\n\r\n            Int arr[]={2, 3, 4, 1, 6};\r\n\r\n            printf(“%u, %u, %u\\n”, arr, &arr[0], &arr);\r\n\r\n            return 0;\r\n\r\n}', '1200, 1202, 1204       ', '1200, 1200, 1200', '1200, 1204, 1208 ', '1200, 1202, 1200\r\n', 'B', 'Amazon', NULL),
(4, NULL, 'Which of the following statements are correct about an array?\n\n1:         The array int num [26]; can store 26 elements.\n\n2:         The expression num [1] designates the very first element in the array.\n\n3:         It is necessary to initialize the array at the time of declaration.\n\n4:         The declaration num [SIZE] is allowed if SIZE is a macro.', '1', '1,4', '2,3', '2,4', 'B', 'Amazon', NULL),
(5, NULL, 'Which of the following function is used to find the first occurrence of a given string in another string?', 'strchr()', 'strrchr()', 'strstr()', 'strnset()', 'C', 'Amazon', NULL),
(6, NULL, 'Which of the following function is correct that finds the length of a string?', 'int xstrlen(char *s)\r\n\r\n                        {\r\n\r\n                        int length=0:\r\n\r\n                        while(*s!=’\\0’)\r\n\r\n                        {          length++; s++; }\r\n\r\n        ', 'int xsrrlen(char s)\r\n\r\n            {\r\n\r\n            int length=0;\r\n\r\n            while(*s!=’\\0’)\r\n\r\n            length++; s++;\r\n\r\n            return (length);\r\n\r\n            }', 'int xstrlen(char *s)\r\n\r\n                        {\r\n\r\n                        int length=0;\r\n\r\n                        while(*s!=’\\0’)\r\n\r\n                        length++\r\n\r\n                        ret', 'None of these', 'A', 'Amazon', NULL),
(7, NULL, 'What will be the output of the program in 16-bit platform (Turbo C under DOS)?\r\n#include<stdio.h>\r\n\r\nInt main()\r\n\r\n{\r\n\r\n            Printf(“%d, %d, %d”, sizeof(3.0f), sizeof(‘3’)), sizeof(3.0);\r\n\r\n            Return 0;\r\n\r\n}', '8, 1, 4 ', '4, 2, 8', '4, 2, 4', '10, 3, 4', 'B', 'Amazon', NULL),
(8, NULL, 'What will be the output of the program if the array begins 1200 in memory?\r\n\r\n \r\n\r\n#include<stdio.h>\r\n\r\nint main()\r\n\r\n{\r\n\r\n            Int arr[]={2, 3, 4, 1, 6};\r\n\r\n            printf(“%u, %u, %u\\n”, arr, &arr[0], &arr);\r\n\r\n            return 0;\r\n\r\n}', '1200, 1202, 1204       ', '1200, 1200, 1200', '1200, 1204, 1208 ', '1200, 1202, 1200\r\n', 'B', 'Amazon', NULL),
(9, NULL, 'which of the following statements are correct about an array?\n\n1:         The array int num [26]; can store 26 elements.\n\n2:         The expression num [1] designates the very first element in the array.\n\n3:         It is necessary to initialize the array at the time of declaration.\n\n4:         The declaration num [SIZE] is allowed if SIZE is a macro.', '1', '1,4', '2,3', '2,4', 'B', 'Amazon', NULL),
(10, NULL, 'Which of the following statements are correct ?\r\n\r\n1:         A string is a collection of characters terminated by \'\\0\'.\r\n\r\n2:         The format specifier %s is used to print a string.\r\n\r\n3:         The length of the string can be obtained by strlen().\r\n\r\n4:         The pointer CANNOT work on string.', 'A, B ', 'A, B, C', 'B, D', 'C, D', 'B', 'Amazon', NULL),
(11, NULL, 'Point out the error in the program?\r\n\r\n#incluse<stdio.h>\r\n\r\nint main()\r\n\r\n{\r\n\r\nstruct emp\r\n\r\n{\r\n\r\nchar name[20];\r\n\r\nfloat sal;\r\n\r\n            };\r\n\r\n            struct emp e[10];\r\n\r\n            int i;\r\n\r\nfor(i=0; i<=9; i++)\r\n\r\n                 scanf(“%s  %f”’ e[i].name, &e[i].sal);\r\n\r\nreturn 0;\r\n\r\n}', 'Error: invalid structure member', 'Error: Floating point formats not linked', 'No error', 'None of above', 'B', 'Amazon', NULL),
(12, NULL, 'What is the similarity between a structure, union and enumeration?', 'All of them let you define new values\r\n', 'All of them let you define new data types\r\n', 'All of them let you define new pointers', 'All of them let you define new structures\r\n', 'B', 'Amazon', NULL),
(13, NULL, 'What will be the output of the program ?\r\n\r\n#include<stdio.h>\r\n\r\nint main()\r\n\r\n{\r\n\r\n    enum days {MON=-1, TUE, WED=6, THU, FRI, SAT};\r\n\r\n    printf(\"%d, %d, %d, %d, %d, %d\\n\", MON, TUE, WED, THU, FRI, SAT);\r\n\r\n    return 0;\r\n\r\n}', '-1, 0, 1, 2, 3, 4', '-1, 2, 6, 3, 4, 5', '-1, 0, 6, 2, 3, 4', '-1, 0, 6, 7, 8, 9', 'D', 'Amazon', NULL),
(14, NULL, 'What will be the output of the program ?\r\n\r\n \r\n\r\n#include<stdio.h>\r\n\r\n            struct course\r\n\r\n            {\r\n\r\n                int courseno;\r\n\r\n                char coursename[25];\r\n\r\n            };\r\n\r\nint main()\r\n\r\n{\r\n\r\nstruct course c[] = { {102, “Java”},\r\n\r\n                                            { 103, “PHP”},\r\n\r\n                                             {104, “DotNet”}           };\r\n\r\n            printf(“%d”, c[1].courseno);\r\n\r\n            printf(“%s\\m”, (*(c+2)).coursename);\r\n\r', '103 Dotnet', '102 Java', '103 PHP', '104 DotNet', 'A', 'Amazon', NULL),
(15, NULL, 'In which stage the following code\r\n\r\n#include<stdio.h>\r\n\r\ngets replaced by the contents of the file stdio.h\r\n', 'During editing', 'During linking', 'During execution', 'During preprocessing', 'D', 'Amazon', NULL),
(16, NULL, 'Point out the error in the program\r\n\r\n \r\n\r\n#incluse<stdio.h>\r\n\r\nint main()\r\n\r\n{\r\n\r\n            int I;\r\n\r\n            #if A\r\n\r\n                 printf(“Enter any number:”);\r\n\r\n                 scanf(“%d”, &i);\r\n\r\n            #elif B\r\n\r\n                 printf(“ The number is odd”);\r\n\r\n            return 0;\r\n\r\n}', 'Error: unexpected end of file because there is no matching #endif\r\n', 'The number is odd', 'Garbage values', 'None of above', 'A', 'Amazon', NULL),
(17, NULL, 'What are the different types of real data type in C?', 'float, double ', 'short int, double, long int\r\n', 'float, double, long double', 'double, long int, float', 'C', 'Amazon', NULL),
(18, NULL, 'hich statement will you add in the following program to work it correctly?\r\n\r\n \r\n\r\n#include<stdio.h>\r\n\r\nInt main()\r\n\r\n{\r\n\r\n            printf(“%f\\n”,  lof(36.0));\r\n\r\n            return 0;\r\n\r\n}', '#include<conio.h>  ', '#include<math.h>', '#include<stdlib.h>', '#include<dos.h>', 'B', 'Amazon', NULL),
(19, NULL, 'What do the following declaration signify?\r\n\r\nint *ptr[30];\r\n', 'ptr is a pointer to an array of 30 integer pointers.', 'ptr is a array of 30 pointers to integers.', ' ptr is a array of 30 integer pointers.', 'ptr is a array 30 pointers', 'B', 'Amazon', NULL);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `q_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
