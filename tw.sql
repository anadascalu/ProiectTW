-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09 Iun 2017 la 22:54
-- Versiune server: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tw`
--

DELIMITER $$
--
-- Proceduri
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `alege` ()  BEGIN
				declare v_numeRandom INTEGER(10);
				declare v_prenumeRandom INTEGER(10);
				declare v_idCutremurRandom INTEGER(10);
				declare v_prenumeNou VARCHAR(15);
				declare v_idPersoanaNou integer(4);
				declare v_numeNou VARCHAR(15);
				SELECT COUNT(idPersoana) INTO v_idPersoanaNou FROM voluntari as C;

				set v_numeRandom = FLOOR(RAND() * (50 - 1 + 1)) + 1;
				set v_prenumeRandom = FLOOR(RAND() * (50 - 1 + 1)) + 1;
				set v_idCutremurRandom = FLOOR(RAND() * (12 - 1 + 1)) + 1;

					select prenume into v_prenumeNou from voluntari as A  limit v_prenumeRandom,1;
					select nume into v_numeNou from voluntari as B  limit v_numeRandom,1;
				
					set v_idPersoanaNou := v_idPersoanaNou + 1;
					
				INSERT INTO voluntari (IDCUTREMUR, IDPERSOANA, NUME, PRENUME) 
				VALUES (concat('C',v_idCutremurRandom), concat('V',v_idPersoanaNou) , v_numeNou, v_prenumeNou);
				
		END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `alege_mort` ()  BEGIN
	
	declare v_numeNou VARCHAR(15);
	declare v_prenumeNou VARCHAR(15);
	declare v_idPersoanaNou integer(8);
	declare v_data timestamp(6);
	declare v_numeRandom integer(10);
	declare v_prenumeRandom integer(10);
	declare v_idCutremurRandom integer(10);
 
	set v_numeRandom = FLOOR(RAND() * (26 - 1 + 1)) + 1;
	set v_prenumeRandom = FLOOR(RAND() * (26 - 1 + 1)) + 1;
	set v_idCutremurRandom = FLOOR(RAND() * (12 - 1 + 1)) + 1;
 
      SELECT COUNT(idPersoana) INTO v_idPersoanaNou FROM morti as D;
      select prenume into v_prenumeNou from  morti as E limit v_prenumeRandom,1;
      select nume into v_numeNou from morti as F limit v_numeRandom,1;
      
      select '1989-12-25' +   interval rand()*30 day + interval rand()*12 month +  interval rand()*40 year + interval rand()*60 MINUTE + interval rand()*60 SECOND + interval rand()*24 HOUR into v_data;
      
      SET v_idPersoanaNou = v_idPersoanaNou + 1;
      
   INSERT INTO MORTI (IDCUTREMUR, IDPERSOANA, NUME, PRENUME, DATANASTERE) 
   VALUES (CONCAT('C',v_idCutremurRandom), CONCAT('M',v_idPersoanaNou) , v_numeNou, v_prenumeNou , v_data);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `alege_nevatamat` ()  BEGIN
	
	declare v_numeNou VARCHAR(15);
	declare v_prenumeNou VARCHAR(15);
	declare v_idPersoanaNou integer(8);
	declare v_data timestamp(6);
	declare v_numeRandom integer(10);
	declare v_prenumeRandom integer(10);
	declare v_idCutremurRandom integer(10);
 
	set v_numeRandom = FLOOR(RAND() * (26 - 1 + 1)) + 1;
	set v_prenumeRandom = FLOOR(RAND() * (26 - 1 + 1)) + 1;
	set v_idCutremurRandom = FLOOR(RAND() * (12 - 1 + 1)) + 1;
 
      SELECT COUNT(idPersoana) INTO v_idPersoanaNou FROM nevatamati as D;
      select prenume into v_prenumeNou from  nevatamati as E limit v_prenumeRandom,1;
      select nume into v_numeNou from nevatamati as F limit v_numeRandom,1;
      
      select '1989-12-25' +   interval rand()*30 day + interval rand()*12 month +  interval rand()*40 year + interval rand()*60 MINUTE + interval rand()*60 SECOND + interval rand()*24 HOUR into v_data;
      
      SET v_idPersoanaNou = v_idPersoanaNou + 1;
      
   INSERT INTO nevatamati (IDCUTREMUR, IDPERSOANA, NUME, PRENUME, DATANASTERE) 
   VALUES (CONCAT('C',v_idCutremurRandom), CONCAT('N',v_idPersoanaNou) , v_numeNou, v_prenumeNou , v_data);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `alege_ranit` ()  BEGIN
	
	declare v_numeNou VARCHAR(15);
	declare v_prenumeNou VARCHAR(15);
	declare v_idPersoanaNou integer(8);
	declare v_data timestamp(6);
	declare v_numeRandom integer(10);
	declare v_prenumeRandom integer(10);
	declare v_idCutremurRandom integer(10);
 
	set v_numeRandom = FLOOR(RAND() * (26 - 1 + 1)) + 1;
	set v_prenumeRandom = FLOOR(RAND() * (26 - 1 + 1)) + 1;
	set v_idCutremurRandom = FLOOR(RAND() * (12 - 1 + 1)) + 1;
 
      SELECT COUNT(idPersoana) INTO v_idPersoanaNou FROM raniti as D;
      select prenume into v_prenumeNou from  raniti as E limit v_prenumeRandom,1;
      select nume into v_numeNou from raniti as F limit v_numeRandom,1;
      
      select '1989-12-25' +   interval rand()*30 day + interval rand()*12 month +  interval rand()*40 year + interval rand()*60 MINUTE + interval rand()*60 SECOND + interval rand()*24 HOUR into v_data;
      
      SET v_idPersoanaNou = v_idPersoanaNou + 1;
      
   INSERT INTO raniti (IDCUTREMUR, IDPERSOANA, NUME, PRENUME, DATANASTERE) 
   VALUES (CONCAT('C',v_idCutremurRandom), CONCAT('R',v_idPersoanaNou) , v_numeNou, v_prenumeNou , v_data);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insereaza_adapost` ()  BEGIN
	declare v_idpersoana varchar(4);
	declare v_idcutremur varchar(4);
	declare v_random integer(10);
	declare v_id VARCHAR(10);
	declare lista_id cursor for SELECT idPersoana,idCutremur FROM nevatamati;
	open lista_id;
	linie: loop
		fetch lista_id into v_idpersoana,v_idcutremur;
        if(v_idCutremur='C1') THEN
             set v_random = FLOOR(RAND() * (30 - 1 + 1)) + 1;
             INSERT INTO ADAPOST (idPersoana,numarCamera,numeAdapost) VALUES (v_idPersoana,v_random,'Lacramioara');
        END IF;
                
        if(v_idCutremur='C2') THEN
             set v_random = FLOOR(RAND() * (30 - 1 + 1)) + 1;
             INSERT INTO ADAPOST (idPersoana,numarCamera,numeAdapost) VALUES (v_idPersoana,v_random,'Lastar');
        END IF;
        
        if(v_idCutremur='C3') THEN
             set v_random = FLOOR(RAND() * (30 - 1 + 1)) + 1;
             INSERT INTO ADAPOST (idPersoana,numarCamera,numeAdapost) VALUES (v_idPersoana,v_random,'Lalea');
        END IF;
        
        if(v_idCutremur='C4') THEN
             set v_random = FLOOR(RAND() * (30 - 1 + 1)) + 1;
             INSERT INTO ADAPOST (idPersoana,numarCamera,numeAdapost) VALUES (v_idPersoana,v_random,'Trandafir');
        END IF;
        
        if(v_idCutremur='C5') THEN
             set v_random = FLOOR(RAND() * (30 - 1 + 1)) + 1;
            INSERT INTO ADAPOST (idPersoana,numarCamera,numeAdapost) VALUES (v_idPersoana, v_random,'Pruna');
        END IF;
        
        if(v_idCutremur='C6') THEN
             set v_random = FLOOR(RAND() * (30 - 1 + 1)) + 1;
            INSERT INTO ADAPOST (idPersoana,numarCamera,numeAdapost) VALUES (v_idPersoana,v_random,'Caisa');
        END IF;
        
        if(v_idCutremur='C7') THEN
             set v_random = FLOOR(RAND() * (30 - 1 + 1)) + 1;
             INSERT INTO ADAPOST (idPersoana,numarCamera,numeAdapost) VALUES (v_idPersoana,v_random,'Rosii');
        END IF;
        
        if(v_idCutremur='C8') THEN
             set v_random = FLOOR(RAND() * (30 - 1 + 1)) + 1;
            INSERT INTO ADAPOST (idPersoana,numarCamera,numeAdapost) VALUES (v_idPersoana,v_random,'Zmeura');
        END IF;
        
        if(v_idCutremur='C9') THEN
            set v_random = FLOOR(RAND() * (30 - 1 + 1)) + 1;
           INSERT INTO ADAPOST (idPersoana,numarCamera,numeAdapost) VALUES (v_idPersoana, v_random,'Margareta');
        END IF;
        
        if(v_idCutremur='C10') THEN
              set v_random = FLOOR(RAND() * (30 - 1 + 1)) + 1;
             INSERT INTO ADAPOST (idPersoana,numarCamera,numeAdapost) VALUES (v_idPersoana,v_random,'Ghiocel');
        END IF;
        
        if(v_idCutremur='C11') THEN
            set v_random = FLOOR(RAND() * (30 - 1 + 1)) + 1;
           INSERT INTO ADAPOST (idPersoana,numarCamera,numeAdapost) VALUES (v_idPersoana, v_random,'Bulbuc');
        END IF;
        
        if(v_idCutremur='C12') THEN
            set v_random = FLOOR(RAND() * (30 - 1 + 1)) + 1;
            INSERT INTO ADAPOST (idPersoana,numarCamera,numeAdapost) VALUES (v_idPersoana, v_random,'Frezii');
        END IF;
        
        if(v_idCutremur='C13') THEN
              set v_random = FLOOR(RAND() * (30 - 1 + 1)) + 1;
              INSERT INTO ADAPOST (idPersoana,numarCamera,numeAdapost) VALUES (v_idPersoana, v_random,'Orhidee');
        END IF;
        
        if(v_idCutremur='C14') THEN
             set v_random = FLOOR(RAND() * (30 - 1 + 1)) + 1;
             INSERT INTO ADAPOST (idPersoana,numarCamera,numeAdapost) VALUES (v_idPersoana, v_random,'Garoafe');
        END IF;
        
        if(v_idCutremur='C15') THEN
             set v_random = FLOOR(RAND() * (30 - 1 + 1)) + 1;
             INSERT INTO ADAPOST (idPersoana,numarCamera,numeAdapost) VALUES (v_idPersoana,v_random,'Crini');
        END IF;
        
    END LOOP linie;  
	close lista_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insereaza_morti` ()  BEGIN
	declare v_contor INTEGER;
	set v_contor = 0;
	
	while v_contor<200 do
			call alege_mort();
			set v_contor = v_contor+1;
	END while;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insereaza_nevatamati` ()  BEGIN
	declare v_contor INTEGER;
	set v_contor = 0;
	
	while v_contor<200 do
			call alege_nevatamat();
			set v_contor = v_contor+1;
	END while;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insereaza_raniti` ()  BEGIN
	declare v_contor INTEGER;
	set v_contor = 0;
	
	while v_contor<200 do
			call alege_ranit();
			set v_contor = v_contor+1;
	END while;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insereaza_spital` ()  BEGIN
	declare v_id VARCHAR(10);
	declare v_idpersoana varchar(4);
	declare v_idcutremur varchar(4);
  declare lista_id cursor for SELECT idPersoana,idCutremur FROM raniti;
	open lista_id;
  linie: LOOP     
		fetch lista_id into v_idpersoana,v_idcutremur;
        if(v_idCutremur='C1') THEN
             
             INSERT INTO SPITAL (idPersoana,numeSpital,oras) VALUES (v_idPersoana,'Spitalul 1','New York');
        END IF;
                
        if(v_idCutremur='C2') THEN
             
             INSERT INTO SPITAL (idPersoana,numeSpital,oras) VALUES (v_idPersoana,'Spitalul 2','Iasi');
        END IF;
        
        if(v_idCutremur='C3') THEN
            
             INSERT INTO SPITAL (idPersoana,numeSpital,oras) VALUES (v_idPersoana,'Spitalul 3','Brasov');
        END IF;
        
        if(v_idCutremur='C4') THEN
             
             INSERT INTO SPITAL (idPersoana,numeSpital,oras) VALUES (v_idPersoana,'Spitalul 4','Mumbai');
        END IF;
        
        if(v_idCutremur='C5') THEN
            
            INSERT INTO SPITAL (idPersoana,numeSpital,oras) VALUES (v_idPersoana,'Spitalul 5','Delhi');
        END IF;
        
        if(v_idCutremur='C6') THEN
             
            INSERT INTO SPITAL (idPersoana,numeSpital,oras) VALUES (v_idPersoana,'Spitalul 6','Vaslui');
        END IF;
        
        if(v_idCutremur='C7') THEN
             
             INSERT INTO SPITAL (idPersoana,numeSpital,oras) VALUES (v_idPersoana,'Spitalul 7','Timisoara');
        END IF;
        
        if(v_idCutremur='C8') THEN
            
            INSERT INTO SPITAL (idPersoana,numeSpital,oras) VALUES (v_idPersoana,'Spitalul 8','Los Angeles');
        END IF;
        
        if(v_idCutremur='C9') THEN
            
           INSERT INTO SPITAL (idPersoana,numeSpital,oras) VALUES (v_idPersoana,'Spitalul 9','Texas');
        END IF;
        
        if(v_idCutremur='C10') THEN
             
             INSERT INTO SPITAL (idPersoana,numeSpital,oras) VALUES (v_idPersoana,'Spitalul 10','Barnova');
        END IF;
        
        if(v_idCutremur='C11') THEN
            
           INSERT INTO SPITAL (idPersoana,numeSpital,oras) VALUES (v_idPersoana,'Spitalul 11','Valencia');
        END IF;
        
        if(v_idCutremur='C12') THEN
            
            INSERT INTO SPITAL (idPersoana,numeSpital,oras) VALUES (v_idPersoana,'Spitalul 12','Granada');
        END IF;
        
        if(v_idCutremur='C13') THEN
             
             INSERT INTO SPITAL (idPersoana,numeSpital,oras) VALUES (v_idPersoana,'Spitalul 13','Milano');
        END IF;
        
        if(v_idCutremur='C14') THEN
            
             INSERT INTO SPITAL (idPersoana,numeSpital,oras) VALUES (v_idPersoana,'Spitalul 14','Cracovia');
        END IF;
        
        if(v_idCutremur='C15') THEN
            
             INSERT INTO SPITAL (idPersoana,numeSpital,oras) VALUES (v_idPersoana,'Spitalul 15','Galati');
        END IF;
        
		end loop linie;
	close lista_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insereaza_voluntari` ()  BEGIN
			declare v_contor  integer(4);
			
			set v_contor = 0;
			
			while v_contor<200 do
				call alege();
				set v_contor = v_contor+1;
			END while;
		END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `adapost`
--

CREATE TABLE `adapost` (
  `idPersoana` varchar(10) NOT NULL,
  `numarCamera` int(4) DEFAULT NULL,
  `numeAdapost` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `adapost`
--

INSERT INTO `adapost` (`idPersoana`, `numarCamera`, `numeAdapost`) VALUES
('N1', 5, 'Lacramioara'),
('N10', 8, 'Ghiocel'),
('N100', 17, 'Frezii'),
('N101', 16, 'Lacramioara'),
('N102', 30, 'Bulbuc'),
('N103', 14, 'Trandafir'),
('N104', 21, 'Rosii'),
('N105', 2, 'Lalea'),
('N106', 26, 'Zmeura'),
('N107', 4, 'Caisa'),
('N108', 5, 'Frezii'),
('N109', 6, 'Zmeura'),
('N11', 7, 'Bulbuc'),
('N110', 29, 'Lastar'),
('N111', 5, 'Lastar'),
('N112', 15, 'Rosii'),
('N113', 4, 'Lacramioara'),
('N114', 15, 'Zmeura'),
('N115', 6, 'Frezii'),
('N116', 1, 'Margareta'),
('N117', 16, 'Margareta'),
('N118', 8, 'Caisa'),
('N119', 18, 'Pruna'),
('N12', 13, 'Frezii'),
('N120', 27, 'Lastar'),
('N121', 28, 'Caisa'),
('N122', 23, 'Trandafir'),
('N123', 10, 'Trandafir'),
('N124', 23, 'Zmeura'),
('N125', 8, 'Pruna'),
('N126', 17, 'Margareta'),
('N127', 1, 'Lacramioara'),
('N128', 14, 'Trandafir'),
('N129', 5, 'Bulbuc'),
('N13', 22, 'Lacramioara'),
('N130', 13, 'Zmeura'),
('N131', 12, 'Rosii'),
('N132', 2, 'Bulbuc'),
('N133', 26, 'Bulbuc'),
('N134', 1, 'Bulbuc'),
('N135', 19, 'Bulbuc'),
('N136', 1, 'Ghiocel'),
('N137', 15, 'Frezii'),
('N138', 6, 'Trandafir'),
('N139', 8, 'Margareta'),
('N14', 29, 'Lastar'),
('N140', 16, 'Rosii'),
('N141', 7, 'Lastar'),
('N142', 12, 'Ghiocel'),
('N143', 8, 'Frezii'),
('N144', 10, 'Lalea'),
('N145', 13, 'Rosii'),
('N146', 25, 'Ghiocel'),
('N147', 15, 'Margareta'),
('N148', 5, 'Lastar'),
('N149', 30, 'Bulbuc'),
('N15', 15, 'Lalea'),
('N150', 2, 'Lastar'),
('N151', 24, 'Frezii'),
('N152', 17, 'Pruna'),
('N153', 15, 'Rosii'),
('N154', 3, 'Bulbuc'),
('N155', 18, 'Lacramioara'),
('N156', 14, 'Bulbuc'),
('N157', 23, 'Zmeura'),
('N158', 19, 'Trandafir'),
('N159', 30, 'Pruna'),
('N16', 22, 'Lacramioara'),
('N160', 17, 'Zmeura'),
('N161', 26, 'Lacramioara'),
('N162', 13, 'Lalea'),
('N163', 14, 'Zmeura'),
('N164', 6, 'Frezii'),
('N165', 23, 'Margareta'),
('N166', 3, 'Bulbuc'),
('N167', 16, 'Trandafir'),
('N168', 23, 'Caisa'),
('N169', 10, 'Margareta'),
('N17', 28, 'Lastar'),
('N170', 8, 'Pruna'),
('N171', 30, 'Ghiocel'),
('N172', 10, 'Lastar'),
('N173', 2, 'Lacramioara'),
('N174', 23, 'Trandafir'),
('N175', 18, 'Zmeura'),
('N176', 11, 'Margareta'),
('N177', 1, 'Caisa'),
('N178', 5, 'Rosii'),
('N179', 9, 'Pruna'),
('N18', 21, 'Lalea'),
('N180', 17, 'Zmeura'),
('N181', 10, 'Rosii'),
('N182', 3, 'Zmeura'),
('N183', 22, 'Margareta'),
('N184', 28, 'Lastar'),
('N185', 22, 'Zmeura'),
('N186', 6, 'Lalea'),
('N187', 4, 'Rosii'),
('N188', 18, 'Rosii'),
('N189', 21, 'Lastar'),
('N19', 7, 'Trandafir'),
('N190', 23, 'Lacramioara'),
('N191', 16, 'Margareta'),
('N192', 21, 'Pruna'),
('N193', 18, 'Frezii'),
('N194', 9, 'Frezii'),
('N195', 15, 'Ghiocel'),
('N196', 13, 'Margareta'),
('N197', 12, 'Ghiocel'),
('N198', 24, 'Lalea'),
('N199', 18, 'Lastar'),
('N2', 27, 'Lastar'),
('N20', 16, 'Pruna'),
('N200', 10, 'Zmeura'),
('N201', 20, 'Lacramioara'),
('N202', 14, 'Lalea'),
('N203', 29, 'Bulbuc'),
('N204', 17, 'Margareta'),
('N205', 30, 'Lacramioara'),
('N206', 26, 'Trandafir'),
('N207', 18, 'Ghiocel'),
('N208', 26, 'Lalea'),
('N209', 13, 'Zmeura'),
('N21', 25, 'Caisa'),
('N210', 26, 'Lalea'),
('N211', 16, 'Trandafir'),
('N212', 19, 'Pruna'),
('N213', 30, 'Lacramioara'),
('N214', 25, 'Lalea'),
('N215', 23, 'Frezii'),
('N216', 16, 'Pruna'),
('N217', 20, 'Rosii'),
('N218', 19, 'Bulbuc'),
('N219', 2, 'Trandafir'),
('N22', 13, 'Rosii'),
('N220', 23, 'Pruna'),
('N221', 17, 'Margareta'),
('N222', 1, 'Caisa'),
('N223', 20, 'Caisa'),
('N224', 26, 'Frezii'),
('N225', 6, 'Pruna'),
('N226', 14, 'Lalea'),
('N227', 5, 'Caisa'),
('N228', 19, 'Pruna'),
('N229', 22, 'Trandafir'),
('N23', 4, 'Zmeura'),
('N230', 20, 'Lastar'),
('N231', 20, 'Ghiocel'),
('N232', 1, 'Margareta'),
('N233', 12, 'Zmeura'),
('N234', 5, 'Bulbuc'),
('N235', 24, 'Lalea'),
('N236', 20, 'Lalea'),
('N237', 25, 'Lalea'),
('N238', 25, 'Caisa'),
('N239', 3, 'Frezii'),
('N24', 17, 'Margareta'),
('N240', 18, 'Margareta'),
('N241', 17, 'Ghiocel'),
('N242', 28, 'Lacramioara'),
('N243', 15, 'Zmeura'),
('N244', 5, 'Lalea'),
('N245', 5, 'Rosii'),
('N246', 20, 'Caisa'),
('N247', 13, 'Trandafir'),
('N248', 25, 'Ghiocel'),
('N249', 10, 'Margareta'),
('N25', 15, 'Ghiocel'),
('N250', 23, 'Caisa'),
('N26', 30, 'Bulbuc'),
('N27', 24, 'Frezii'),
('N28', 18, 'Lacramioara'),
('N29', 19, 'Lastar'),
('N3', 9, 'Lalea'),
('N30', 29, 'Lalea'),
('N31', 9, 'Lacramioara'),
('N32', 6, 'Lastar'),
('N33', 29, 'Lalea'),
('N34', 29, 'Trandafir'),
('N35', 20, 'Pruna'),
('N36', 27, 'Caisa'),
('N37', 14, 'Rosii'),
('N38', 10, 'Zmeura'),
('N39', 25, 'Margareta'),
('N4', 15, 'Trandafir'),
('N40', 29, 'Ghiocel'),
('N41', 15, 'Bulbuc'),
('N42', 21, 'Frezii'),
('N43', 18, 'Lacramioara'),
('N44', 2, 'Lastar'),
('N45', 26, 'Lalea'),
('N46', 4, 'Lacramioara'),
('N47', 23, 'Lastar'),
('N48', 12, 'Lalea'),
('N49', 17, 'Trandafir'),
('N5', 9, 'Pruna'),
('N50', 16, 'Pruna'),
('N51', 4, 'Zmeura'),
('N52', 16, 'Lastar'),
('N53', 22, 'Pruna'),
('N54', 12, 'Trandafir'),
('N55', 6, 'Caisa'),
('N56', 7, 'Trandafir'),
('N57', 4, 'Frezii'),
('N58', 13, 'Lalea'),
('N59', 21, 'Zmeura'),
('N6', 8, 'Caisa'),
('N60', 2, 'Pruna'),
('N61', 29, 'Lalea'),
('N62', 26, 'Rosii'),
('N63', 29, 'Trandafir'),
('N64', 12, 'Bulbuc'),
('N65', 23, 'Caisa'),
('N66', 14, 'Lalea'),
('N67', 13, 'Lalea'),
('N68', 23, 'Lalea'),
('N69', 25, 'Lacramioara'),
('N7', 26, 'Rosii'),
('N70', 14, 'Bulbuc'),
('N71', 2, 'Trandafir'),
('N72', 16, 'Frezii'),
('N73', 6, 'Bulbuc'),
('N74', 7, 'Margareta'),
('N75', 15, 'Lalea'),
('N76', 15, 'Trandafir'),
('N77', 30, 'Zmeura'),
('N78', 6, 'Lalea'),
('N79', 5, 'Pruna'),
('N8', 29, 'Zmeura'),
('N80', 17, 'Margareta'),
('N81', 16, 'Pruna'),
('N82', 23, 'Lacramioara'),
('N83', 10, 'Lastar'),
('N84', 21, 'Rosii'),
('N85', 7, 'Trandafir'),
('N86', 25, 'Zmeura'),
('N87', 6, 'Zmeura'),
('N88', 29, 'Caisa'),
('N89', 15, 'Caisa'),
('N9', 6, 'Margareta'),
('N90', 19, 'Caisa'),
('N91', 7, 'Frezii'),
('N92', 8, 'Ghiocel'),
('N93', 6, 'Margareta'),
('N94', 4, 'Pruna'),
('N95', 16, 'Zmeura'),
('N96', 12, 'Ghiocel'),
('N97', 7, 'Ghiocel'),
('N98', 13, 'Margareta'),
('N99', 16, 'Frezii');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `cutremur`
--

CREATE TABLE `cutremur` (
  `idCutremur` varchar(5) NOT NULL,
  `oras` varchar(15) DEFAULT NULL,
  `magnitudine` decimal(6,2) DEFAULT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `durataSecunde` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `cutremur`
--

INSERT INTO `cutremur` (`idCutremur`, `oras`, `magnitudine`, `date`, `durataSecunde`) VALUES
('C1', 'Kathmandu', '7.80', '2016-08-27 09:07:00.000000', '5.00'),
('C10', 'Nagarkot', '4.70', '2016-05-28 16:13:25.000000', '24.00'),
('C11', 'Kothari', '8.20', '2015-04-26 09:52:32.000000', '16.00'),
('C12', 'Kothari', '4.70', '2016-02-24 18:47:39.000000', '17.00'),
('C2', 'Sagarmatha', '7.10', '1980-04-12 10:08:00.000000', '9.00'),
('C3', 'Mechi', '7.90', '1990-06-06 09:07:00.000000', '2.00'),
('C4', 'Kathmandu', '6.50', '1999-07-07 02:22:08.000000', '20.00'),
('C5', 'Itahari', '7.70', '1998-08-27 23:09:12.000000', '4.00'),
('C6', 'Bihar', '5.70', '2012-01-15 00:09:12.000000', '10.00'),
('C7', 'Itahari', '8.40', '2013-06-27 11:26:20.000000', '6.00'),
('C8', 'Pithoragarh', '6.50', '2001-07-29 06:22:22.000000', '12.00'),
('C9', 'Kathmandu', '6.60', '2007-09-20 07:10:10.000000', '13.00');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `maps`
--

CREATE TABLE `maps` (
  `idCutremur` varchar(10) NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `maps`
--

INSERT INTO `maps` (`idCutremur`, `link`) VALUES
('C1', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d56516.31625952153!2d85.29111316473102!3d27.708955944389654!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb198a307baabf%3A0xb5137c1bf18db1ea!2sKathmandu+44600%2C+Nepal!5e0!3m2!1sen!2sro!4v1496946815778'),
('C2', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1815859.3150629108!2d85.53204741292373!3d27.263064791547684!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e93479cf445b65%3A0xc1ceb492bfa96d3d!2sSagarmatha%2C+Nepal!5e0!3m2!1sen!2sro!4v1496953476899'),
('C3', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1817947.1665413268!2d86.71276262612005!3d27.134948416210783!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e5e00683216f5b%3A0x9f29cd3ec600640e!2sMechi%2C+Nepal!5e0!3m2!1sen!2sro!4v1496953575588'),
('C4', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d56516.31625952146!2d85.291113164731!3d27.708955944389654!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb198a307baabf%3A0xb5137c1bf18db1ea!2sKathmandu+44600%2C+Nepal!5e0!3m2!1sen!2sro!4v1496953617073'),
('C5', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d114086.591151113!2d87.1951588201519!3d26.67389422718349!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ef6c66e80fbfa9%3A0x38094d1a7c974283!2sItahari%2C+Nepal!5e0!3m2!1sen!2sro!4v1496953693036'),
('C6', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3675629.485413996!2d83.55932602597512!3d25.886523544432094!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ed5844f0bb6903%3A0x57ad3fed1bbae325!2sBihar%2C+India!5e0!3m2!1sen!2sro!4v1496953737284'),
('C7', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d114086.591151113!2d87.19515882015187!3d26.67389422718348!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ef6c66e80fbfa9%3A0x38094d1a7c974283!2sItahari%2C+Nepal!5e0!3m2!1sen!2sro!4v1496953768986'),
('C8', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d55511.26650977378!2d80.19588167760257!3d29.59048125455919!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39a125c00088dd51%3A0x2b781d30a1523c63!2sPithoragarh%2C+Uttarakhand%2C+India!5e0!3m2!1sen!2sro!4v1496953810704\" width=\"600\" height='),
('C9', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d56516.31625952153!2d85.29111316473102!3d27.708955944389654!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb198a307baabf%3A0xb5137c1bf18db1ea!2sKathmandu+44600%2C+Nepal!5e0!3m2!1sen!2sro!4v1496953843487'),
('C10', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28256.73833001561!2d85.48182951106659!3d27.714436598474762!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb042a0ccee203%3A0x89e3729ae87697a6!2sNagarkot%2C+Nepal!5e0!3m2!1sen!2sro!4v1496953909561'),
('C12', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14085.965781803736!2d82.32338892530109!3d28.0400153724827!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39978cf7c0791741%3A0x5853f18879350127!2sKothari%2C+Duruwa+22412%2C+Nepal!5e0!3m2!1sen!2sro!4v1496953936466\" width=\"600\" height='),
('C11', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d113825.02589594263!2d86.22353267694943!3d26.934198111792803!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eeaf9ffcb54d69%3A0x2c0647bcd2babf3b!2sKatari%2C+Nepal!5e0!3m2!1sen!2sro!4v1497040932472');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `morti`
--

CREATE TABLE `morti` (
  `idCutremur` varchar(10) NOT NULL,
  `idPersoana` varchar(10) NOT NULL,
  `nume` varchar(15) DEFAULT NULL,
  `prenume` varchar(15) DEFAULT NULL,
  `dataNastere` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `morti`
--

INSERT INTO `morti` (`idCutremur`, `idPersoana`, `nume`, `prenume`, `dataNastere`) VALUES
('C1', 'M1', 'Ionescu', 'Ion', '1997-02-17 10:07:00.000000'),
('C10', 'M10', 'Asofiei', 'Constantin', '1995-11-21 00:09:12.000000'),
('C1', 'M100', 'Bobuz', 'Ervin', '2006-11-11 03:34:34.507625'),
('C4', 'M101', 'Gutanu', 'Vasile', '2018-11-10 09:57:39.681696'),
('C1', 'M102', 'Simion', 'Iulian', '2019-02-27 04:06:18.549419'),
('C3', 'M103', 'Simion', 'Amelia', '1990-10-27 18:30:28.500155'),
('C4', 'M104', 'Maricescu', 'Vasile', '1996-05-20 15:44:11.236251'),
('C3', 'M105', 'Simion', 'Alin', '2012-08-07 04:05:42.115635'),
('C2', 'M106', 'Baran', 'Mihai', '1994-12-19 22:43:13.706358'),
('C1', 'M107', 'Pojoga', 'Vasile', '1998-04-14 06:14:37.269797'),
('C1', 'M108', 'Gutanu', 'Mihai', '1993-10-12 05:04:06.694156'),
('C3', 'M109', 'Gutanu', 'Elena', '2022-09-08 08:07:09.557062'),
('C11', 'M11', 'Baran', 'Andrei', '1995-02-17 12:26:20.000000'),
('C10', 'M110', 'Florescu', 'Stefan', '2010-02-28 03:59:25.841858'),
('C12', 'M111', 'Stan', 'Mihai', '2013-03-06 07:22:05.610144'),
('C1', 'M112', 'Gutanu', 'Vasile', '2013-02-14 00:32:55.970935'),
('C6', 'M113', 'Gutanu', 'Ciprian', '2026-03-03 20:01:23.636985'),
('C6', 'M114', 'Gutanu', 'Vasile', '1990-03-28 07:15:14.007988'),
('C5', 'M115', 'Pojoga', 'Stefan', '2012-06-10 17:31:52.438623'),
('C7', 'M116', 'Gutanu', 'Stefan', '1999-04-30 15:03:34.585771'),
('C4', 'M117', 'Stanu', 'Vasile', '2018-05-14 10:27:10.509565'),
('C9', 'M118', 'Simion', 'Constantin', '2000-09-04 17:18:44.958951'),
('C3', 'M119', 'Stan', 'Andrei', '2014-10-14 20:52:30.363263'),
('C12', 'M12', 'Pojoga', 'Vasile', '1995-02-17 03:22:08.000000'),
('C2', 'M120', 'Maricescu', 'Iulian', '2030-01-02 07:57:50.756662'),
('C9', 'M121', 'Gutanu', 'Vasile', '2028-05-28 10:24:08.883987'),
('C12', 'M122', 'Baran', 'Vasile', '2012-03-06 07:18:51.066684'),
('C10', 'M123', 'Baran', 'Vasile', '1993-03-21 10:56:27.762533'),
('C2', 'M124', 'Bobuz', 'Vasile', '2016-03-28 22:38:11.112338'),
('C11', 'M125', 'Pojoga', 'Amelia', '2025-03-23 18:51:40.474617'),
('C9', 'M126', 'Bobuz', 'Vasile', '2020-10-31 01:12:45.228451'),
('C1', 'M127', 'Florescu', 'Iulian', '2005-02-14 11:38:05.720276'),
('C10', 'M128', 'Stan', 'Vasile', '2009-04-10 02:42:03.682588'),
('C1', 'M129', 'Gutanu', 'Vasile', '2010-07-04 10:00:30.734431'),
('C1', 'M13', 'Simion', 'Ciprian', '1995-02-17 08:10:10.000000'),
('C5', 'M130', 'Simion', 'Vasile', '2003-09-22 11:45:46.148692'),
('C1', 'M131', 'Gutanu', 'Elena', '2009-02-27 08:02:42.000424'),
('C1', 'M132', 'Baran', 'Ciprian', '2013-10-05 13:39:30.869042'),
('C6', 'M133', 'Pojoga', 'Stefan', '1994-01-14 11:24:44.991856'),
('C7', 'M134', 'Baran', 'Ciprian', '2011-12-28 22:41:48.752122'),
('C1', 'M135', 'Gutanu', 'Vasile', '1995-01-12 22:31:18.961291'),
('C9', 'M136', 'Gutanu', 'Elena', '2012-04-02 11:57:05.171082'),
('C3', 'M137', 'Pojoga', 'Vasile', '2006-04-23 13:12:51.190812'),
('C1', 'M138', 'Pojoga', 'Elena', '1990-03-28 14:16:18.213529'),
('C8', 'M139', 'Gutanu', 'Mihai', '2007-12-31 18:15:55.526567'),
('C2', 'M14', 'Necula', 'Ervin', '1995-02-17 12:26:20.000000'),
('C12', 'M140', 'Florescu', 'Iulian', '2026-10-30 16:56:54.336273'),
('C5', 'M141', 'Asofiei', 'Vasile', '1995-03-27 03:49:44.495641'),
('C10', 'M142', 'Asofiei', 'Mihai', '2014-11-19 14:29:36.958818'),
('C4', 'M143', 'Gutanu', 'Vasile', '2018-01-31 20:20:35.125373'),
('C2', 'M144', 'Stan', 'Vasile', '2016-12-14 15:32:39.256093'),
('C5', 'M145', 'Florescu', 'Mihai', '2025-08-16 11:29:48.481781'),
('C10', 'M146', 'Stan', 'Vasile', '2018-12-01 10:52:13.446058'),
('C6', 'M147', 'Maricescu', 'Ervin', '1995-01-02 23:28:05.638800'),
('C8', 'M148', 'Baran', 'Stefan', '1995-08-20 19:03:48.705188'),
('C4', 'M149', 'Simion', 'Amelia', '2007-04-27 14:11:39.096106'),
('C3', 'M15', 'Gutanu', 'Sergiu', '1995-02-17 00:09:12.000000'),
('C2', 'M150', 'Stan', 'Mihai', '2027-05-22 06:33:00.329127'),
('C3', 'M151', 'Pojoga', 'Amelia', '2022-08-13 10:24:32.938203'),
('C2', 'M152', 'Simion', 'Iulian', '2009-02-03 09:10:23.130719'),
('C5', 'M153', 'Bobuz', 'Iulian', '2014-05-02 22:06:39.629258'),
('C11', 'M154', 'Simion', 'Stefan', '2022-11-10 03:25:41.544937'),
('C7', 'M155', 'Pojoga', 'Andrei', '2000-08-25 23:16:34.914037'),
('C6', 'M156', 'Gutanu', 'Vasile', '2001-12-09 12:29:36.304415'),
('C1', 'M157', 'Simion', 'Iulian', '2015-12-11 23:25:15.776315'),
('C8', 'M158', 'Gutanu', 'Vasile', '2010-06-27 11:55:04.226328'),
('C11', 'M159', 'Stanu', 'Constantin', '2025-07-01 07:54:49.299779'),
('C1', 'M16', 'Stan', 'Stefan', '1995-02-17 17:13:25.000000'),
('C2', 'M160', 'Pojoga', 'Constantin', '2029-05-10 08:55:38.389518'),
('C3', 'M161', 'Gutanu', 'Stefan', '1995-08-27 14:37:42.934977'),
('C5', 'M162', 'Florescu', 'Amelia', '2028-04-09 04:57:49.590012'),
('C7', 'M163', 'Bobuz', 'Vasile', '2022-02-09 11:48:35.048040'),
('C9', 'M164', 'Maricescu', 'Vasile', '2017-07-22 09:53:26.276097'),
('C4', 'M165', 'Baran', 'Andrei', '2013-12-22 04:13:23.045232'),
('C2', 'M166', 'Simion', 'Iulian', '2001-08-26 09:21:54.538669'),
('C9', 'M167', 'Stan', 'Vasile', '2000-11-11 20:51:29.731862'),
('C12', 'M168', 'Simion', 'Vasile', '2005-11-10 15:31:27.226792'),
('C9', 'M169', 'Simion', 'Vasile', '2018-03-14 02:04:16.678240'),
('C2', 'M17', 'Puisoru', 'Monica', '1995-02-17 07:22:22.000000'),
('C8', 'M170', 'Bobuz', 'Vasile', '2015-12-23 19:22:59.846433'),
('C2', 'M171', 'Gutanu', 'Alin', '2026-02-20 23:07:52.317283'),
('C12', 'M172', 'Stan', 'Mihai', '2013-09-04 10:44:56.609511'),
('C8', 'M173', 'Simion', 'Elena', '2008-09-21 13:20:20.119372'),
('C4', 'M174', 'Gutanu', 'Iulian', '2012-06-19 21:28:41.090517'),
('C2', 'M175', 'Asofiei', 'Constantin', '1991-08-12 08:27:09.754506'),
('C4', 'M176', 'Stan', 'Vasile', '2025-10-29 20:46:14.470855'),
('C6', 'M177', 'Simion', 'Iulian', '2004-07-17 12:11:49.866798'),
('C5', 'M178', 'Gutanu', 'Constantin', '1997-06-15 10:34:14.886838'),
('C6', 'M179', 'Asofiei', 'Mihai', '2012-05-16 18:41:47.337923'),
('C3', 'M18', 'Stanu', 'Alin', '1995-02-17 10:52:32.000000'),
('C3', 'M180', 'Asofiei', 'Andrei', '2001-09-13 14:24:10.539782'),
('C10', 'M181', 'Baran', 'Vasile', '2029-04-15 06:11:59.174781'),
('C4', 'M182', 'Asofiei', 'Vasile', '2005-06-20 01:46:41.832228'),
('C4', 'M183', 'Stanu', 'Vasile', '2002-08-08 10:49:11.595370'),
('C4', 'M184', 'Bobuz', 'Stefan', '2021-03-07 07:13:48.743342'),
('C7', 'M185', 'Stan', 'Elena', '2016-05-06 14:13:03.847687'),
('C5', 'M186', 'Simion', 'Alin', '2009-07-04 09:51:48.415806'),
('C6', 'M187', 'Gutanu', 'Vasile', '2018-07-12 05:03:05.274000'),
('C1', 'M188', 'Baran', 'Ciprian', '2002-09-04 14:28:25.279619'),
('C6', 'M189', 'Gutanu', 'Stefan', '1998-01-28 04:45:05.822365'),
('C4', 'M19', 'Colban', 'Mihai', '1971-12-17 18:47:39.000000'),
('C2', 'M190', 'Asofiei', 'Alin', '2000-01-29 11:49:24.356661'),
('C3', 'M191', 'Gutanu', 'Amelia', '2025-05-12 20:19:59.041597'),
('C2', 'M192', 'Maricescu', 'Vasile', '2003-04-21 16:59:56.882662'),
('C2', 'M193', 'Gutanu', 'Vasile', '2008-04-10 01:38:48.644927'),
('C7', 'M194', 'Baran', 'Vasile', '2024-12-03 17:23:23.185553'),
('C8', 'M195', 'Stanu', 'Mihai', '2028-01-23 22:46:03.726822'),
('C7', 'M196', 'Simion', 'Vasile', '1996-05-17 23:50:43.032064'),
('C11', 'M197', 'Baran', 'Iulian', '2029-08-27 14:58:55.156002'),
('C8', 'M198', 'Pojoga', 'Vasile', '2020-05-02 13:52:03.201664'),
('C10', 'M199', 'Maricescu', 'Vasile', '1991-07-18 20:39:10.764499'),
('C2', 'M2', 'Florescu', 'Florin', '1991-02-17 11:08:00.000000'),
('C5', 'M20', 'Creanga', 'Anda', '1971-02-14 00:09:12.000000'),
('C1', 'M200', 'Baran', 'Ciprian', '1998-06-03 15:46:12.434112'),
('C1', 'M201', 'Simion', 'Mihai', '2024-08-17 03:22:16.042114'),
('C6', 'M202', 'Florescu', 'Vasile', '2015-04-09 12:24:09.940101'),
('C4', 'M203', 'Gutanu', 'Constantin', '2027-03-13 18:10:04.149908'),
('C7', 'M204', 'Maricescu', 'Ervin', '2025-02-10 12:01:31.752517'),
('C7', 'M205', 'Baran', 'Stefan', '2020-04-17 13:05:10.923491'),
('C1', 'M206', 'Gutanu', 'Vasile', '2021-08-29 05:00:39.272368'),
('C12', 'M207', 'Gutanu', 'Alin', '2020-01-31 04:31:21.627870'),
('C9', 'M208', 'Gutanu', 'Constantin', '2005-07-29 01:10:43.808842'),
('C5', 'M209', 'Gutanu', 'Elena', '2022-09-11 16:54:05.714639'),
('C6', 'M21', 'Bustean', 'Amelia', '1971-07-17 17:47:39.000000'),
('C9', 'M210', 'Pojoga', 'Vasile', '1998-01-12 08:58:16.138449'),
('C11', 'M211', 'Pojoga', 'Mihai', '1994-04-30 04:29:08.714292'),
('C3', 'M212', 'Maricescu', 'Constantin', '1991-02-16 04:56:36.721537'),
('C4', 'M213', 'Florescu', 'Vasile', '2022-12-24 19:11:29.169689'),
('C1', 'M214', 'Baran', 'Amelia', '1996-01-13 07:39:52.100271'),
('C5', 'M215', 'Pojoga', 'Stefan', '2009-09-11 16:30:03.324072'),
('C2', 'M216', 'Gutanu', 'Alin', '2009-08-17 13:40:56.306836'),
('C2', 'M217', 'Gutanu', 'Vasile', '2006-09-12 14:08:25.030084'),
('C12', 'M218', 'Simion', 'Iulian', '2009-09-03 15:22:21.857998'),
('C8', 'M219', 'Gutanu', 'Iulian', '2014-03-06 10:32:48.991361'),
('C7', 'M22', 'Dobanda', 'Elena', '1971-02-17 17:13:25.000000'),
('C3', 'M220', 'Gutanu', 'Iulian', '2007-08-07 17:28:02.941143'),
('C8', 'M221', 'Gutanu', 'Vasile', '1997-09-04 10:01:30.761377'),
('C7', 'M222', 'Gutanu', 'Vasile', '2014-12-15 14:10:02.076427'),
('C12', 'M223', 'Baran', 'Mihai', '2024-11-16 07:46:20.453901'),
('C12', 'M224', 'Maricescu', 'Vasile', '1991-06-13 21:58:46.862222'),
('C2', 'M225', 'Gutanu', 'Vasile', '1995-04-30 16:40:57.415498'),
('C1', 'M226', 'Asofiei', 'Andrei', '2008-01-19 07:10:34.824827'),
('C2', 'M227', 'Simion', 'Stefan', '2021-05-04 17:47:38.631518'),
('C12', 'M228', 'Baran', 'Vasile', '2023-02-26 03:31:09.134783'),
('C6', 'M229', 'Gutanu', 'Vasile', '2011-04-09 12:02:32.549476'),
('C8', 'M23', 'Buza', 'Vasile', '1978-08-17 07:10:10.000000'),
('C3', 'M230', 'Stan', 'Vasile', '2014-10-13 23:52:32.377745'),
('C4', 'M231', 'Pojoga', 'Vasile', '2029-07-08 17:29:27.208658'),
('C9', 'M232', 'Stan', 'Vasile', '1993-10-10 23:09:30.625942'),
('C12', 'M233', 'Maricescu', 'Vasile', '2000-06-12 23:57:59.079436'),
('C3', 'M234', 'Baran', 'Iulian', '2012-08-08 15:57:07.148576'),
('C12', 'M235', 'Gutanu', 'Andrei', '2010-07-02 05:08:08.674970'),
('C10', 'M236', 'Maricescu', 'Vasile', '1994-11-13 16:09:26.413585'),
('C6', 'M237', 'Gutanu', 'Stefan', '1997-08-23 05:00:27.224059'),
('C2', 'M238', 'Bobuz', 'Stefan', '2015-05-05 12:09:48.813710'),
('C10', 'M239', 'Stanu', 'Constantin', '2023-04-10 18:17:56.666281'),
('C9', 'M24', 'Solomon', 'Tamara', '1979-02-07 03:22:08.000000'),
('C1', 'M240', 'Stan', 'Iulian', '2021-12-13 16:04:59.293449'),
('C8', 'M241', 'Stan', 'Andrei', '1992-02-18 14:59:43.058391'),
('C4', 'M242', 'Simion', 'Vasile', '2001-09-28 20:11:06.092761'),
('C9', 'M243', 'Gutanu', 'Vasile', '2007-01-17 22:05:15.281097'),
('C5', 'M244', 'Baran', 'Stefan', '2006-02-14 18:46:37.300544'),
('C9', 'M245', 'Maricescu', 'Stefan', '2013-06-09 18:40:34.424666'),
('C7', 'M246', 'Gutanu', 'Stefan', '2018-12-28 10:36:51.747453'),
('C7', 'M247', 'Pojoga', 'Andrei', '2016-06-29 22:54:33.075287'),
('C10', 'M248', 'Gutanu', 'Stefan', '1992-03-21 15:45:35.099538'),
('C9', 'M249', 'Stanu', 'Ciprian', '1998-09-17 01:55:58.839035'),
('C10', 'M25', 'Bobuz', 'Nicolae', '1977-02-07 18:47:39.000000'),
('C11', 'M250', 'Stan', 'Stefan', '1996-08-01 00:07:05.815334'),
('C11', 'M26', 'Tarzuman', 'Iulian', '1974-08-09 17:47:39.000000'),
('C12', 'M27', 'Asoltanie', 'Laura', '1975-07-17 09:52:32.000000'),
('C1', 'M28', 'Palade', 'Catalin', '1972-06-03 06:22:22.000000'),
('C2', 'M29', 'Spac', 'Valentin', '1983-05-29 07:10:10.000000'),
('C3', 'M3', 'Maricescu', 'Maricica', '1995-12-17 10:07:00.000000'),
('C3', 'M30', 'Hagiu', 'Bogdan', '1982-02-28 18:47:39.000000'),
('C1', 'M31', 'Vlidu', 'Iulian', '1984-02-27 18:47:39.000000'),
('C2', 'M32', 'Bejan', 'Mariana', '1994-02-25 07:22:22.000000'),
('C3', 'M33', 'Barsan', 'Ionut', '1986-04-23 02:22:08.000000'),
('C4', 'M34', ' Borosu', 'Ana', '1987-02-19 18:47:39.000000'),
('C5', 'M35', 'Ciucanel', 'Adrian', '1999-03-16 18:47:39.000000'),
('C6', 'M36', 'Alexa', 'Ioana', '1999-01-15 17:13:25.000000'),
('C7', 'M37', 'Coriandru', 'Mona', '1998-12-14 07:22:22.000000'),
('C8', 'M38', 'Patrunjel', 'Corina', '1998-11-07 03:22:08.000000'),
('C9', 'M39', 'Zarzavat', 'Monica', '1998-10-17 06:22:22.000000'),
('C4', 'M4', 'Cristescu', 'Cristian', '1995-02-09 03:22:08.000000'),
('C10', 'M40', 'Poale', 'Adriana', '1998-09-17 07:10:10.000000'),
('C11', 'M41', 'Martin', 'Agripina', '1998-08-04 17:47:39.000000'),
('C12', 'M42', 'Barcan', 'Aglaia', '1995-08-09 17:47:39.000000'),
('C1', 'M43', 'Lucutar', 'Sergiu', '1995-07-07 16:13:25.000000'),
('C2', 'M44', 'Vataman', 'Loredana', '1994-06-27 11:26:20.000000'),
('C3', 'M45', 'Luca', 'Alexandru', '1994-05-16 09:52:32.000000'),
('C1', 'M46', 'Moisii', 'Cosmin', '1994-04-27 06:22:22.000000'),
('C2', 'M47', 'Tucar', 'Gabriel', '1994-04-12 16:13:25.000000'),
('C3', 'M48', 'Filimon', 'Danut', '1993-03-11 03:22:08.000000'),
('C4', 'M49', 'Luncasu', 'Alberto', '1993-01-13 08:10:10.000000'),
('C5', 'M5', 'Nicolescu', 'Nicoleta', '1989-07-16 23:09:12.000000'),
('C5', 'M50', 'Gavriliuc', 'Gabriel', '1993-02-14 12:26:20.000000'),
('C7', 'M51', 'Vlidu', 'Andrei', '1995-11-16 00:02:50.614820'),
('C4', 'M52', 'Bejan', 'Florin', '2014-04-26 00:03:27.343031'),
('C11', 'M53', 'Necula', 'Amelia', '2006-04-23 01:15:58.828546'),
('C11', 'M54', 'Bejan', 'Ciprian', '2028-09-19 07:37:14.853795'),
('C5', 'M55', 'Stan', 'Constantin', '2023-05-14 08:59:29.362973'),
('C9', 'M56', 'Vlidu', 'Vasile', '2003-12-31 11:36:04.050553'),
('C1', 'M57', 'Creanga', 'Iulian', '2023-11-30 08:27:45.056830'),
('C8', 'M58', 'Hagiu', 'Andrei', '2023-12-23 06:18:02.739688'),
('C2', 'M59', 'Creanga', 'Monica', '1992-07-17 00:49:54.425361'),
('C6', 'M6', 'Radulescu', 'Radu', '1999-02-16 07:22:22.000000'),
('C5', 'M60', 'Maricescu', 'Valentin', '2016-05-16 15:13:04.523460'),
('C10', 'M61', 'Bustean', 'Stefan', '2000-11-01 15:50:26.428350'),
('C7', 'M62', 'Necula', 'Maricica', '2012-05-31 05:29:45.414986'),
('C12', 'M63', 'Colban', 'Valentin', '2001-02-06 16:05:35.761227'),
('C4', 'M64', 'Hagiu', 'Sergiu', '2008-04-27 15:15:53.678722'),
('C11', 'M65', 'Barsan', 'Catalin', '2027-12-21 15:53:40.362167'),
('C2', 'M66', 'Creanga', 'Vasile', '1998-06-05 04:36:25.324882'),
('C3', 'M67', 'Stan', 'Florin', '2019-03-17 21:59:46.932363'),
('C6', 'M68', 'Creanga', 'Mihai', '2000-01-03 11:09:59.545539'),
('C11', 'M69', 'Tarzuman', 'Valentin', '2025-05-24 08:18:52.441616'),
('C7', 'M7', 'Marinescu', 'Maria', '1995-12-18 08:10:10.000000'),
('C4', 'M70', 'Bobuz', 'Maricica', '2003-02-24 15:26:11.905707'),
('C4', 'M71', 'Hagiu', 'Ervin', '2026-08-29 16:34:05.857731'),
('C11', 'M72', 'Tarzuman', 'Ionut', '2013-11-09 22:29:41.498318'),
('C2', 'M73', 'Hagiu', 'Alin', '2020-04-09 18:58:33.212316'),
('C3', 'M74', 'Spac', 'Alin', '2020-05-23 09:43:19.743181'),
('C8', 'M75', 'Buza', 'Stefan', '2029-11-04 10:30:36.068257'),
('C4', 'M76', 'Bobuz', 'Nicolae', '2026-06-14 09:25:21.175065'),
('C4', 'M77', 'Bustean', 'Ionut', '1994-06-14 06:13:48.695186'),
('C12', 'M78', 'Buza', 'Elena', '2002-02-07 03:07:42.601194'),
('C5', 'M79', 'Hagiu', 'Valentin', '1993-11-05 15:48:49.594665'),
('C8', 'M8', 'Mihaiescu', 'Mihai', '1992-09-17 16:13:25.000000'),
('C7', 'M80', 'Pojoga', 'Mihai', '1993-03-10 15:54:16.793002'),
('C10', 'M81', 'Palade', 'Tamara', '2011-09-23 21:33:07.741822'),
('C6', 'M82', 'Tarzuman', 'Monica', '2007-01-02 15:57:30.589231'),
('C10', 'M83', 'Barsan', 'Catalin', '2005-02-15 02:34:46.791058'),
('C2', 'M84', 'Dobanda', 'Ciprian', '2020-08-31 00:45:28.707563'),
('C9', 'M85', 'Stan', 'Iulian', '1992-05-21 04:14:59.875963'),
('C1', 'M86', 'Florescu', 'Stefan', '2017-04-02 16:30:27.212375'),
('C6', 'M87', 'Buza', 'Anda', '2020-09-26 17:28:02.474846'),
('C9', 'M88', 'Asofiei', 'Elena', '2018-11-17 15:06:24.073000'),
('C9', 'M89', 'Stanu', 'Elena', '2027-02-19 17:24:11.592410'),
('C9', 'M9', 'Gigescu', 'Gigel', '1999-02-15 10:52:32.000000'),
('C2', 'M90', 'Puisoru', 'Sergiu', '2010-01-20 12:28:47.461250'),
('C9', 'M91', 'Dobanda', 'Bogdan', '2009-11-25 18:41:58.588040'),
('C4', 'M92', 'Stan', 'Maricica', '2016-09-21 21:12:07.301742'),
('C6', 'M93', 'Buza', 'Maricica', '1995-10-19 16:26:49.316519'),
('C9', 'M94', 'Solomon', 'Amelia', '2003-08-22 14:45:47.425015'),
('C9', 'M95', 'Pojoga', 'Florin', '2013-04-02 09:00:17.461009'),
('C12', 'M96', 'Creanga', 'Bogdan', '2009-09-04 07:18:03.784898'),
('C10', 'M97', 'Vlidu', 'Monica', '2019-07-23 14:01:57.570783'),
('C6', 'M98', 'Palade', 'Vasile', '1996-04-16 01:59:25.377005'),
('C4', 'M99', 'Solomon', 'Florin', '2024-08-03 05:39:38.965400');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `nevatamati`
--

CREATE TABLE `nevatamati` (
  `idCutremur` varchar(10) NOT NULL,
  `idPersoana` varchar(10) NOT NULL,
  `nume` varchar(15) DEFAULT NULL,
  `prenume` varchar(15) DEFAULT NULL,
  `dataNastere` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `nevatamati`
--

INSERT INTO `nevatamati` (`idCutremur`, `idPersoana`, `nume`, `prenume`, `dataNastere`) VALUES
('C1', 'N1', 'Pescaru', 'Jennifer', '1997-02-16 22:00:00.000000'),
('C10', 'N10', 'Muraru', 'Jane', '1995-11-20 22:00:00.000000'),
('C12', 'N100', 'Marculet', 'Damien', '2017-04-01 03:37:01.422682'),
('C1', 'N101', 'Burlacu', 'Damien', '2028-08-04 21:57:58.342632'),
('C11', 'N102', 'Muraru', 'Justin', '2005-09-13 07:55:26.005275'),
('C4', 'N103', 'Manolache', 'Bianka', '2016-08-08 23:21:49.750647'),
('C7', 'N104', 'Lungu', 'Rob', '2006-05-06 18:59:46.220326'),
('C3', 'N105', 'Burlacu', 'Julien', '2000-11-03 14:44:58.540597'),
('C8', 'N106', 'Topciu', 'Julien', '1996-11-29 09:59:29.050943'),
('C6', 'N107', 'Citea', 'Jane', '2027-10-01 16:29:39.276434'),
('C12', 'N108', 'Burlacu', 'Damien', '2015-11-10 19:33:54.455837'),
('C8', 'N109', 'Marcu', 'Christopher', '1994-08-03 18:39:58.015992'),
('C11', 'N11', 'Muratura', 'Josiah', '1995-02-16 22:00:00.000000'),
('C2', 'N110', 'Topciu', 'Bianka', '2023-07-23 18:28:51.227888'),
('C2', 'N111', 'Hriscu', 'Rob', '1993-01-02 05:25:54.417616'),
('C7', 'N112', 'Marculet', 'Rob', '2010-09-02 13:34:16.079433'),
('C1', 'N113', 'Topciu', 'Bianka', '2019-09-10 13:37:54.259101'),
('C8', 'N114', 'Tatu', 'Jane', '2001-03-01 09:48:10.346320'),
('C12', 'N115', 'Burlacu', 'Justin', '1990-11-15 23:31:30.963220'),
('C9', 'N116', 'Horghidan', 'Damien', '2014-03-08 09:26:21.446097'),
('C9', 'N117', 'Citea', 'Justin', '2004-09-29 21:25:03.241307'),
('C6', 'N118', 'Tatu', 'Rob', '1999-10-19 20:53:43.003386'),
('C5', 'N119', 'Marculet', 'Jane', '1995-08-23 09:47:34.162104'),
('C12', 'N12', 'Horghidan', 'Justin', '1995-02-16 22:00:00.000000'),
('C2', 'N120', 'Citea', 'Julien', '2021-06-16 08:38:52.145623'),
('C6', 'N121', 'Topciu', 'Jane', '2023-11-08 05:34:23.857714'),
('C4', 'N122', 'Lungu', 'Bianka', '2026-10-22 04:19:50.561298'),
('C4', 'N123', 'Citea', 'Bianka', '2028-11-17 15:14:16.904268'),
('C8', 'N124', 'Tatu', 'Jane', '2011-03-19 07:01:28.821064'),
('C5', 'N125', 'Marcu', 'Julien', '2020-10-22 09:35:38.672616'),
('C9', 'N126', 'Marculet', 'Julien', '2026-12-12 11:44:56.892299'),
('C1', 'N127', 'Marculet', 'Bianka', '2007-11-11 04:40:02.909566'),
('C4', 'N128', 'Marculet', 'Bianka', '2026-05-26 22:15:33.808854'),
('C11', 'N129', 'Topciu', 'Damien', '2016-12-04 12:28:24.146355'),
('C1', 'N13', 'Tatu', 'Josie', '1995-02-16 22:00:00.000000'),
('C8', 'N130', 'Tatu', 'Rob', '2014-02-12 03:47:06.758815'),
('C7', 'N131', 'Burlacu', 'Damien', '1995-06-12 18:30:04.521740'),
('C11', 'N132', 'Burlacu', 'Rob', '2002-01-22 14:22:57.330753'),
('C11', 'N133', 'Marculet', 'Damien', '2018-06-07 20:17:21.953011'),
('C11', 'N134', 'Burlacu', 'Bianka', '1999-10-07 13:57:05.932718'),
('C11', 'N135', 'Topciu', 'Justin', '2006-11-28 21:08:27.858353'),
('C10', 'N136', 'Citea', 'Justin', '2019-06-17 07:22:42.260641'),
('C12', 'N137', 'Lungu', 'Rob', '2019-07-28 16:51:04.423142'),
('C4', 'N138', 'Tatu', 'Rob', '2005-01-25 11:36:51.708120'),
('C9', 'N139', 'Marculet', 'Rob', '1999-06-28 23:34:09.496640'),
('C2', 'N14', 'Topciu', 'James', '1995-02-16 22:00:00.000000'),
('C7', 'N140', 'Lungu', 'Damien', '2019-05-12 07:44:31.899769'),
('C2', 'N141', 'Marculet', 'Rob', '1991-06-16 17:47:50.160362'),
('C10', 'N142', 'Tatu', 'Justin', '1992-01-14 12:15:04.086245'),
('C12', 'N143', 'Citea', 'Damien', '1997-03-12 12:17:53.491987'),
('C3', 'N144', 'Citea', 'Jane', '2019-11-09 09:06:20.983606'),
('C7', 'N145', 'Muraru', 'Christopher', '2030-09-07 06:58:51.085869'),
('C10', 'N146', 'Burlacu', 'Damien', '2029-09-19 18:45:49.448121'),
('C9', 'N147', 'Topciu', 'Damien', '2011-10-31 11:09:11.930762'),
('C2', 'N148', 'Burlacu', 'Justin', '2010-04-22 17:44:12.465291'),
('C11', 'N149', 'Muratura', 'Justin', '2019-12-22 01:54:21.936979'),
('C3', 'N15', 'Marculet', 'Emily', '1995-02-16 22:00:00.000000'),
('C2', 'N150', 'Topciu', 'Justin', '1992-01-02 21:15:08.371542'),
('C12', 'N151', 'Burlacu', 'Jane', '2016-10-16 07:55:37.483650'),
('C5', 'N152', 'Burlacu', 'Jane', '2029-08-23 05:11:58.693995'),
('C7', 'N153', 'Tatu', 'Bianka', '2003-12-15 21:00:59.007691'),
('C11', 'N154', 'Horghidan', 'Rob', '2026-06-18 02:07:54.992607'),
('C1', 'N155', 'Citea', 'Bianka', '2006-01-26 14:46:35.601489'),
('C11', 'N156', 'Topciu', 'Jane', '1991-12-09 04:26:06.549001'),
('C8', 'N157', 'Marculet', 'Christopher', '2029-02-17 05:40:27.788312'),
('C4', 'N158', 'Marculet', 'Bianka', '1996-05-19 15:46:24.670351'),
('C5', 'N159', 'Topciu', 'Bianka', '2002-05-09 17:23:59.727312'),
('C1', 'N16', 'Burlacu', 'Brandon', '1995-02-16 22:00:00.000000'),
('C8', 'N160', 'Burlacu', 'Justin', '2025-05-26 08:13:25.149422'),
('C1', 'N161', 'Lungu', 'Bianka', '2001-06-03 05:07:44.132633'),
('C3', 'N162', 'Marcu', 'Damien', '1997-08-13 02:06:53.955717'),
('C8', 'N163', 'Marcu', 'Damien', '1999-09-29 00:59:12.783550'),
('C12', 'N164', 'Topciu', 'Damien', '2029-08-15 04:06:31.119141'),
('C9', 'N165', 'Lungu', 'Jane', '2029-12-18 14:18:30.626694'),
('C11', 'N166', 'Marculet', 'Damien', '2018-12-29 19:32:29.371083'),
('C4', 'N167', 'Horghidan', 'Rob', '2010-09-29 01:07:05.848338'),
('C6', 'N168', 'Muratura', 'Justin', '2015-07-23 07:35:01.934879'),
('C9', 'N169', 'Marculet', 'Bianka', '2016-09-10 09:17:28.097919'),
('C2', 'N17', 'Lionte', 'Bob', '1995-02-16 22:00:00.000000'),
('C5', 'N170', 'Muraru', 'Damien', '2030-05-21 05:55:36.990992'),
('C10', 'N171', 'Tatu', 'Jane', '1991-04-15 09:24:56.316987'),
('C2', 'N172', 'Horghidan', 'Damien', '2014-05-03 06:04:30.728318'),
('C1', 'N173', 'Burlacu', 'Jane', '2015-10-04 23:53:33.064356'),
('C4', 'N174', 'Tatu', 'Justin', '2021-05-01 20:02:48.734270'),
('C8', 'N175', 'Burlacu', 'Jane', '2021-04-07 21:12:43.432319'),
('C9', 'N176', 'Tatu', 'Jane', '1996-10-12 06:24:30.637055'),
('C6', 'N177', 'Citea', 'Bianka', '2021-02-21 12:33:27.043985'),
('C7', 'N178', 'Burlacu', 'Rob', '2024-01-29 03:08:07.259405'),
('C5', 'N179', 'Topciu', 'Josiah', '1999-05-08 02:10:08.838038'),
('C3', 'N18', 'Sirghe', 'Rob', '1995-02-16 22:00:00.000000'),
('C8', 'N180', 'Burlacu', 'Damien', '2019-07-20 03:14:59.308679'),
('C7', 'N181', 'Topciu', 'Justin', '2008-06-19 01:05:05.307524'),
('C8', 'N182', 'Burlacu', 'Damien', '2001-06-28 15:52:28.045586'),
('C9', 'N183', 'Burlacu', 'Rob', '1994-09-16 19:31:17.701565'),
('C2', 'N184', 'Burlacu', 'Jane', '2027-09-19 07:36:14.912391'),
('C8', 'N185', 'Burlacu', 'Rob', '1993-10-10 15:14:52.951351'),
('C3', 'N186', 'Muraru', 'Jane', '2021-08-07 18:01:47.262018'),
('C7', 'N187', 'Lungu', 'Julien', '2007-03-16 12:47:35.073056'),
('C7', 'N188', 'Lungu', 'Rob', '2019-05-24 13:37:54.255129'),
('C2', 'N189', 'Tatu', 'Rob', '2024-03-29 17:29:50.929041'),
('C4', 'N19', 'Marcu', 'Taylor', '1971-12-16 22:00:00.000000'),
('C1', 'N190', 'Muratura', 'Justin', '1993-07-10 08:48:46.250758'),
('C9', 'N191', 'Topciu', 'Jane', '2015-11-18 17:45:48.108987'),
('C5', 'N192', 'Hriscu', 'Bianka', '1991-11-30 10:21:42.525909'),
('C12', 'N193', 'Topciu', 'Bianka', '2028-03-26 14:08:49.292426'),
('C12', 'N194', 'Muraru', 'Jane', '2011-09-22 15:37:31.110301'),
('C10', 'N195', 'Manolache', 'Justin', '2006-10-18 06:42:17.506803'),
('C9', 'N196', 'Lungu', 'Damien', '2029-11-06 12:22:56.263199'),
('C10', 'N197', 'Marculet', 'Bianka', '2019-12-01 23:51:07.023751'),
('C3', 'N198', 'Tatu', 'Jane', '2026-06-07 20:12:18.975016'),
('C2', 'N199', 'Marculet', 'Jane', '1992-02-08 14:58:42.976550'),
('C2', 'N2', 'Grigorosoaia', 'Miley', '1991-02-16 22:00:00.000000'),
('C5', 'N20', 'Hriscu', 'Anisia', '1971-02-13 22:00:00.000000'),
('C8', 'N200', 'Manolache', 'Jane', '2030-12-10 10:12:01.417559'),
('C1', 'N201', 'Topciu', 'Julien', '2015-03-08 01:35:58.319442'),
('C3', 'N202', 'Citea', 'Julien', '2001-08-02 00:30:43.634588'),
('C11', 'N203', 'Muratura', 'Jane', '2003-11-14 03:03:16.496346'),
('C9', 'N204', 'Lungu', 'Bianka', '2020-10-22 12:38:54.135625'),
('C1', 'N205', 'Citea', 'Rob', '2009-05-14 19:30:04.929884'),
('C4', 'N206', 'Burlacu', 'Jane', '2023-05-14 11:02:44.540960'),
('C10', 'N207', 'Horghidan', 'Rob', '2010-03-09 03:57:12.377409'),
('C3', 'N208', 'Citea', 'Jane', '2022-12-21 18:19:09.171737'),
('C8', 'N209', 'Burlacu', 'Jane', '2028-08-02 10:05:33.236635'),
('C6', 'N21', 'Mancas', 'Britney', '1971-07-16 21:00:00.000000'),
('C3', 'N210', 'Topciu', 'Rob', '2028-10-01 23:34:57.534277'),
('C4', 'N211', 'Marculet', 'Bianka', '2005-01-11 08:52:12.299650'),
('C5', 'N212', 'Muratura', 'Jane', '2006-04-28 19:57:33.191980'),
('C1', 'N213', 'Lungu', 'Rob', '2003-05-08 10:31:36.949419'),
('C3', 'N214', 'Horghidan', 'Rob', '2005-08-20 06:09:33.726609'),
('C12', 'N215', 'Lungu', 'Julien', '2021-02-25 03:24:41.185624'),
('C5', 'N216', 'Burlacu', 'Damien', '2006-11-11 07:34:37.051939'),
('C7', 'N217', 'Marculet', 'Justin', '2010-02-28 07:54:00.773600'),
('C11', 'N218', 'Marculet', 'Damien', '1996-11-28 13:05:58.285110'),
('C4', 'N219', 'Burlacu', 'Damien', '2027-10-04 13:18:43.197008'),
('C7', 'N22', 'Nicoara', 'Damien', '1971-02-16 22:00:00.000000'),
('C5', 'N220', 'Burlacu', 'Julien', '2020-02-02 15:24:46.757080'),
('C9', 'N221', 'Muraru', 'Jane', '2025-06-15 11:10:13.328082'),
('C6', 'N222', 'Citea', 'Julien', '2016-01-08 22:09:53.392659'),
('C6', 'N223', 'Burlacu', 'Julien', '2024-04-16 09:39:41.594731'),
('C12', 'N224', 'Muratura', 'Justin', '2031-01-24 01:00:01.763451'),
('C5', 'N225', 'Marculet', 'Christopher', '2020-03-14 12:22:31.891350'),
('C3', 'N226', 'Burlacu', 'Bianka', '1997-11-26 23:16:46.153488'),
('C6', 'N227', 'Lungu', 'Justin', '2009-02-03 05:12:34.987730'),
('C5', 'N228', 'Horghidan', 'Damien', '1994-12-18 19:48:39.232521'),
('C4', 'N229', 'Topciu', 'Justin', '2010-04-01 09:46:21.547218'),
('C8', 'N23', 'Piclea', 'Noah', '1978-08-16 21:00:00.000000'),
('C2', 'N230', 'Marcu', 'Bianka', '2001-04-04 10:38:17.004100'),
('C10', 'N231', 'Horghidan', 'Justin', '1996-10-18 08:37:39.764323'),
('C9', 'N232', 'Burlacu', 'Julien', '2017-07-22 16:54:29.928239'),
('C8', 'N233', 'Burlacu', 'Rob', '2006-12-04 08:23:43.144398'),
('C11', 'N234', 'Muraru', 'Rob', '2002-04-23 12:47:59.724960'),
('C3', 'N235', 'Lungu', 'Bianka', '2003-01-10 01:38:11.944835'),
('C3', 'N236', 'Muraru', 'Jane', '2003-02-28 00:05:27.889626'),
('C3', 'N237', 'Muraru', 'Justin', '2024-03-04 10:41:54.746375'),
('C6', 'N238', 'Tatu', 'Damien', '2022-03-28 07:20:17.356862'),
('C12', 'N239', 'Topciu', 'Bianka', '2011-12-05 09:53:49.305261'),
('C9', 'N24', 'Poenaru', 'Tatiana', '1979-02-06 22:00:00.000000'),
('C9', 'N240', 'Tatu', 'Bianka', '2013-09-10 14:01:21.478737'),
('C10', 'N241', 'Hriscu', 'Bianka', '1998-11-14 02:31:56.582913'),
('C1', 'N242', 'Burlacu', 'Justin', '2030-10-11 17:46:49.341629'),
('C8', 'N243', 'Burlacu', 'Jane', '2014-03-31 07:18:39.743085'),
('C3', 'N244', 'Burlacu', 'Jane', '2025-01-29 15:10:14.335563'),
('C7', 'N245', 'Horghidan', 'Rob', '2003-11-28 09:50:11.871347'),
('C6', 'N246', 'Tatu', 'Rob', '2015-04-09 01:26:17.826838'),
('C4', 'N247', 'Lungu', 'Bianka', '1998-02-28 23:27:40.660754'),
('C10', 'N248', 'Burlacu', 'Christopher', '1995-08-11 17:57:19.749493'),
('C9', 'N249', 'Burlacu', 'Jane', '2015-05-16 09:02:19.348104'),
('C10', 'N25', 'Citea', 'Christopher', '1977-02-06 22:00:00.000000'),
('C6', 'N250', 'Marculet', 'Rob', '2006-03-09 10:32:25.323178'),
('C11', 'N26', 'Rusu', 'Romeo', '1974-08-08 21:00:00.000000'),
('C12', 'N27', 'Hardon', 'Julien', '1975-07-16 21:00:00.000000'),
('C1', 'N28', 'Manolache', 'Drew', '1972-06-02 21:00:00.000000'),
('C2', 'N29', 'Lungu', 'Valentina', '1983-05-28 21:00:00.000000'),
('C3', 'N3', 'Martiniuc', 'Ashton', '1995-12-16 22:00:00.000000'),
('C3', 'N30', 'Juravle', 'Bianka', '1982-02-27 22:00:00.000000'),
('C1', 'N31', 'Boboc', 'Hannah', '1984-02-26 22:00:00.000000'),
('C2', 'N32', 'Ifrim', 'Billy', '1994-02-24 22:00:00.000000'),
('C3', 'N33', 'Benchea', 'Moises', '1986-04-22 21:00:00.000000'),
('C4', 'N34', 'Nicola', 'Bill', '1987-02-18 22:00:00.000000'),
('C5', 'N35', 'Belciug', 'Helen', '1999-03-15 22:00:00.000000'),
('C6', 'N36', 'Lucaci', 'Hillary', '1999-01-14 22:00:00.000000'),
('C7', 'N37', 'Piriu', 'Kevin', '1998-12-13 22:00:00.000000'),
('C8', 'N38', 'Herscovici', 'Beyonce', '1998-11-06 22:00:00.000000'),
('C9', 'N39', 'Arvinte', 'Rihanna', '1998-10-16 21:00:00.000000'),
('C4', 'N4', 'Gospodaru', 'Christian', '1995-02-08 22:00:00.000000'),
('C10', 'N40', 'Antonie', 'Joe', '1998-09-16 21:00:00.000000'),
('C11', 'N41', 'Filip', 'Daniel', '1998-08-03 21:00:00.000000'),
('C12', 'N42', 'Iosub', 'Catherine', '1995-08-08 21:00:00.000000'),
('C1', 'N43', 'Stolnicu', 'John', '1995-07-06 21:00:00.000000'),
('C2', 'N44', 'Ciofu', 'Devin', '1994-06-26 21:00:00.000000'),
('C3', 'N45', 'Grosu', 'Megan', '1994-05-15 21:00:00.000000'),
('C1', 'N46', 'Perju', 'Angela', '1994-04-26 21:00:00.000000'),
('C2', 'N47', 'Simionescu', 'Gabriel', '1994-04-11 21:00:00.000000'),
('C3', 'N48', 'Manganu', 'Ralph', '1993-03-10 22:00:00.000000'),
('C4', 'N49', 'Cazacu', 'Gerry', '1993-01-12 22:00:00.000000'),
('C5', 'N5', 'Chiorcea', 'Nicole', '1989-07-16 21:00:00.000000'),
('C5', 'N50', 'Pintilie', 'Kieran', '1993-02-13 22:00:00.000000'),
('C8', 'N51', 'Grigorosoaia', 'Noah', '1994-10-10 02:15:59.934022'),
('C2', 'N52', 'Horghidan', 'Hannah', '2006-08-26 04:55:24.905464'),
('C5', 'N53', 'Lionte', 'Anisia', '2014-02-14 10:40:29.723912'),
('C4', 'N54', 'Benchea', 'Anisia', '1990-11-30 04:20:38.943172'),
('C6', 'N55', 'Lionte', 'Romeo', '2016-05-04 14:15:17.736533'),
('C4', 'N56', 'Manolache', 'Britney', '2018-04-18 01:48:54.809706'),
('C12', 'N57', 'Topciu', 'Bob', '2009-11-23 11:49:35.766394'),
('C3', 'N58', 'Benchea', 'Emily', '2016-05-31 16:53:29.392260'),
('C8', 'N59', 'Nicoara', 'Brandon', '2010-12-05 18:47:26.373196'),
('C6', 'N6', 'Ihnati', 'Michael', '1999-02-15 22:00:00.000000'),
('C5', 'N60', 'Lungu', 'Noah', '2005-01-01 19:47:51.082323'),
('C3', 'N61', 'Boboc', 'Valentina', '1994-11-15 06:03:53.568534'),
('C7', 'N62', 'Benchea', 'Hannah', '1993-05-25 17:05:13.252890'),
('C4', 'N63', 'Poenaru', 'Miley', '2003-12-29 23:46:52.618094'),
('C11', 'N64', 'Rusu', 'James', '2020-03-17 12:08:23.341341'),
('C6', 'N65', 'Rusu', 'Julien', '2029-03-28 23:01:13.948751'),
('C3', 'N66', 'Manolache', 'Britney', '1992-03-11 10:47:45.984262'),
('C3', 'N67', 'Marculet', 'Noah', '2025-06-06 22:06:52.237240'),
('C3', 'N68', 'Citea', 'Jane', '1994-08-27 16:28:02.219398'),
('C1', 'N69', 'Boboc', 'Josie', '1998-01-12 04:51:45.483849'),
('C7', 'N7', 'Haloca', 'Mario', '1995-12-17 22:00:00.000000'),
('C11', 'N70', 'Juravle', 'Julien', '2012-05-07 16:38:32.212369'),
('C4', 'N71', 'Sirghe', 'Brandon', '2003-03-19 06:12:59.428337'),
('C12', 'N72', 'Lungu', 'Bianka', '2020-05-01 15:55:18.049531'),
('C11', 'N73', 'Juravle', 'Justin', '2002-11-29 00:46:52.157926'),
('C9', 'N74', 'Hardon', 'Taylor', '2009-03-08 08:50:47.183717'),
('C3', 'N75', 'Hardon', 'Brandon', '1996-04-30 12:43:09.458265'),
('C4', 'N76', 'Rusu', 'Britney', '1992-11-30 13:31:25.955459'),
('C8', 'N77', 'Manolache', 'Moises', '2007-06-27 06:35:37.693547'),
('C3', 'N78', 'Muratura', 'Josiah', '2010-02-23 03:19:01.726613'),
('C5', 'N79', 'Benchea', 'Brandon', '1999-08-22 15:19:56.566394'),
('C8', 'N8', 'Tiron', 'Dan', '1992-09-16 21:00:00.000000'),
('C9', 'N80', 'Boboc', 'Bob', '2026-03-14 13:01:19.841818'),
('C5', 'N81', 'Tatu', 'Drew', '2010-06-09 11:22:20.500260'),
('C1', 'N82', 'Boboc', 'Drew', '2011-09-23 05:36:25.896100'),
('C2', 'N83', 'Grigorosoaia', 'Justin', '2017-01-09 03:14:10.962807'),
('C7', 'N84', 'Mancas', 'Valentina', '2001-08-01 15:35:06.318452'),
('C4', 'N85', 'Nicoara', 'Taylor', '1998-05-31 23:52:44.129928'),
('C8', 'N86', 'Tatu', 'Miley', '1993-01-23 20:22:36.409939'),
('C8', 'N87', 'Martiniuc', 'Anisia', '1990-08-14 13:13:03.871535'),
('C6', 'N88', 'Topciu', 'Valentina', '2000-10-18 03:06:42.793411'),
('C6', 'N89', 'Marculet', 'Emily', '1993-11-13 13:59:42.954881'),
('C9', 'N9', 'Drumea', 'George', '1999-02-14 22:00:00.000000'),
('C6', 'N90', 'Ifrim', 'Bianka', '1999-11-12 23:42:49.808224'),
('C12', 'N91', 'Rusu', 'Emily', '2024-01-06 02:13:33.777338'),
('C10', 'N92', 'Muratura', 'Valentina', '2012-01-07 18:40:45.823125'),
('C9', 'N93', 'Juravle', 'Bianka', '2017-01-18 08:18:27.806203'),
('C5', 'N94', 'Manolache', 'Damien', '1995-06-28 21:07:16.175575'),
('C8', 'N95', 'Horghidan', 'Tatiana', '2014-03-07 09:32:48.218461'),
('C10', 'N96', 'Lungu', 'Christopher', '2015-07-23 03:37:13.585698'),
('C10', 'N97', 'Rusu', 'Noah', '2024-06-30 02:55:59.466719'),
('C9', 'N98', 'Horghidan', 'Valentina', '2017-05-27 22:15:09.378094'),
('C12', 'N99', 'Martiniuc', 'Bianka', '1998-06-02 01:50:31.823250');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `raniti`
--

CREATE TABLE `raniti` (
  `idCutremur` varchar(10) NOT NULL,
  `idPersoana` varchar(10) NOT NULL,
  `nume` varchar(15) DEFAULT NULL,
  `prenume` varchar(15) DEFAULT NULL,
  `dataNastere` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `raniti`
--

INSERT INTO `raniti` (`idCutremur`, `idPersoana`, `nume`, `prenume`, `dataNastere`) VALUES
('C1', 'R1', 'Pescaru', 'Ion', '1997-02-16 22:00:00.000000'),
('C10', 'R10', 'Muraru', 'Constantin', '1995-11-20 22:00:00.000000'),
('C1', 'R100', 'Muratura', 'Maricica', '2003-01-13 22:30:29.651044'),
('C10', 'R101', 'Hriscu', 'Florin', '2020-10-13 05:38:50.692358'),
('C5', 'R102', 'Tatu', 'Constantin', '2005-11-26 06:14:00.219615'),
('C4', 'R103', 'Nicoara', 'Ciprian', '2027-11-16 05:06:43.114547'),
('C2', 'R104', 'Burlacu', 'Maricica', '2002-07-05 17:04:24.303255'),
('C9', 'R105', 'Muraru', 'Mihai', '2029-12-26 22:51:18.983038'),
('C1', 'R106', 'Hriscu', 'Stefan', '2012-01-19 16:40:45.509501'),
('C12', 'R107', 'Lionte', 'Stefan', '2010-04-01 08:46:21.153634'),
('C8', 'R108', 'Muraru', 'Vasile', '2008-02-05 12:53:02.780669'),
('C11', 'R109', 'Nicoara', 'Ciprian', '1996-07-19 09:13:37.978985'),
('C11', 'R11', 'Muratura', 'Andrei', '1995-02-16 22:00:00.000000'),
('C12', 'R110', 'Marculet', 'Ervin', '2018-07-27 21:42:25.479088'),
('C4', 'R111', 'Marcu', 'Elena', '1995-09-15 02:38:49.355116'),
('C4', 'R112', 'Horghidan', 'Maricica', '2005-08-21 09:00:54.355702'),
('C8', 'R113', 'Marcu', 'Mihai', '2008-11-10 05:52:58.704750'),
('C5', 'R114', 'Muratura', 'Stefan', '2030-11-18 12:20:42.931856'),
('C9', 'R115', 'Horghidan', 'Ervin', '2002-04-02 03:48:07.629505'),
('C11', 'R116', 'Topciu', 'Mihai', '2018-04-11 13:42:20.858438'),
('C8', 'R117', 'Burlacu', 'Maricica', '2026-05-27 11:14:27.241795'),
('C1', 'R118', 'Marcu', 'Stefan', '1998-08-11 05:14:36.557539'),
('C10', 'R119', 'Tatu', 'Mihai', '2004-09-24 14:46:48.156308'),
('C12', 'R12', 'Horghidan', 'Vasile', '1995-02-16 22:00:00.000000'),
('C6', 'R120', 'Hriscu', 'Stefan', '2027-12-02 20:49:15.970656'),
('C10', 'R121', 'Topciu', 'Stefan', '1998-07-17 21:24:26.733377'),
('C10', 'R122', 'Topciu', 'Mihai', '2009-02-03 15:11:27.256681'),
('C8', 'R123', 'Muraru', 'Florin', '2023-05-27 04:51:45.700097'),
('C7', 'R124', 'Tatu', 'Stefan', '1991-09-07 22:01:01.082062'),
('C3', 'R125', 'Nicoara', 'Maricica', '1999-01-22 19:06:50.255237'),
('C5', 'R126', 'Tatu', 'Mihai', '2002-01-01 13:24:10.103684'),
('C6', 'R127', 'Horghidan', 'Elena', '2020-11-20 19:12:41.683891'),
('C10', 'R128', 'Muraru', 'Ciprian', '2006-07-05 09:28:10.899537'),
('C6', 'R129', 'Hriscu', 'Constantin', '2016-12-02 12:33:50.913015'),
('C1', 'R13', 'Tatu', 'Ciprian', '1995-02-16 22:00:00.000000'),
('C12', 'R130', 'Lionte', 'Mihai', '2008-07-14 07:46:32.722751'),
('C4', 'R131', 'Muraru', 'Ervin', '1997-07-09 08:20:05.456254'),
('C2', 'R132', 'Muratura', 'Vasile', '2021-07-23 10:17:04.507296'),
('C3', 'R133', 'Nicoara', 'Ervin', '1991-03-10 13:44:33.814254'),
('C10', 'R134', 'Marculet', 'Andrei', '2003-08-18 20:57:45.479756'),
('C8', 'R135', 'Horghidan', 'Vasile', '2007-05-07 06:08:21.207267'),
('C11', 'R136', 'Tatu', 'Florin', '1999-02-28 08:40:40.966206'),
('C7', 'R137', 'Muraru', 'Stefan', '1998-01-22 20:53:55.096710'),
('C3', 'R138', 'Hriscu', 'Stefan', '2007-04-11 09:30:11.897813'),
('C3', 'R139', 'Hriscu', 'Mihai', '1996-03-22 05:13:34.949625'),
('C2', 'R14', 'Topciu', 'Ervin', '1995-02-16 22:00:00.000000'),
('C7', 'R140', 'Muratura', 'Stefan', '2007-11-21 18:42:10.948186'),
('C3', 'R141', 'Horghidan', 'Ciprian', '1999-06-26 06:43:54.461984'),
('C2', 'R142', 'Burlacu', 'Stefan', '2020-03-15 10:13:49.917007'),
('C5', 'R143', 'Hriscu', 'Stefan', '1996-11-23 20:20:11.129958'),
('C9', 'R144', 'Tatu', 'Mihai', '2003-04-28 15:40:21.022403'),
('C1', 'R145', 'Burlacu', 'Andrei', '2003-03-20 12:07:35.220264'),
('C3', 'R146', 'Tatu', 'Stefan', '2010-02-28 15:55:05.197569'),
('C2', 'R147', 'Burlacu', 'Stefan', '2000-04-22 09:36:15.780835'),
('C1', 'R148', 'Burlacu', 'Stefan', '2025-07-10 00:53:45.059635'),
('C8', 'R149', 'Nicoara', 'Maricica', '1993-01-12 17:20:33.449818'),
('C3', 'R15', 'Marculet', 'Sergiu', '1995-02-16 22:00:00.000000'),
('C10', 'R150', 'Burlacu', 'Ervin', '2026-09-18 14:33:04.480344'),
('C11', 'R151', 'Hriscu', 'Vasile', '1994-07-07 13:06:11.614732'),
('C12', 'R152', 'Horghidan', 'Ciprian', '1996-10-09 10:32:13.854368'),
('C2', 'R153', 'Muratura', 'Ervin', '2024-03-16 12:36:28.635867'),
('C8', 'R154', 'Marculet', 'Mihai', '2019-10-04 19:24:49.247373'),
('C2', 'R155', 'Hriscu', 'Ervin', '2003-08-12 14:42:33.568829'),
('C6', 'R156', 'Tatu', 'Mihai', '2022-05-04 05:53:59.720242'),
('C2', 'R157', 'Burlacu', 'Ervin', '2002-05-17 21:31:42.393023'),
('C1', 'R158', 'Tatu', 'Florin', '2013-01-18 09:45:08.678859'),
('C3', 'R159', 'Tatu', 'Mihai', '1991-07-19 04:40:15.943206'),
('C1', 'R16', 'Burlacu', 'Stefan', '1995-02-16 22:00:00.000000'),
('C8', 'R160', 'Burlacu', 'Maricica', '2025-02-17 20:17:44.813547'),
('C3', 'R161', 'Muraru', 'Mihai', '2019-12-04 01:49:55.096566'),
('C10', 'R162', 'Hriscu', 'Florin', '1992-01-14 15:12:51.987401'),
('C1', 'R163', 'Topciu', 'Mihai', '2030-05-21 21:57:46.286479'),
('C12', 'R164', 'Horghidan', 'Ciprian', '2017-09-09 03:31:33.833627'),
('C2', 'R165', 'Marcu', 'Ciprian', '1991-10-26 11:41:19.391353'),
('C3', 'R166', 'Horghidan', 'Maricica', '1991-12-10 13:19:30.867919'),
('C9', 'R167', 'Muratura', 'Stefan', '2016-01-06 06:13:11.627937'),
('C5', 'R168', 'Hriscu', 'Maricica', '2010-04-02 23:43:02.603190'),
('C11', 'R169', 'Hriscu', 'Constantin', '2022-12-21 00:20:12.878370'),
('C2', 'R17', 'Lionte', 'Monica', '1995-02-16 22:00:00.000000'),
('C12', 'R170', 'Tatu', 'Stefan', '1993-03-25 15:46:36.047622'),
('C10', 'R171', 'Muratura', 'Constantin', '2010-07-05 09:00:30.070274'),
('C4', 'R172', 'Topciu', 'Maricica', '2030-08-13 21:08:40.773093'),
('C1', 'R173', 'Muraru', 'Constantin', '1996-03-27 20:58:22.045794'),
('C10', 'R174', 'Marcu', 'Florin', '2002-02-15 21:18:34.335821'),
('C6', 'R175', 'Hriscu', 'Maricica', '2002-08-18 08:55:38.153892'),
('C1', 'R176', 'Hriscu', 'Maricica', '2003-07-16 17:04:24.412956'),
('C7', 'R177', 'Horghidan', 'Mihai', '2014-03-30 11:21:55.450274'),
('C6', 'R178', 'Burlacu', 'Maricica', '2026-09-19 14:25:23.591656'),
('C3', 'R179', 'Muratura', 'Florin', '2023-07-12 22:31:07.115478'),
('C3', 'R18', 'Sirghe', 'Alin', '1995-02-16 22:00:00.000000'),
('C2', 'R180', 'Marcu', 'Stefan', '1990-03-21 07:37:02.805978'),
('C12', 'R181', 'Tatu', 'Vasile', '2008-06-27 06:42:05.300593'),
('C9', 'R182', 'Horghidan', 'Ervin', '2006-08-11 04:12:46.603963'),
('C9', 'R183', 'Hriscu', 'Mihai', '2025-02-20 22:09:05.146055'),
('C12', 'R184', 'Horghidan', 'Ciprian', '2014-05-13 13:08:48.818622'),
('C3', 'R185', 'Topciu', 'Mihai', '2007-04-11 14:28:01.376373'),
('C6', 'R186', 'Horghidan', 'Stefan', '1991-05-10 22:07:28.379573'),
('C5', 'R187', 'Topciu', 'Ervin', '1999-03-01 17:30:51.564984'),
('C9', 'R188', 'Nicoara', 'Maricica', '1999-09-17 08:59:16.749719'),
('C6', 'R189', 'Muraru', 'Elena', '2000-04-16 06:22:05.623902'),
('C4', 'R19', 'Marcu', 'Mihai', '1971-12-16 22:00:00.000000'),
('C2', 'R190', 'Marcu', 'Stefan', '2019-11-08 03:08:31.597736'),
('C5', 'R191', 'Marcu', 'Constantin', '1993-10-25 18:58:33.203172'),
('C6', 'R192', 'Burlacu', 'Constantin', '2028-06-16 13:24:10.186543'),
('C8', 'R193', 'Burlacu', 'Maricica', '2007-09-15 14:00:44.430590'),
('C3', 'R194', 'Muraru', 'Maricica', '2007-10-09 16:50:51.284476'),
('C12', 'R195', 'Muraru', 'Ciprian', '1991-07-08 15:41:21.950212'),
('C12', 'R196', 'Burlacu', 'Andrei', '1999-02-05 02:56:59.747100'),
('C1', 'R197', 'Tatu', 'Mihai', '2028-10-22 21:28:28.971032'),
('C6', 'R198', 'Horghidan', 'Mihai', '2024-12-19 23:38:35.302172'),
('C12', 'R199', 'Muratura', 'Maricica', '2029-12-10 18:07:38.260638'),
('C2', 'R2', 'Grigorosoaia', 'Florin', '1991-02-16 22:00:00.000000'),
('C5', 'R20', 'Hriscu', 'Anda', '1971-02-13 22:00:00.000000'),
('C5', 'R200', 'Lionte', 'Maricica', '1994-01-12 14:24:46.251854'),
('C9', 'R201', 'Muraru', 'Ciprian', '1999-06-29 20:31:54.003791'),
('C2', 'R202', 'Tatu', 'Mihai', '2010-04-09 08:55:02.325143'),
('C9', 'R203', 'Nicoara', 'Andrei', '2016-02-01 18:02:10.791142'),
('C1', 'R204', 'Horghidan', 'Vasile', '2013-05-03 00:59:13.255888'),
('C4', 'R205', 'Muraru', 'Ervin', '1991-07-08 04:40:15.777554'),
('C8', 'R206', 'Burlacu', 'Stefan', '2004-08-21 00:56:34.797726'),
('C3', 'R207', 'Tatu', 'Mihai', '1992-01-15 14:10:37.912871'),
('C12', 'R208', 'Marcu', 'Elena', '2009-03-07 03:55:12.001710'),
('C7', 'R209', 'Horghidan', 'Constantin', '2007-01-09 07:04:06.732316'),
('C6', 'R21', 'Mancas', 'Amelia', '1971-07-16 21:00:00.000000'),
('C3', 'R210', 'Marculet', 'Stefan', '2025-04-30 17:30:52.012262'),
('C6', 'R211', 'Horghidan', 'Maricica', '2008-02-15 21:54:07.570179'),
('C1', 'R212', 'Muraru', 'Maricica', '2007-01-02 09:59:40.876045'),
('C3', 'R213', 'Nicoara', 'Maricica', '2025-12-03 00:31:55.485121'),
('C8', 'R214', 'Horghidan', 'Constantin', '2012-06-21 02:23:16.170773'),
('C9', 'R215', 'Hriscu', 'Mihai', '2005-06-09 06:40:16.657268'),
('C9', 'R216', 'Muraru', 'Stefan', '2002-07-15 22:02:13.686537'),
('C3', 'R217', 'Marcu', 'Stefan', '2024-02-10 06:57:14.220325'),
('C11', 'R218', 'Topciu', 'Maricica', '2013-09-27 20:34:07.669845'),
('C8', 'R219', 'Muraru', 'Stefan', '2019-03-06 23:03:02.486502'),
('C7', 'R22', 'Nicoara', 'Elena', '1971-02-16 22:00:00.000000'),
('C1', 'R220', 'Nicoara', 'Mihai', '2002-07-29 21:54:32.059524'),
('C5', 'R221', 'Muraru', 'Stefan', '2005-04-27 14:56:29.920632'),
('C11', 'R222', 'Muratura', 'Maricica', '2029-11-14 15:25:11.422133'),
('C4', 'R223', 'Topciu', 'Stefan', '1999-10-10 08:55:50.245235'),
('C3', 'R224', 'Marcu', 'Elena', '2025-08-13 23:42:50.293474'),
('C2', 'R225', 'Topciu', 'Stefan', '2021-02-21 02:32:21.240023'),
('C5', 'R226', 'Tatu', 'Maricica', '2012-04-03 00:50:31.004085'),
('C12', 'R227', 'Topciu', 'Mihai', '2029-05-27 01:35:58.920699'),
('C9', 'R228', 'Horghidan', 'Vasile', '2014-02-27 18:29:39.510158'),
('C9', 'R229', 'Tatu', 'Mihai', '2008-11-25 23:32:20.122393'),
('C8', 'R23', 'Piclea', 'Vasile', '1978-08-16 21:00:00.000000'),
('C9', 'R230', 'Hriscu', 'Stefan', '2021-01-06 12:46:34.581162'),
('C6', 'R231', 'Muraru', 'Andrei', '2024-05-22 14:15:41.333845'),
('C7', 'R232', 'Muratura', 'Ciprian', '2019-09-27 13:15:05.245316'),
('C4', 'R233', 'Nicoara', 'Maricica', '1994-08-28 11:27:59.332229'),
('C4', 'R234', 'Hriscu', 'Stefan', '2001-03-26 14:35:05.830204'),
('C4', 'R235', 'Lionte', 'Andrei', '1998-09-28 22:49:29.565889'),
('C4', 'R236', 'Horghidan', 'Mihai', '2015-01-18 21:09:53.399840'),
('C3', 'R237', 'Burlacu', 'Ciprian', '2008-10-07 22:57:22.776330'),
('C10', 'R238', 'Tatu', 'Andrei', '2019-03-15 11:07:22.474385'),
('C6', 'R239', 'Horghidan', 'Mihai', '2008-05-17 14:09:25.702489'),
('C9', 'R24', 'Poenaru', 'Tamara', '1979-02-06 22:00:00.000000'),
('C7', 'R240', 'Nicoara', 'Mihai', '2008-02-05 19:56:20.073036'),
('C8', 'R241', 'Hriscu', 'Stefan', '2000-08-02 07:25:19.977840'),
('C7', 'R242', 'Muraru', 'Stefan', '2010-02-22 03:18:01.220148'),
('C12', 'R243', 'Hriscu', 'Stefan', '1996-03-26 05:58:26.506717'),
('C2', 'R244', 'Hriscu', 'Mihai', '2019-12-15 00:46:40.652760'),
('C11', 'R245', 'Lionte', 'Vasile', '2029-06-07 03:30:32.654729'),
('C3', 'R246', 'Marcu', 'Ciprian', '2030-09-08 06:58:51.485444'),
('C2', 'R247', 'Hriscu', 'Ciprian', '2025-06-04 10:16:39.835598'),
('C10', 'R248', 'Horghidan', 'Stefan', '2021-09-19 02:57:24.570144'),
('C6', 'R249', 'Burlacu', 'Constantin', '2023-07-25 15:25:36.022468'),
('C10', 'R25', 'Citea', 'Nicolae', '1977-02-06 22:00:00.000000'),
('C5', 'R250', 'Topciu', 'Ervin', '2018-01-19 00:27:04.906511'),
('C11', 'R26', 'Rusu', 'Iulian', '1974-08-08 21:00:00.000000'),
('C12', 'R27', 'Hardon', 'Laura', '1975-07-16 21:00:00.000000'),
('C1', 'R28', 'Manolache', 'Catalin', '1972-06-02 21:00:00.000000'),
('C2', 'R29', 'Lungu', 'Valentin', '1983-05-28 21:00:00.000000'),
('C3', 'R3', 'Martiniuc', 'Maricica', '1995-12-16 22:00:00.000000'),
('C3', 'R30', 'Juravle', 'Bogdan', '1982-02-27 22:00:00.000000'),
('C1', 'R31', 'Boboc', 'Iulian', '1984-02-26 22:00:00.000000'),
('C2', 'R32', 'Ifrim', 'Mariana', '1994-02-24 22:00:00.000000'),
('C3', 'R33', 'Benchea', 'Ionut', '1986-04-22 21:00:00.000000'),
('C4', 'R34', 'Nicola', 'Ana', '1987-02-18 22:00:00.000000'),
('C5', 'R35', 'Belciug', 'Adrian', '1999-03-15 22:00:00.000000'),
('C6', 'R36', 'Lucaci', 'Ioana', '1999-01-14 22:00:00.000000'),
('C7', 'R37', 'Piriu', 'Mona', '1998-12-13 22:00:00.000000'),
('C8', 'R38', 'Herscovici', 'Corina', '1998-11-06 22:00:00.000000'),
('C9', 'R39', 'Arvinte', 'Monica', '1998-10-16 21:00:00.000000'),
('C4', 'R4', 'Gospodaru', 'Cristian', '1995-02-08 22:00:00.000000'),
('C10', 'R40', 'Antonie', 'Adriana', '1998-09-16 21:00:00.000000'),
('C11', 'R41', 'Filip', 'Agripina', '1998-08-03 21:00:00.000000'),
('C12', 'R42', 'Iosub', 'Aglaia', '1995-08-08 21:00:00.000000'),
('C1', 'R43', 'Stolnicu', 'Sergiu', '1995-07-06 21:00:00.000000'),
('C2', 'R44', 'Ciofu', 'Loredana', '1994-06-26 21:00:00.000000'),
('C3', 'R45', 'Grosu', 'Alexandru', '1994-05-15 21:00:00.000000'),
('C1', 'R46', 'Perju', 'Cosmin', '1994-04-26 21:00:00.000000'),
('C2', 'R47', 'Simionescu', 'Gabriel', '1994-04-11 21:00:00.000000'),
('C3', 'R48', 'Manganu', 'Danut', '1993-03-10 22:00:00.000000'),
('C4', 'R49', 'Cazacu', 'Alberto', '1993-01-12 22:00:00.000000'),
('C5', 'R5', 'Chiorcea', 'Nicoleta', '1989-07-16 21:00:00.000000'),
('C5', 'R50', 'Pintilie', 'Gabriel', '1993-02-13 22:00:00.000000'),
('C1', 'R51', 'Sirghe', 'Ionut', '2009-07-04 14:54:05.387711'),
('C3', 'R52', 'Marcu', 'Iulian', '2017-09-27 22:00:00.864841'),
('C11', 'R53', 'Marculet', 'Iulian', '2030-08-12 23:14:09.027389'),
('C1', 'R54', 'Boboc', 'Mihai', '1998-01-01 13:55:04.348448'),
('C12', 'R55', 'Juravle', 'Elena', '2028-05-01 07:42:42.580267'),
('C11', 'R56', 'Muraru', 'Valentin', '2016-05-23 07:17:27.022985'),
('C11', 'R57', 'Manolache', 'Florin', '2017-09-27 20:03:13.272003'),
('C12', 'R58', 'Horghidan', 'Iulian', '1997-08-21 09:08:10.792309'),
('C11', 'R59', 'Juravle', 'Iulian', '2000-09-13 13:20:56.280453'),
('C6', 'R6', 'Ihnati', 'Radu', '1999-02-15 22:00:00.000000'),
('C4', 'R60', 'Piclea', 'Valentin', '2024-01-31 00:57:10.902568'),
('C11', 'R61', 'Martiniuc', 'Bogdan', '1993-02-16 03:15:59.293665'),
('C12', 'R62', 'Muratura', 'Nicolae', '2015-12-23 05:26:19.283301'),
('C8', 'R63', 'Hriscu', 'Florin', '2022-09-21 03:52:58.433430'),
('C2', 'R64', 'Sirghe', 'Maricica', '2010-05-05 12:33:15.457049'),
('C1', 'R65', 'Grigorosoaia', 'Constantin', '2019-11-25 05:47:43.455471'),
('C3', 'R66', 'Burlacu', 'Florin', '2026-09-20 14:22:09.791870'),
('C1', 'R67', 'Horghidan', 'Stefan', '1998-12-05 22:22:13.081629'),
('C11', 'R68', 'Marcu', 'Valentin', '2015-09-28 01:45:52.648686'),
('C5', 'R69', 'Tatu', 'Ciprian', '1994-05-08 22:31:19.283777'),
('C7', 'R7', 'Haloca', 'Maria', '1995-12-17 22:00:00.000000'),
('C12', 'R70', 'Burlacu', 'Ciprian', '2010-03-06 01:05:52.050782'),
('C2', 'R71', 'Ifrim', 'Florin', '2014-07-11 22:36:09.649353'),
('C6', 'R72', 'Citea', 'Andrei', '2007-11-27 13:25:46.478391'),
('C4', 'R73', 'Lungu', 'Ciprian', '1992-11-30 18:32:29.266920'),
('C11', 'R74', 'Manolache', 'Sergiu', '1999-09-12 23:12:20.366489'),
('C5', 'R75', 'Mancas', 'Ervin', '2028-11-30 01:04:27.869761'),
('C9', 'R76', 'Burlacu', 'Iulian', '2004-09-23 15:46:48.871990'),
('C8', 'R77', 'Marcu', 'Vasile', '2027-03-13 02:12:09.134191'),
('C6', 'R78', 'Mancas', 'Valentin', '2012-09-26 01:34:10.106162'),
('C8', 'R79', 'Lionte', 'Iulian', '2018-06-08 16:18:20.080675'),
('C8', 'R8', 'Tiron', 'Mihai', '1992-09-16 21:00:00.000000'),
('C9', 'R80', 'Benchea', 'Vasile', '2021-03-28 10:17:04.530652'),
('C11', 'R81', 'Grigorosoaia', 'Florin', '1997-01-30 14:28:48.417460'),
('C6', 'R82', 'Martiniuc', 'Ervin', '2027-10-12 17:21:58.636650'),
('C12', 'R83', 'Lionte', 'Ionut', '1997-05-19 03:55:59.629781'),
('C12', 'R84', 'Marculet', 'Alin', '1994-08-21 12:53:03.047270'),
('C2', 'R85', 'Benchea', 'Constantin', '2002-12-07 10:44:44.034008'),
('C3', 'R86', 'Burlacu', 'Valentin', '2001-09-14 05:29:33.449055'),
('C3', 'R87', 'Muraru', 'Andrei', '1999-06-26 02:46:05.962829'),
('C12', 'R88', 'Lungu', 'Stefan', '2020-07-19 00:26:52.926158'),
('C3', 'R89', 'Boboc', 'Ervin', '2015-04-12 06:16:25.918151'),
('C9', 'R9', 'Drumea', 'Gigel', '1999-02-14 22:00:00.000000'),
('C11', 'R90', 'Citea', 'Mariana', '2006-09-15 05:59:39.122958'),
('C3', 'R91', 'Rusu', 'Anda', '2001-02-17 09:05:32.104002'),
('C2', 'R92', 'Citea', 'Valentin', '2015-11-26 06:19:38.931594'),
('C4', 'R93', 'Citea', 'Stefan', '2009-12-17 06:28:57.220671'),
('C8', 'R94', 'Boboc', 'Amelia', '2021-08-13 21:13:43.957206'),
('C12', 'R95', 'Juravle', 'Alin', '2007-03-18 12:38:53.692403'),
('C12', 'R96', 'Topciu', 'Vasile', '2012-07-15 13:11:14.812985'),
('C6', 'R97', 'Rusu', 'Monica', '2020-08-06 20:57:33.814298'),
('C12', 'R98', 'Muratura', 'Florin', '2011-08-09 07:47:20.967149'),
('C2', 'R99', 'Muraru', 'Maricica', '2028-06-30 09:16:27.267497');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `spital`
--

CREATE TABLE `spital` (
  `idPersoana` varchar(10) NOT NULL,
  `numeSpital` varchar(15) DEFAULT NULL,
  `oras` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `spital`
--

INSERT INTO `spital` (`idPersoana`, `numeSpital`, `oras`) VALUES
('R1', 'Spitalul 1', 'New York'),
('R10', 'Spitalul 10', 'Barnova'),
('R100', 'Spitalul 1', 'New York'),
('R101', 'Spitalul 10', 'Barnova'),
('R102', 'Spitalul 5', 'Delhi'),
('R103', 'Spitalul 4', 'Mumbai'),
('R104', 'Spitalul 2', 'Iasi'),
('R105', 'Spitalul 9', 'Texas'),
('R106', 'Spitalul 1', 'New York'),
('R107', 'Spitalul 12', 'Granada'),
('R108', 'Spitalul 8', 'Los Angeles'),
('R109', 'Spitalul 11', 'Valencia'),
('R11', 'Spitalul 11', 'Valencia'),
('R110', 'Spitalul 12', 'Granada'),
('R111', 'Spitalul 4', 'Mumbai'),
('R112', 'Spitalul 4', 'Mumbai'),
('R113', 'Spitalul 8', 'Los Angeles'),
('R114', 'Spitalul 5', 'Delhi'),
('R115', 'Spitalul 9', 'Texas'),
('R116', 'Spitalul 11', 'Valencia'),
('R117', 'Spitalul 8', 'Los Angeles'),
('R118', 'Spitalul 1', 'New York'),
('R119', 'Spitalul 10', 'Barnova'),
('R12', 'Spitalul 12', 'Granada'),
('R120', 'Spitalul 6', 'Vaslui'),
('R121', 'Spitalul 10', 'Barnova'),
('R122', 'Spitalul 10', 'Barnova'),
('R123', 'Spitalul 8', 'Los Angeles'),
('R124', 'Spitalul 7', 'Timisoara'),
('R125', 'Spitalul 3', 'Brasov'),
('R126', 'Spitalul 5', 'Delhi'),
('R127', 'Spitalul 6', 'Vaslui'),
('R128', 'Spitalul 10', 'Barnova'),
('R129', 'Spitalul 6', 'Vaslui'),
('R13', 'Spitalul 1', 'New York'),
('R130', 'Spitalul 12', 'Granada'),
('R131', 'Spitalul 4', 'Mumbai'),
('R132', 'Spitalul 2', 'Iasi'),
('R133', 'Spitalul 3', 'Brasov'),
('R134', 'Spitalul 10', 'Barnova'),
('R135', 'Spitalul 8', 'Los Angeles'),
('R136', 'Spitalul 11', 'Valencia'),
('R137', 'Spitalul 7', 'Timisoara'),
('R138', 'Spitalul 3', 'Brasov'),
('R139', 'Spitalul 3', 'Brasov'),
('R14', 'Spitalul 2', 'Iasi'),
('R140', 'Spitalul 7', 'Timisoara'),
('R141', 'Spitalul 3', 'Brasov'),
('R142', 'Spitalul 2', 'Iasi'),
('R143', 'Spitalul 5', 'Delhi'),
('R144', 'Spitalul 9', 'Texas'),
('R145', 'Spitalul 1', 'New York'),
('R146', 'Spitalul 3', 'Brasov'),
('R147', 'Spitalul 2', 'Iasi'),
('R148', 'Spitalul 1', 'New York'),
('R149', 'Spitalul 8', 'Los Angeles'),
('R15', 'Spitalul 3', 'Brasov'),
('R150', 'Spitalul 10', 'Barnova'),
('R151', 'Spitalul 11', 'Valencia'),
('R152', 'Spitalul 12', 'Granada'),
('R153', 'Spitalul 2', 'Iasi'),
('R154', 'Spitalul 8', 'Los Angeles'),
('R155', 'Spitalul 2', 'Iasi'),
('R156', 'Spitalul 6', 'Vaslui'),
('R157', 'Spitalul 2', 'Iasi'),
('R158', 'Spitalul 1', 'New York'),
('R159', 'Spitalul 3', 'Brasov'),
('R16', 'Spitalul 1', 'New York'),
('R160', 'Spitalul 8', 'Los Angeles'),
('R161', 'Spitalul 3', 'Brasov'),
('R162', 'Spitalul 10', 'Barnova'),
('R163', 'Spitalul 1', 'New York'),
('R164', 'Spitalul 12', 'Granada'),
('R165', 'Spitalul 2', 'Iasi'),
('R166', 'Spitalul 3', 'Brasov'),
('R167', 'Spitalul 9', 'Texas'),
('R168', 'Spitalul 5', 'Delhi'),
('R169', 'Spitalul 11', 'Valencia'),
('R17', 'Spitalul 2', 'Iasi'),
('R170', 'Spitalul 12', 'Granada'),
('R171', 'Spitalul 10', 'Barnova'),
('R172', 'Spitalul 4', 'Mumbai'),
('R173', 'Spitalul 1', 'New York'),
('R174', 'Spitalul 10', 'Barnova'),
('R175', 'Spitalul 6', 'Vaslui'),
('R176', 'Spitalul 1', 'New York'),
('R177', 'Spitalul 7', 'Timisoara'),
('R178', 'Spitalul 6', 'Vaslui'),
('R179', 'Spitalul 3', 'Brasov'),
('R18', 'Spitalul 3', 'Brasov'),
('R180', 'Spitalul 2', 'Iasi'),
('R181', 'Spitalul 12', 'Granada'),
('R182', 'Spitalul 9', 'Texas'),
('R183', 'Spitalul 9', 'Texas'),
('R184', 'Spitalul 12', 'Granada'),
('R185', 'Spitalul 3', 'Brasov'),
('R186', 'Spitalul 6', 'Vaslui'),
('R187', 'Spitalul 5', 'Delhi'),
('R188', 'Spitalul 9', 'Texas'),
('R189', 'Spitalul 6', 'Vaslui'),
('R19', 'Spitalul 4', 'Mumbai'),
('R190', 'Spitalul 2', 'Iasi'),
('R191', 'Spitalul 5', 'Delhi'),
('R192', 'Spitalul 6', 'Vaslui'),
('R193', 'Spitalul 8', 'Los Angeles'),
('R194', 'Spitalul 3', 'Brasov'),
('R195', 'Spitalul 12', 'Granada'),
('R196', 'Spitalul 12', 'Granada'),
('R197', 'Spitalul 1', 'New York'),
('R198', 'Spitalul 6', 'Vaslui'),
('R199', 'Spitalul 12', 'Granada'),
('R2', 'Spitalul 2', 'Iasi'),
('R20', 'Spitalul 5', 'Delhi'),
('R200', 'Spitalul 5', 'Delhi'),
('R201', 'Spitalul 9', 'Texas'),
('R202', 'Spitalul 2', 'Iasi'),
('R203', 'Spitalul 9', 'Texas'),
('R204', 'Spitalul 1', 'New York'),
('R205', 'Spitalul 4', 'Mumbai'),
('R206', 'Spitalul 8', 'Los Angeles'),
('R207', 'Spitalul 3', 'Brasov'),
('R208', 'Spitalul 12', 'Granada'),
('R209', 'Spitalul 7', 'Timisoara'),
('R21', 'Spitalul 6', 'Vaslui'),
('R210', 'Spitalul 3', 'Brasov'),
('R211', 'Spitalul 6', 'Vaslui'),
('R212', 'Spitalul 1', 'New York'),
('R213', 'Spitalul 3', 'Brasov'),
('R214', 'Spitalul 8', 'Los Angeles'),
('R215', 'Spitalul 9', 'Texas'),
('R216', 'Spitalul 9', 'Texas'),
('R217', 'Spitalul 3', 'Brasov'),
('R218', 'Spitalul 11', 'Valencia'),
('R219', 'Spitalul 8', 'Los Angeles'),
('R22', 'Spitalul 7', 'Timisoara'),
('R220', 'Spitalul 1', 'New York'),
('R221', 'Spitalul 5', 'Delhi'),
('R222', 'Spitalul 11', 'Valencia'),
('R223', 'Spitalul 4', 'Mumbai'),
('R224', 'Spitalul 3', 'Brasov'),
('R225', 'Spitalul 2', 'Iasi'),
('R226', 'Spitalul 5', 'Delhi'),
('R227', 'Spitalul 12', 'Granada'),
('R228', 'Spitalul 9', 'Texas'),
('R229', 'Spitalul 9', 'Texas'),
('R23', 'Spitalul 8', 'Los Angeles'),
('R230', 'Spitalul 9', 'Texas'),
('R231', 'Spitalul 6', 'Vaslui'),
('R232', 'Spitalul 7', 'Timisoara'),
('R233', 'Spitalul 4', 'Mumbai'),
('R234', 'Spitalul 4', 'Mumbai'),
('R235', 'Spitalul 4', 'Mumbai'),
('R236', 'Spitalul 4', 'Mumbai'),
('R237', 'Spitalul 3', 'Brasov'),
('R238', 'Spitalul 10', 'Barnova'),
('R239', 'Spitalul 6', 'Vaslui'),
('R24', 'Spitalul 9', 'Texas'),
('R240', 'Spitalul 7', 'Timisoara'),
('R241', 'Spitalul 8', 'Los Angeles'),
('R242', 'Spitalul 7', 'Timisoara'),
('R243', 'Spitalul 12', 'Granada'),
('R244', 'Spitalul 2', 'Iasi'),
('R245', 'Spitalul 11', 'Valencia'),
('R246', 'Spitalul 3', 'Brasov'),
('R247', 'Spitalul 2', 'Iasi'),
('R248', 'Spitalul 10', 'Barnova'),
('R249', 'Spitalul 6', 'Vaslui'),
('R25', 'Spitalul 10', 'Barnova'),
('R250', 'Spitalul 5', 'Delhi'),
('R26', 'Spitalul 11', 'Valencia'),
('R27', 'Spitalul 12', 'Granada'),
('R28', 'Spitalul 1', 'New York'),
('R29', 'Spitalul 2', 'Iasi'),
('R3', 'Spitalul 3', 'Brasov'),
('R30', 'Spitalul 3', 'Brasov'),
('R31', 'Spitalul 1', 'New York'),
('R32', 'Spitalul 2', 'Iasi'),
('R33', 'Spitalul 3', 'Brasov'),
('R34', 'Spitalul 4', 'Mumbai'),
('R35', 'Spitalul 5', 'Delhi'),
('R36', 'Spitalul 6', 'Vaslui'),
('R37', 'Spitalul 7', 'Timisoara'),
('R38', 'Spitalul 8', 'Los Angeles'),
('R39', 'Spitalul 9', 'Texas'),
('R4', 'Spitalul 4', 'Mumbai'),
('R40', 'Spitalul 10', 'Barnova'),
('R41', 'Spitalul 11', 'Valencia'),
('R42', 'Spitalul 12', 'Granada'),
('R43', 'Spitalul 1', 'New York'),
('R44', 'Spitalul 2', 'Iasi'),
('R45', 'Spitalul 3', 'Brasov'),
('R46', 'Spitalul 1', 'New York'),
('R47', 'Spitalul 2', 'Iasi'),
('R48', 'Spitalul 3', 'Brasov'),
('R49', 'Spitalul 4', 'Mumbai'),
('R5', 'Spitalul 5', 'Delhi'),
('R50', 'Spitalul 5', 'Delhi'),
('R51', 'Spitalul 1', 'New York'),
('R52', 'Spitalul 3', 'Brasov'),
('R53', 'Spitalul 11', 'Valencia'),
('R54', 'Spitalul 1', 'New York'),
('R55', 'Spitalul 12', 'Granada'),
('R56', 'Spitalul 11', 'Valencia'),
('R57', 'Spitalul 11', 'Valencia'),
('R58', 'Spitalul 12', 'Granada'),
('R59', 'Spitalul 11', 'Valencia'),
('R6', 'Spitalul 6', 'Vaslui'),
('R60', 'Spitalul 4', 'Mumbai'),
('R61', 'Spitalul 11', 'Valencia'),
('R62', 'Spitalul 12', 'Granada'),
('R63', 'Spitalul 8', 'Los Angeles'),
('R64', 'Spitalul 2', 'Iasi'),
('R65', 'Spitalul 1', 'New York'),
('R66', 'Spitalul 3', 'Brasov'),
('R67', 'Spitalul 1', 'New York'),
('R68', 'Spitalul 11', 'Valencia'),
('R69', 'Spitalul 5', 'Delhi'),
('R7', 'Spitalul 7', 'Timisoara'),
('R70', 'Spitalul 12', 'Granada'),
('R71', 'Spitalul 2', 'Iasi'),
('R72', 'Spitalul 6', 'Vaslui'),
('R73', 'Spitalul 4', 'Mumbai'),
('R74', 'Spitalul 11', 'Valencia'),
('R75', 'Spitalul 5', 'Delhi'),
('R76', 'Spitalul 9', 'Texas'),
('R77', 'Spitalul 8', 'Los Angeles'),
('R78', 'Spitalul 6', 'Vaslui'),
('R79', 'Spitalul 8', 'Los Angeles'),
('R8', 'Spitalul 8', 'Los Angeles'),
('R80', 'Spitalul 9', 'Texas'),
('R81', 'Spitalul 11', 'Valencia'),
('R82', 'Spitalul 6', 'Vaslui'),
('R83', 'Spitalul 12', 'Granada'),
('R84', 'Spitalul 12', 'Granada'),
('R85', 'Spitalul 2', 'Iasi'),
('R86', 'Spitalul 3', 'Brasov'),
('R87', 'Spitalul 3', 'Brasov'),
('R88', 'Spitalul 12', 'Granada'),
('R89', 'Spitalul 3', 'Brasov'),
('R9', 'Spitalul 9', 'Texas'),
('R90', 'Spitalul 11', 'Valencia'),
('R91', 'Spitalul 3', 'Brasov'),
('R92', 'Spitalul 2', 'Iasi'),
('R93', 'Spitalul 4', 'Mumbai'),
('R94', 'Spitalul 8', 'Los Angeles'),
('R95', 'Spitalul 12', 'Granada'),
('R96', 'Spitalul 12', 'Granada'),
('R97', 'Spitalul 6', 'Vaslui'),
('R98', 'Spitalul 12', 'Granada'),
('R99', 'Spitalul 2', 'Iasi');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `urmari`
--

CREATE TABLE `urmari` (
  `idCutremur` varchar(5) NOT NULL,
  `numarDecedati` int(4) DEFAULT NULL,
  `numarCladiriAfectate` int(4) DEFAULT NULL,
  `razaActiuneKm` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `urmari`
--

INSERT INTO `urmari` (`idCutremur`, `numarDecedati`, `numarCladiriAfectate`, `razaActiuneKm`) VALUES
('C1', 657, 34, 7),
('C10', 6550, 178, 6),
('C11', 267, 38, 2),
('C12', 64, 3, 2),
('C13', 876, 16, 5),
('C14', 900, 25, 4),
('C15', 980, 47, 6),
('C2', 926, 12, 3),
('C3', 9002, 45, 7),
('C4', 3863, 95, 20),
('C5', 77, 0, 5),
('C6', 729, 94, 3),
('C7', 1097, 100, 5),
('C8', 158, 24, 7),
('C9', 1960, 79, 9);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`) VALUES
(3, '', 'admin', 'dascaluanamaria@yahoo.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `users_fb`
--

CREATE TABLE `users_fb` (
  `id` int(11) NOT NULL,
  `oauth_provider` enum('','facebook','google','twitter') COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Salvarea datelor din tabel `users_fb`
--

INSERT INTO `users_fb` (`id`, `oauth_provider`, `oauth_uid`, `first_name`, `last_name`, `email`, `gender`, `locale`, `picture`, `link`, `created`, `modified`) VALUES
(2, 'facebook', '1363466470397413', 'Ana', 'Maria', 'dascaluanamaria@yahoo.com', 'female', 'ro_RO', 'https://scontent.xx.fbcdn.net/v/t1.0-1/p50x50/18622555_1349771658433561_5037328164882223875_n.jpg?oh=a8c16badc0f0714ec588d2ac696b07e4&oe=59D9B63B', 'https://www.facebook.com/app_scoped_user_id/1363466470397413/', '2017-06-08 19:24:12', '2017-06-08 19:34:07');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `voluntari`
--

CREATE TABLE `voluntari` (
  `idCutremur` varchar(10) NOT NULL,
  `idPersoana` varchar(10) NOT NULL,
  `nume` varchar(15) DEFAULT NULL,
  `prenume` varchar(15) DEFAULT NULL,
  `about` text NOT NULL,
  `studii` text NOT NULL,
  `varsta` int(11) NOT NULL,
  `taraOrigine` varchar(255) NOT NULL,
  `nrTelefon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `voluntari`
--

INSERT INTO `voluntari` (`idCutremur`, `idPersoana`, `nume`, `prenume`, `about`, `studii`, `varsta`, `taraOrigine`, `nrTelefon`) VALUES
('C12', 'v300', 'Chibici', 'Bianca', 'smile          ', 'Student', 20, 'Romania', '0743654789'),
('C1', 'v700', 'Dascalu', 'Ana-Maria', 'smile          ', 'Student', 20, 'Romania', '0747456982');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adapost`
--
ALTER TABLE `adapost`
  ADD PRIMARY KEY (`idPersoana`);

--
-- Indexes for table `cutremur`
--
ALTER TABLE `cutremur`
  ADD PRIMARY KEY (`idCutremur`);

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD KEY `idCutremur` (`idCutremur`);

--
-- Indexes for table `morti`
--
ALTER TABLE `morti`
  ADD PRIMARY KEY (`idPersoana`),
  ADD KEY `idCutremur` (`idCutremur`);

--
-- Indexes for table `nevatamati`
--
ALTER TABLE `nevatamati`
  ADD PRIMARY KEY (`idPersoana`),
  ADD KEY `idCutremur` (`idCutremur`);

--
-- Indexes for table `raniti`
--
ALTER TABLE `raniti`
  ADD PRIMARY KEY (`idPersoana`),
  ADD KEY `idCutremur` (`idCutremur`);

--
-- Indexes for table `spital`
--
ALTER TABLE `spital`
  ADD PRIMARY KEY (`idPersoana`);

--
-- Indexes for table `urmari`
--
ALTER TABLE `urmari`
  ADD PRIMARY KEY (`idCutremur`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_fb`
--
ALTER TABLE `users_fb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voluntari`
--
ALTER TABLE `voluntari`
  ADD PRIMARY KEY (`idPersoana`),
  ADD KEY `idCutremur` (`idCutremur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users_fb`
--
ALTER TABLE `users_fb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restrictii pentru tabele sterse
--

--
-- Restrictii pentru tabele `maps`
--
ALTER TABLE `maps`
  ADD CONSTRAINT `maps_ibfk_1` FOREIGN KEY (`idCutremur`) REFERENCES `cutremur` (`idCutremur`);

--
-- Restrictii pentru tabele `morti`
--
ALTER TABLE `morti`
  ADD CONSTRAINT `morti_ibfk_1` FOREIGN KEY (`idCutremur`) REFERENCES `cutremur` (`idCutremur`);

--
-- Restrictii pentru tabele `nevatamati`
--
ALTER TABLE `nevatamati`
  ADD CONSTRAINT `nevatamati_ibfk_1` FOREIGN KEY (`idCutremur`) REFERENCES `cutremur` (`idCutremur`);

--
-- Restrictii pentru tabele `raniti`
--
ALTER TABLE `raniti`
  ADD CONSTRAINT `raniti_ibfk_1` FOREIGN KEY (`idCutremur`) REFERENCES `cutremur` (`idCutremur`);

--
-- Restrictii pentru tabele `voluntari`
--
ALTER TABLE `voluntari`
  ADD CONSTRAINT `voluntari_ibfk_1` FOREIGN KEY (`idCutremur`) REFERENCES `cutremur` (`idCutremur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
