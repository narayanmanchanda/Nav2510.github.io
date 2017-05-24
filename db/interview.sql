-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2017 at 01:49 PM
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
(24, 'main( )\r\n{\r\nint x,y, z;\r\nx=2;\r\ny=5;\r\nz= x+++y;\r\nprintf(\"%d %d %d\", x, y z);\r\n}', 'C', 'Find the output of the given code?', '3,5,7', '2,6,8', '3,5,8', '2,6,7', 'a', 'Flipkart', 2016, 'This statement can be broken to z = x + y; (i.e z = 7 ) x = x + 1; (i.e x = 3 ) Hence Correct Answer is : 3,5,7'),
(25, 'main( )\n{\nunsigned int i=3;\nwhile( i >=0)\nprintf( \"%d\", i--);\n}', 'C', 'How many times will the printf statement be executed?', '0', '3', 'Infinite', '4', 'c', 'Flipkart', 2016, '\'i\' is an unsigned integer and it will not decrement below \'0\' and hence end up in an infinite loop.'),
(26, NULL, 'Computer Network', 'In Open Systems Interconnect model, which of the following layers is responsible for terminal emulation ?', 'Transport Layer', 'Data link layer', 'Network layer', 'Physical layer', 'd', 'Flipkart', 2016, NULL),
(27, NULL, 'Computer Network', 'Which Layer establishes, manages and terminates connections between local and remote applications ?', 'Physical Layer', 'Session Layer', 'Data LInk Layer', 'Application Layer', 'b', 'Flipkart', 2016, NULL),
(28, NULL, 'Database', 'A top-to-bottom relationship among the items in a database is established by a', 'hierarchical schema ', 'network schema ', 'relational schema ', 'all of the above', 'a', 'Flipkart', 2016, NULL),
(29, NULL, 'Database', 'If a piece of data is stored in two places in the database, then', 'storage space is wasted', 'changing the data in one spot will cause data inconsistency', 'it can be more easily accessed', 'both a and b', 'd', 'Flipkart', 2016, NULL),
(30, NULL, 'Puzzles', 'A big cube painted with yellow colour in all sides. if you cut it into 1000 cubes with same dimension. than how many cubes were without painted anyside. explain it?', '12', '15', '08', '10', 'a', 'Ebay', NULL, NULL),
(31, NULL, NULL, 'A form of code that uses more than one process and processor, possibly of different type, and that may on occasions have more than one process or processor active at the same time, is known as', 'multiprogramming', 'multi threading', 'broadcasting', 'time sharing', 'b', 'Oracle', NULL, NULL),
(32, NULL, NULL, 'Which of the following system program forgoes the production of object code to generate absolute machine code and load it into the physical main storage location from which it will be executed immediately upon completion of the assembly?', 'two pass assembler', 'load-and-go assembler', 'macroprocessor', 'compiler', 'b', 'Oracle', NULL, NULL),
(33, NULL, NULL, 'An instruction in a programming language that is replaced by a sequence of instructions prior to assembly or compiling is known as', 'procedure name', 'macro', 'label', 'lireral', 'b', 'Oracle', NULL, NULL),
(34, NULL, NULL, 'Which policy replace a page if it is not in the favoured subset of a process\'s pages?', 'FIFO', 'LRU', 'LFU', 'Working set', 'd', 'Oracle', NULL, NULL),
(35, NULL, NULL, 'There are certain packages that allow people to define data items, place these items in particular records, combine the records into designated files and then manipulate and retrieve the stored data. What are they called?', 'Data storage system', 'Database management system (DBMS)', 'Batch processing system', 'Data communication package', 'b', 'Oracle', NULL, NULL),
(36, NULL, NULL, 'Subschema can be used to', 'create very different, personalized views of the same data', 'present information in different formats', 'hide sensitive information by omitting fields from the sub¬schema\'s description', 'All of the above', 'd', 'Oracle', NULL, NULL),
(37, NULL, NULL, 'In order to use a DBMS, it is important to understand', 'the physical schema', 'all sub-schemas that the system supports', 'one subschema', 'both (a) and (b)', 'c', 'Oracle', NULL, NULL),
(38, NULL, NULL, 'A large computer information system maintains many different computer files. Which amongst them is called a perpetual file?', 'Specialized file', 'Log file', 'Master file', 'Update file', 'c', 'Oracle', NULL, NULL),
(39, NULL, NULL, 'The Management Information system (MIS) structure with one main computer system is called a', 'hierarchical MIS structure', 'distributed MIS structure', 'centralized MIS structure', 'decentralized MIS structure', 'c', 'Oracle', NULL, NULL),
(40, NULL, NULL, 'Which is the simplest file structure?', 'Sequential', 'Indexed', 'Random', 'None of these', 'a', 'Oracle', NULL, NULL),
(41, NULL, NULL, 'If a calculation is embedded in a form', 'the result of the calculations are stored with the form', 'the calculations are stored with the form', 'the result of the calculations are printed in report', 'All of the above', 'b', 'Oracle', NULL, NULL),
(42, NULL, NULL, 'Information can be transferred between the DBMS and a', 'spreadsheet program', 'word processor program', 'graphics program', 'All of the above', 'd', 'Oracle', NULL, NULL),
(43, NULL, NULL, 'In SQL, which of the following is not a data definition language commands?', 'RENAME', 'REVOKE', 'GRANT', 'UPDATE', 'd', 'Oracle', NULL, NULL),
(44, NULL, NULL, 'RS-449/442-A/423-A is', 'a set of physical layer standards developed by EIA and intended to replace RS-232-C.', 'a check bit appended to an array of binary digits to make the sum of the all the binary digits', 'the ratio of the number of data units in error to the total number of data units', 'None of these', 'A', 'Oracle', NULL, NULL),
(45, NULL, NULL, ' A modem that is attached to the telephone system by jamming the phone\'s handset into two flexible receptacles in the coupler?', 'gateway', 'bridge', 'acoustic coupler', 'time-division multiplexer', 'c', 'Oracle', NULL, NULL),
(46, NULL, NULL, 'The term TSR is an abbreviation for:', 'Terminate Stay Ready', 'Testing System Read', 'Terminal Still Ready', 'Terminate Stay Resident', 'd', 'Oracle', NULL, NULL),
(47, NULL, NULL, ' What was originally called the \"imitation game\" by its creator?', 'The Turing Test', ' LISP', 'The Logic Theorist', 'Cybernetics', 'a', 'Oracle', NULL, NULL),
(48, NULL, NULL, 'The command chmod 761 letter is equivalent to', 'chmod 4=7, g = 6, o = 1 letter', 'chmo a = 761 letter', 'schmod u = rws, g = rw, o = x letter', 'chmod 167 letter', 'c', 'Oracle', NULL, NULL),
(49, NULL, NULL, 'How would you allow device drivers and TSR\'s to be loaded into Upper Memory Blocks?', 'DOS=High', 'DOS=UMB', 'Loadhigh=', 'Devicehigh=', 'b', 'Oracle', NULL, NULL),
(50, NULL, NULL, 'What hardware architectures are not supported by Ret Hat?', 'SPARC', 'IBM-compatible', 'Alpha', 'Macintosh', 'd', 'Oracle', NULL, NULL),
(51, NULL, 'Database', '......................... are predefined and maintained SQL Server and users cannot assign or directly change the values.', 'Global variables', ' Local Variables', 'Integer Variables', 'Floating Variables', 'a', NULL, NULL, NULL),
(52, NULL, 'Database', 'MS SQL Server uses a variant of SQL called T-SQL, or Transact SQL, an implementation of .................. with some extensions.', 'MS SQL Server', 'Tabular Data Set', 'SQL-92', 'Tabular Data Stream', 'c', NULL, NULL, NULL),
(53, NULL, 'Database', '2. A local variable is shown ........................... preceding its name.', 'One @ symbol', 'Two @@ symbol', 'One # symbol', 'Two ## symbol\r\n', 'a', NULL, NULL, NULL),
(54, NULL, 'Database', '........................ is a procedural extension of Oracle - SQL that offers language constructs similar to those in imperative programming languages.', 'SQL', 'PL/SQL', 'Advanced SQL', 'PQL', 'b', NULL, NULL, NULL),
(55, NULL, 'Database', '.................... combines the data manipulating power of SQL with the data processing power of Procedural languages.', 'PL/SQL', 'SQL', 'Advanced SQL', 'PQL', 'a', NULL, NULL, NULL),
(56, NULL, 'Database', ' In ............................ of Oracle, the database administrator creates a user account in the database for each user who needs access.', 'Database Authentication', 'Operating System Authentication', 'Internal Authentication', ' External Authentication', 'a', NULL, NULL, NULL),
(57, NULL, 'Database', 'A logical schema ', 'is the entire database', 'is a standard way of organizing information into accessible parts.', 'Describes how data is actually stored on disk.', 'All of the above', 'b', NULL, NULL, NULL),
(58, NULL, 'Database', '.......... command can be used to modify a column in a table', 'alter', 'update', 'set', 'create', 'a', NULL, NULL, NULL),
(59, NULL, 'Database', 'Grant and revoke are ....... statements.', 'DDL', 'TCL', 'DCL', 'DML', 'c', NULL, NULL, NULL),
(60, NULL, 'Database', 'Data independence means', 'data is defined separately and not included in programs.', 'programs are not dependent on the physical attributes of data ', 'programs are not dependent on the logical attributes of data ', ' both B and C ', 'd', NULL, NULL, NULL),
(61, NULL, 'Database', 'To eliminate duplicate rows ……………… is used', ' NODUPLICATE', 'ELIMINATE', 'DISTINCT', 'None of these', 'c', NULL, NULL, NULL),
(62, NULL, 'Database', '........ data type can store unstructured data', 'RAW', 'CHAR', 'NUMERIC', 'VARCHAR', 'a', NULL, NULL, NULL),
(63, NULL, 'Database', '…………………… is the process of organizing data into related tables.', 'Normalization', 'Generalization', 'Specialization', 'None of the above', 'a', NULL, NULL, NULL),
(64, NULL, 'Database', 'State true or false.\r\ni) Select operator is not a unary operator.\r\nii) Project operator chooses subset of attributes or columns of a relation.', ' i-True, ii-False', 'i-True, ii-True', 'i-False, ii-True', 'i-False, ii-False', 'c', NULL, NULL, NULL),
(65, NULL, 'Database', 'Which of the following is/are the DDL statements?', 'Create', 'Drop', 'Alter', 'All of the above', 'd', NULL, NULL, NULL),
(66, NULL, 'HTML', ' ......................... connects web pages.', 'Connector', 'Link', 'HyperLink', 'None of the above', 'a', NULL, NULL, NULL),
(67, NULL, 'HTML', ' .................. is suitable for remote administration of a computer.', 'FTP', 'Shell', 'Remote Procedure Call', 'Telnet', 'd', NULL, NULL, NULL),
(68, NULL, 'HTML', '...................... is the incoming e-mail server.', 'POP', 'SMTP', 'SMIP', 'PPP', 'a', NULL, NULL, NULL),
(69, NULL, 'HTML', 'A ............................. is a symbolic name a network administrator assigns to a machine.', 'URL', 'DNS', 'IP address', 'Host name', 'd', NULL, NULL, NULL),
(70, NULL, 'HTML', '........................ are often used to exclude content from older browsers, particularly those that do not understand client side scripting or style sheet.', 'Excludes', 'Comments', 'Coords', 'Messsages', 'b', NULL, NULL, NULL),
(71, NULL, 'HTML', '......................... is the element specific attribute which defines the character encoding of the linked resource.', 'Coords', 'Href', 'Rel', 'Charset', 'd', NULL, NULL, NULL),
(72, NULL, 'HTML', 'The HTML5 specification suggests that, ....................... should be used to indicate whether a destination is appropriate for screen, print, PDA and so on.', 'method', 'media', 'name', 'shape', 'b', NULL, NULL, NULL),
(73, NULL, 'HTML', '......................... is the empty element found within the head element specifies the base URL stem to be used for all relative URL contained within a document.', '<base>', '<basefont>', '<bdo>', '<big>', 'a', NULL, NULL, NULL),
(74, NULL, 'HTML', 'A <textarea> element cannot be descendant of a/an .............................. element.', 'form', 'div', 'button', 'article', 'c', NULL, NULL, NULL),
(75, NULL, 'HTML', '....................... element is used to group the rows within the footer of a table so that common alignment and style defaults can easily be set for numerous cells.', '<tgroup>', '<tfoot>', '<grows>', '<frows>', 'b', NULL, NULL, NULL),
(76, 'i) CSS saves time ii) Page load faster \r\n\r\niii) Easy maintenance iv) Multiple compatibility', 'HTML', 'Which of the following are the advantages of CSS?', 'i, ii and iii only', 'ii, iii and iv only\r\n', 'i, ii and iv only', 'All i, ii, iii and iv ', 'd', NULL, NULL, NULL),
(77, NULL, 'HTML', 'The correct example of class selector is .\r\n', 'h2.type1 {color: #000000;}', 'h2 type1 {color: #000000;', 'h2 #type1 {color: #000000;}', '#h2 type1 {color: #000000;}', 'a', NULL, NULL, NULL),
(78, NULL, 'HTML', 'CSS comments are inserted inside .', '//...................//', '<!..................>', ' /*..................*/', 'All of the above', 'c', NULL, NULL, NULL),
(79, NULL, 'HTML', 'State whether True or False.\r\n\r\ni) Any inline style sheet takes highest priority.\r\n\r\nii) Any rule defined in <style> ...........................</style> tag will override rules defined in any external style sheet file.', 'i-True, ii-False', 'i-False, ii-True', 'i-True, ii-True', 'i-False, ii-False', 'c', NULL, NULL, NULL),
(80, NULL, 'HTML', '...................... is used to import an external style sheet in a manner similar to the <link> element.', '@insert', '@import', '#import', '#insert', 'b', NULL, NULL, NULL),
(81, 'i) JavaScript ignores spaces, tabs and newlines that appear in JavaScript program.\r\n\r\nii) Semicolons are necessary while writing JavaScript statements.\r\n\r\niii) JavaScript is a case-sensitive language.', 'Javascript', 'State whether the following statements are True or False.', ' i- True, ii- False, iii-True', 'i- False, ii- True, iii-True', 'i-True, ii-True, iii-False', 'i- False, ii- False, iii-True', 'a', NULL, NULL, NULL),
(82, NULL, 'Javascript', 'JavaScript For Loops contains the following important parts.\r\n\r\ni) The loop initialization to start value.\r\n\r\nii) The test statement to test if the given condition is True or not.\r\n\r\niii) The iteration statement to increase or decrease counter.\r\n\r\niv) The end statement to finish the loop.\r\n', 'i, ii and iii only', 'i, iii and iv only\r\n', ' i, ii and iv only\r\n', 'All i, ii, iii, and iv', 'a', NULL, NULL, NULL),
(83, NULL, 'Javascript', 'A JavaScript function which can be defined dynamically along with the new operator using ..........', ' Nested Function', ' Function Literals', 'Function ( ) Constructor', 'None of the above', 'c', NULL, NULL, NULL),
(84, NULL, 'Javascript', '........... include legacy event types such as \"mousedown\", \"mousemove\", \"mouseup\", \"keydown\", \"keypress\",\"keyup\",\"touchmove\" and \"gesturechange\" events.', 'Device dependent input events', 'Device independent input events', 'User interface events', 'State change events', 'a', NULL, NULL, NULL),
(85, NULL, 'Javascript', '......... objects have altKey, ctrlKey, metaKey and shiftKey properties, which are set to True if the corresponding modifier key is held down when the event occurs.', 'Key down', 'Key event', 'Key up', 'Key press', 'b', NULL, NULL, NULL),
(86, NULL, 'Javascript', 'The .............. event is fired when the document has been loaded and parsed and any deferred scripts have been executed.', 'DOMContent()', 'DOMContentLoad()', 'DOMLoaded()', 'DOMContentLoaded()', 'd', NULL, NULL, NULL),
(87, NULL, 'Javascript', 'The ................ operator is known as the equality operator, which checks whether its two operators are \"equal\" using a more relaxed definition of sameness that allows type conversion.', '=', '==', '===', 'All of the above', 'b', NULL, NULL, NULL),
(88, NULL, 'Javascript', 'State whether the following statements are True or False for strict equality operator(= = =).\r\ni) If the two values have different types they are equal.\r\nii) If both values are null or both values are undefined, they are equal.\r\niii) If  both of the Boolean value are True or both of the Boolean value are False, they are equal.', ' i-True, ii-False, iii-True', ' i-False, ii-True, iii-True', ' i-True, ii-False, iii-False', 'i-False, ii-True, iii-False', 'b', NULL, NULL, NULL),
(89, NULL, 'Javascript', 'If we compare 11 as a string and 3 as a number (\"11\"<3), what will be t he result.', 'False', 'True', 'NaN', 'Undefined', 'a', NULL, NULL, NULL),
(90, NULL, 'Javascript', 'In JavaScript, if var a=[ ]; and var b=a; what will be the result of a = = = b.', 'False', 'True', 'Undefined', 'NaN', 'b', NULL, NULL, NULL),
(91, NULL, 'Javascript', '................. object was created, while converting empty string \" \" to an object in JavaScript.', 'new string (empty)', 'new string(\" \")', 'string(\" \")', 'new string( )\r\n', 'b', NULL, NULL, NULL),
(92, NULL, 'Javascript', 'If the object has a ................... method that returns a primitive value, JavaScript converts that primitive value, JavaScript converts that primitive value to a number and returns the result.', 'ValueOf()', 'ParseInt()', 'ParseNumber()', 'ParseString()', 'a', NULL, NULL, NULL),
(93, NULL, 'Java', '	\r\nWhich cannot directly cause a thread to stop executing?', 'Calling the SetPriority() method on a Thread object.', 'Calling the wait() method on an object.', 'Calling notify() method on an object.', 'Calling read() method on an InputStream object.', 'c', NULL, NULL, 'Option C is correct. notify() - wakes up a single thread that is waiting on this object\'s monitor.'),
(94, '	\r\nclass HappyGarbage01 \r\n{ \r\n    public static void main(String args[]) \r\n    {\r\n        HappyGarbage01 h = new HappyGarbage01(); \r\n        h.methodA(); /* Line 6 */\r\n    } \r\n    Object methodA() \r\n    {\r\n        Object obj1 = new Object(); \r\n        Object [] obj2 = new Object[1]; \r\n        obj2[0] = obj1; \r\n        obj1 = null; \r\n        return obj2[0]; \r\n    } \r\n}', 'Java', 'Where will be the most chance of the garbage collector being invoked?', 'After line 9', 'After line 10', 'After line 11', 'Garbage collector never invoked in methodA()', 'd', NULL, NULL, 'Option D is correct. Garbage collection takes place after the method has returned its reference to the object. The method returns to line 6, there is no reference to store the return value. so garbage collection takes place after line 6.'),
(95, 'try \r\n{ \r\n    int x = 0; \r\n    int y = 5 / x; \r\n} \r\ncatch (Exception e) \r\n{\r\n    System.out.println(\"Exception\"); \r\n} \r\ncatch (ArithmeticException ae) \r\n{\r\n    System.out.println(\" Arithmetic Exception\"); \r\n} \r\nSystem.out.println(\"finished\");', 'Java', 'What will be the output of the program?', 'Finished', 'Exception', 'Compilation Fails', 'Arithmetic Exception', 'c', NULL, NULL, 'Compilation fails because ArithmeticException has already been caught. ArithmeticException is a subclass of java.lang.Exception, by time the ArithmeticException has been specified it has already been caught by the Exception class.\r\n\r\nIf ArithmeticException appears before Exception, then the file will compile. When catching exceptions the more specific exceptions must be listed before the more general (the subclasses must be caught before the superclasses).'),
(96, 'public void test(int x) \r\n{ \r\n    int odd = 1; \r\n    if(odd) /* Line 4 */\r\n    {\r\n        System.out.println(\"odd\"); \r\n    } \r\n    else \r\n    {\r\n        System.out.println(\"even\"); \r\n    } \r\n}', 'Java', 'Which statement is true?', 'Compilation fails', '\"odd\" will always be output.', '\"even\" will always be output.', '\"odd\" will be output for odd values of x, and \"even\" for even values.', 'a', NULL, NULL, 'The compiler will complain because of incompatible types (line 4), the if expects a boolean but it gets an integer.'),
(97, '', 'Java', '	\r\nWhich interface does java.util.Hashtable implement?', 'Java.util.Map', 'java.util.Set', 'java.util.List', 'java.util.Collection', 'b', NULL, NULL, 'Option B is correct. A set is a collection that contains no duplicate elements. The iterator returns the elements in no particular order (unless this set is an instance of some class that provides a guarantee). A map cannot contain duplicate keys but it may contain duplicate values. List and Collection allow duplicate elements.');

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

CREATE TABLE `sign_up` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `imagelink` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sign_up`
--

INSERT INTO `sign_up` (`name`, `email`, `pass`, `gender`, `imagelink`) VALUES
('Narayan', 'manchandanarayan@gmail.com', 'narayan', 'Male', NULL),
('Navdeep Singh', 'singh.navdeep2510@gmail.com', 'navdeep', 'Male', NULL),
('Mohit Garg', 'gargmohit19la@gmail.com', 'mohit', 'Male', NULL),
('Mishika', 'mishukataria@gmail.com', 'mishika', 'Female', NULL);

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
  MODIFY `q_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
