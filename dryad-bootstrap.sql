--
-- This script loads minimal data into a Dryad Postgres database
-- For a development virtual machine up and running
-- It should only be run after running DSpace's 'ant fresh_install'
--
-- dleehr 2014-05-08
--

--
-- epersongroup table
--

-- Anonymous and administrator are created by ant fresh_install
--INSERT INTO epersongroup VALUES (0, 'Anonymous');
--INSERT INTO epersongroup VALUES (1, 'Administrator');
INSERT INTO epersongroup VALUES (6, 'COLLECTION_1_ADMIN');
INSERT INTO epersongroup VALUES (7, 'COLLECTION_2_ADMIN');
INSERT INTO epersongroup VALUES (9, 'COLLECTION_3_SUBMIT');
INSERT INTO epersongroup VALUES (2, 'COLLECTION_1_SUBMIT');
INSERT INTO epersongroup VALUES (4, 'COLLECTION_2_SUBMIT');
INSERT INTO epersongroup VALUES (3, 'COLLECTION_1_WORKFLOW_STEP_2');
INSERT INTO epersongroup VALUES (5, 'COLLECTION_2_WORKFLOW_STEP_2');
INSERT INTO epersongroup VALUES (10, 'COLLECTION_3_ADMIN');
INSERT INTO epersongroup VALUES (8, 'Curators');
INSERT INTO epersongroup VALUES (11, 'COLLECTION_2_WORKFLOW_ROLE_curator');
INSERT INTO epersongroup VALUES (13, 'COLLECTION_6_ADMIN');
INSERT INTO epersongroup VALUES (12, 'COLLECTION_2_WORKFLOW_ROLE_editors');
INSERT INTO epersongroup VALUES (14, 'COLLECTION_6_SUBMIT');
INSERT INTO epersongroup VALUES (15, 'COLLECTION_6_WORKFLOW_ROLE_curator');
INSERT INTO epersongroup VALUES (16, 'COLLECTION_6_WORKFLOW_ROLE_editors');
INSERT INTO epersongroup VALUES (17, 'COLLECTION_7_ADMIN');
INSERT INTO epersongroup VALUES (18, 'COLLECTION_7_SUBMIT');
INSERT INTO epersongroup VALUES (19, 'COLLECTION_7_WORKFLOW_ROLE_curator');
INSERT INTO epersongroup VALUES (20, 'COLLECTION_7_WORKFLOW_ROLE_editors');

--
-- collection table
-- 
-- Last two columns are submitter and admin, so these must be present
-- 'Dryad Data Files' and 'Dryad Data Packages' reference epersongroups, 5 and 3 which must be present

INSERT INTO collection VALUES (1, 'Dryad Data Files', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 2, 6);
INSERT INTO collection VALUES (2, 'Dryad Data Packages', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 4, 7);
INSERT INTO collection VALUES (3, 'BIRDD', 'Data from the BIRDD collection', 'BIRDD (Beagle Investigations Return with Darwinian Data) is a collection of data relating to Galapagos finches. It spans multiples publications from multiple researchers, but all data has been converted into standardized formats for easy comparison.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 10);
INSERT INTO collection VALUES (4, 'KNB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO collection VALUES (5, 'TreeBASE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO collection VALUES (6, 'DryadLab Packages', 'Educational Packages in DryadLab', '', NULL, NULL, '', '', '', '', NULL, NULL, NULL, 14, 13);
INSERT INTO collection VALUES (7, 'DryadLab Activities', 'Educational Activities in DryadLab', '', NULL, NULL, '', '', '', '', NULL, NULL, NULL, 18, 17);

--
-- handle table
--
-- Dryad uses the HandleManager to resolve collections like its Data Packages and Data Files collections

INSERT INTO handle VALUES (1, '10255/1', 4, 1);
INSERT INTO handle VALUES (2, '10255/2', 3, 1);
INSERT INTO handle VALUES (3, '10255/3', 3, 2);
INSERT INTO handle VALUES (148, '10255/dryad.148', 3, 3);
INSERT INTO handle VALUES (2027, '10255/dryad.2027', 3, 4);
INSERT INTO handle VALUES (2171, '10255/dryad.2171', 3, 5);
INSERT INTO handle VALUES (7871, '10255/dryad.7871', 3, 6);
INSERT INTO handle VALUES (7872, '10255/dryad.7872', 3, 7);

-- Should update sequences after this, since these PK values are hard-coded.

