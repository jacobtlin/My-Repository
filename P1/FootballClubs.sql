create database FootballClubs
use FootballClubs

create table ClubsInfo
(
	ClubNo int primary key,
	ClubName varchar(20) unique,
	ClubCountry varchar(20),

)

drop table ClubsInfo
select * from ClubsInfo

insert into ClubsInfo values(01, 'Liverpool FC', 'England')
insert into ClubsInfo values(02, 'Manchester City', 'England')
insert into ClubsInfo values(03, 'Real Madrid', 'Spain')
insert into ClubsInfo values(04, 'Bayern Munchen', 'Germany')
insert into ClubsInfo values(05, 'Inter Milan', 'Italy')
insert into ClubsInfo values(06, 'AC Milan', 'Italy')
insert into ClubsInfo values(07, 'Ajax Amsterdam', 'Netherlands')
insert into ClubsInfo values(08, 'Chelsea FC', 'England')
insert into ClubsInfo values(09, 'SSC Napoli', 'Italy')
insert into ClubsInfo values(10, 'Atletico Madrid', 'Spain')
insert into ClubsInfo values(11, 'Barcelona', 'Spain')
insert into ClubsInfo values(12, 'Paris Saint-Germain', 'France')
insert into ClubsInfo values(13, 'FC Porto', 'Portugal')
insert into ClubsInfo values(14, 'Tottenham Hotspur', 'England')
insert into ClubsInfo values(15, 'Villareal', 'Spain')
insert into ClubsInfo values(16, 'Palmeiras', 'Brazil')
insert into ClubsInfo values(17, 'Benfica', 'Portugal')
insert into ClubsInfo values(18, 'Bayer Leverkusen', 'Germany')
insert into ClubsInfo values(19, 'Juventus', 'Italy')
insert into ClubsInfo values(20, 'Sporting', 'Portugal')
insert into ClubsInfo values(21, 'RB Leipzig', 'Germany')
insert into ClubsInfo values(22, 'Arsenal', 'England')
insert into ClubsInfo values(23, 'Borussia Dortmund', 'Germany')
insert into ClubsInfo values(24, 'Sevilla', 'Spain')
insert into ClubsInfo values(25, 'FK Red Star Belgrade', 'Serbia')
insert into ClubsInfo values(26, 'Atletico Mineiro', 'Brazil')
insert into ClubsInfo values(27, 'Roma', 'Italy')
insert into ClubsInfo values(28, 'Lazio', 'Italy')
insert into ClubsInfo values(29, 'Real Betis', 'Spain')
insert into ClubsInfo values(30, 'Red Bull Salzburg', 'Austria')
insert into ClubsInfo values(31, 'Flamengo', 'Brazil')
insert into ClubsInfo values(32, 'PSV Eindhoven', 'Netherlands')

-----------------------------------------------------------------------------------------------------------------------------------------
create table PlayerInfo
(
	PlayerNo int,
	PlayerName varchar(20) unique,
	PlayerPosition varchar(20),
	PlayerClub varchar(20)

	constraint fk_PlayerClub foreign key (PlayerClub) references ClubsInfo(ClubName)
	
)

drop table PlayerInfo
select * from PlayerInfo
-------------------------------------------------------------------------------------
--Liverpool FC--
insert into PlayerInfo values(01, 'A. Becker', 'Goalkeeper', 'Liverpool FC')
insert into PlayerInfo values(13, 'Adrian', 'Goalkeeper', 'Liverpool FC')
insert into PlayerInfo values(62, 'C. Kelleher', 'Goalkeeper', 'Liverpool FC')
insert into PlayerInfo values(04, 'V. van Dijk', 'Defender', 'Liverpool FC')
insert into PlayerInfo values(12, 'J. Gomez', 'Defender', 'Liverpool FC')
insert into PlayerInfo values(21, 'K. Tsimikas', 'Defender', 'Liverpool FC')
insert into PlayerInfo values(03, 'Fabinho', 'Midfielder', 'Liverpool FC')
insert into PlayerInfo values(06, 'T. Alcantara', 'Midfielder', 'Liverpool FC')
insert into PlayerInfo values(09, 'R. Firmino', 'Forward', 'Liverpool FC')
insert into PlayerInfo values(11, 'M. Salah', 'Forward', 'Liverpool FC')
-------------------------------------------------------------------------------------
--Manchester City--
insert into PlayerInfo values(13, 'Z. Steffen', 'Goalkeeper', 'Manchester City')
insert into PlayerInfo values(18, 'S.O. Moreno', 'Goalkeeper', 'Manchester City')
insert into PlayerInfo values(31, 'Ederson', 'Goalkeeper', 'Manchester City')
insert into PlayerInfo values(02, 'K. Walker', 'Defender', 'Manchester City')
insert into PlayerInfo values(03, 'R. Dias', 'Defender', 'Manchester City')
insert into PlayerInfo values(05, 'J. Stones', 'Defender', 'Manchester City')
insert into PlayerInfo values(04, 'K. Phillips', 'Midfielder', 'Manchester City')
insert into PlayerInfo values(08, 'I. Gundogan', 'Midfielder', 'Manchester City')
insert into PlayerInfo values(07, 'R. Sterling', 'Forward', 'Manchester City')
insert into PlayerInfo values(23, 'R. Mahrez', 'Forward', 'Manchester City')
-------------------------------------------------------------------------------------
--Bayern Munchen--
insert into PlayerInfo values(01, 'M. Neuer', 'Goalkeeper', 'Bayern Munchen')
insert into PlayerInfo values(26, 'S. Ulreich', 'Goalkeeper', 'Bayern Munchen')
insert into PlayerInfo values(02, 'D. Upamecano', 'Defender', 'Bayern Munchen')
insert into PlayerInfo values(03, 'O. Richards', 'Defender', 'Bayern Munchen')
insert into PlayerInfo values(05, 'B. Pavard', 'Defender', 'Bayern Munchen')
insert into PlayerInfo values(15, 'C. Richards', 'Defender', 'Bayern Munchen')
insert into PlayerInfo values(06, 'J. Kimmich', 'Midfielder', 'Bayern Munchen')
insert into PlayerInfo values(08, 'L. Goretzka', 'Midfielder', 'Bayern Munchen')
insert into PlayerInfo values(07, 'S. Gnabry', 'Forward', 'Bayern Munchen')
insert into PlayerInfo values(09, 'R. Lewandowski', 'Forward', 'Bayern Munchen')
-------------------------------------------------------------------------------------
--Inter Milan--
insert into PlayerInfo values(21, 'A. Cordaz', 'Goalkeeper', 'Inter Milan')
insert into PlayerInfo values(01, 'S. Handanovic', 'Goalkeeper', 'Inter Milan')
insert into PlayerInfo values(97, 'A. Radu', 'Goalkeeper', 'Inter Milan')
insert into PlayerInfo values(95, 'A. Bastoni', 'Defender', 'Inter Milan')
insert into PlayerInfo values(12, 'R. Bellanova', 'Defender', 'Inter Milan')
insert into PlayerInfo values(43, 'F. Cortinovis', 'Defender', 'Inter Milan')
insert into PlayerInfo values(18, 'L. Agoume', 'Midfielder', 'Inter Milan')
insert into PlayerInfo values(23, 'N. Barella', 'Midfielder', 'Inter Milan')
insert into PlayerInfo values(88, 'F. Caceido', 'Forward', 'Inter Milan')
insert into PlayerInfo values(47, 'F. Carboni', 'Forward', 'Inter Milan')
-------------------------------------------------------------------------------------
--AC Milan--
insert into PlayerInfo values(90, 'S. Desplanches', 'Goalkeeper', 'AC Milan')
insert into PlayerInfo values(96, 'A. Jungdal', 'Goalkeeper', 'AC Milan')
insert into PlayerInfo values(16, 'M. Maignan', 'Goalkeeper', 'AC Milan')
insert into PlayerInfo values(00, 'L. Abanda', 'Defender', 'AC Milan')
insert into PlayerInfo values(56, 'G. Bellodi ', 'Defender', 'AC Milan')
insert into PlayerInfo values(02, 'D. Calabria', 'Defender', 'AC Milan')
insert into PlayerInfo values(00, 'Y. Adli', 'Midfielder', 'AC Milan')
insert into PlayerInfo values(41, 'T. Bakayoko', 'Midfielder', 'AC Milan')
insert into PlayerInfo values(84, 'G. Capanni', 'Forward', 'AC Milan')
insert into PlayerInfo values(70, 'A. Capone', 'Forward', 'AC Milan')
-------------------------------------------------------------------------------------
--Ajax Amsterdam--
insert into PlayerInfo values(16, 'J. Gorter', 'Goalkeeper', 'Ajax Amsterdam')
insert into PlayerInfo values(24, 'A. Onana', 'Goalkeeper', 'Ajax Amsterdam')
insert into PlayerInfo values(32, 'R. Pasveer', 'Goalkeeper', 'Ajax Amsterdam')
insert into PlayerInfo values(35, 'Y. Baas', 'Defender', 'Ajax Amsterdam')
insert into PlayerInfo values(17, 'D. Blind', 'Defender', 'Ajax Amsterdam')
insert into PlayerInfo values(05, 'S. Klaiber', 'Defender', 'Ajax Amsterdam')
insert into PlayerInfo values(50, 'K. Fitz Jim', 'Midfielder', 'Ajax Amsterdam')
insert into PlayerInfo values(04, 'E. Alvarez', 'Midfielder', 'Ajax Amsterdam')
insert into PlayerInfo values(32, 'H. Bande', 'Forward', 'Ajax Amsterdam')
insert into PlayerInfo values(23, 'S. Berghuis', 'Forward', 'Ajax Amsterdam')
-------------------------------------------------------------------------------------
--Chelsea FC--
insert into PlayerInfo values(01, 'K. Arrizabalaga', 'Goalkeeper', 'Chelsea FC')
insert into PlayerInfo values(31, 'N. Baxter', 'Goalkeeper', 'Chelsea FC')
insert into PlayerInfo values(36, 'L. Bergstrom', 'Goalkeeper', 'Chelsea FC')
insert into PlayerInfo values(03, 'M. Alonso', 'Defender', 'Chelsea FC')
insert into PlayerInfo values(44, 'E. Ampadu', 'Defender', 'Chelsea FC')
insert into PlayerInfo values(28, 'C. Azpilicueta', 'Defender', 'Chelsea FC')
insert into PlayerInfo values(27, 'T. Anjorin', 'Midfielder', 'Chelsea FC')
insert into PlayerInfo values(18, 'R. Barkley', 'Midfielder', 'Chelsea FC')
insert into PlayerInfo values(23, 'M. Batshuayi', 'Forward', 'Chelsea FC')
insert into PlayerInfo values(57, 'A. Broja', 'Forward', 'Chelsea FC')
-------------------------------------------------------------------------------------
--SSC Napoli--
insert into PlayerInfo values(72, 'V. Boffelli', 'Goalkeeper', 'SSC Napoli')
insert into PlayerInfo values(16, 'N. Contini', 'Goalkeeper', 'SSC Napoli')
insert into PlayerInfo values(16, 'H. Idaslak', 'Goalkeeper', 'SSC Napoli')
insert into PlayerInfo values(80, 'B. Barba', 'Defender', 'SSC Napoli')
insert into PlayerInfo values(74, 'D. Costanzo', 'Defender', 'SSC Napoli')
insert into PlayerInfo values(22, 'G. Di Lorenzo', 'Defender', 'SSC Napoli')
insert into PlayerInfo values(00, 'F. Costa', 'Midfielder', 'SSC Napoli')
insert into PlayerInfo values(04, 'D. Demme', 'Midfielder', 'SSC Napoli')
insert into PlayerInfo values(70, 'G. Ambrosino', 'Forward', 'SSC Napoli')
insert into PlayerInfo values(73, 'A. Cioffi', 'Forward', 'SSC Napoli')
-------------------------------------------------------------------------------------
--Atletico Madrid--
insert into PlayerInfo values(36, 'A. Gomis Aleman', 'Goalkeeper', 'Atletico Madrid')
insert into PlayerInfo values(31, 'C. Gomez', 'Goalkeeper', 'Atletico Madrid')
insert into PlayerInfo values(01, 'I. Grbic', 'Goalkeeper', 'Atletico Madrid')
insert into PlayerInfo values(00, 'S. Arias', 'Defender', 'Atletico Madrid')
insert into PlayerInfo values(47, 'I. Camara', 'Defender', 'Atletico Madrid')
insert into PlayerInfo values(57, 'S. Diez Roldan', 'Defender', 'Atletico Madrid')
insert into PlayerInfo values(50, 'P. Barrios Rivas', 'Midfielder', 'Atletico Madrid')
insert into PlayerInfo values(39, 'J. Calavera', 'Midfielder', 'Atletico Madrid')
insert into PlayerInfo values(29, 'S. Camello', 'Forward', 'Atletico Madrid')
insert into PlayerInfo values(42, 'M. Carreno', 'Forward', 'Atletico Madrid')
-------------------------------------------------------------------------------------
--Barcelona--
insert into PlayerInfo values(27, 'L. Carevic', 'Goalkeeper', 'Barcelona')
insert into PlayerInfo values(13, 'Neto', 'Goalkeeper', 'Barcelona')
insert into PlayerInfo values(26, 'Inaki Pena', 'Goalkeeper', 'Barcelona')
insert into PlayerInfo values(18, 'J. Alba', 'Defender', 'Barcelona')
insert into PlayerInfo values(08, 'D. Alves', 'Defender', 'Barcelona')
insert into PlayerInfo values(04, 'R. Araujo', 'Defender', 'Barcelona')
insert into PlayerInfo values(05, 'S. Busquets', 'Midfielder', 'Barcelona')
insert into PlayerInfo values(21, 'F. De Jong', 'Midfielder', 'Barcelona')
insert into PlayerInfo values(37, 'I. Akhomach', 'Forward', 'Barcelona')
insert into PlayerInfo values(25, 'P.E. Aubameyang', 'Forward', 'Barcelona')
-------------------------------------------------------------------------------------
--Paris Saint-Germain--
insert into PlayerInfo values(01, 'K. Navas', 'Goalkeeper', 'Paris Saint-Germain')
insert into PlayerInfo values(40, 'D. Franchi', 'Goalkeeper', 'Paris Saint-Germain')
insert into PlayerInfo values(50, 'G. Donnarumma', 'Goalkeeper', 'Paris Saint-Germain')
insert into PlayerInfo values(02, 'A. Hakimi', 'Defender', 'Paris Saint-Germain')
insert into PlayerInfo values(03, 'P. Kimppemba', 'Defender', 'Paris Saint-Germain')
insert into PlayerInfo values(04, 'S. Ramos', 'Defender', 'Paris Saint-Germain')
insert into PlayerInfo values(06, 'L. Paredes', 'Midfielder', 'Paris Saint-Germain')
insert into PlayerInfo values(08, 'A. Di Maria', 'Midfielder', 'Paris Saint-Germain')
insert into PlayerInfo values(30, 'L. Messi', 'Forward', 'Paris Saint-Germain')
insert into PlayerInfo values(10, 'Neymar Jr.', 'Forward', 'Paris Saint-Germain')
-------------------------------------------------------------------------------------
--FC Porto--
insert into PlayerInfo values(14, 'C. Ramos', 'Goalkeeper', 'FC Porto')
insert into PlayerInfo values(99, 'D. Costa', 'Goalkeeper', 'FC Porto')
insert into PlayerInfo values(01, 'A. Marchesin', 'Goalkeeper', 'FC Porto')
insert into PlayerInfo values(02, 'F. Cardoso', 'Defender', 'FC Porto')
insert into PlayerInfo values(04, 'D. Carmo', 'Defender', 'FC Porto')
insert into PlayerInfo values(15, 'Carraca', 'Defender', 'FC Porto')
insert into PlayerInfo values(21, 'R. Baro', 'Midfielder', 'FC Porto')
insert into PlayerInfo values(28, 'B. Costa', 'Midfielder', 'FC Porto')
insert into PlayerInfo values(38, 'F. Andrade', 'Forward', 'FC Porto')
insert into PlayerInfo values(11, 'Pepe Cossa', 'Forward', 'FC Porto')
-------------------------------------------------------------------------------------
--Tottenham Hotspur--
insert into PlayerInfo values(40, 'B. Austin', 'Goalkeeper', 'Tottenham Hotspur')
insert into PlayerInfo values(00, 'F. Forster', 'Goalkeeper', 'Tottenham Hotspur')
insert into PlayerInfo values(22, 'P. Gollini', 'Goalkeeper', 'Tottenham Hotspur')
insert into PlayerInfo values(38, 'C. Carter-Vickers', 'Defender', 'Tottenham Hotspur')
insert into PlayerInfo values(33, 'B. Davis', 'Defender', 'Tottenham Hotspur')
insert into PlayerInfo values(12, 'Emerson', 'Defender', 'Tottenham Hotspur')
insert into PlayerInfo values(30, 'R. Bentancur', 'Midfielder', 'Tottenham Hotspur')
insert into PlayerInfo values(00, 'Y. Bissouma', 'Midfielder', 'Tottenham Hotspur')
insert into PlayerInfo values(23, 'S. Bergwijn', 'Forward', 'Tottenham Hotspur')
insert into PlayerInfo values(47, 'J. Clarke', 'Forward', 'Tottenham Hotspur')
-------------------------------------------------------------------------------------
--Villareal--
insert into PlayerInfo values(01, 'S. Asenjo', 'Goalkeeper', 'Villareal')
insert into PlayerInfo values(31, 'Iker', 'Goalkeeper', 'Villareal')
insert into PlayerInfo values(35, 'F. Jorgensen', 'Goalkeeper', 'Villareal')
insert into PlayerInfo values(03, 'R. Albiol', 'Defender', 'Villareal')
insert into PlayerInfo values(25, 'S. Aurier', 'Defender', 'Villareal')
insert into PlayerInfo values(27, 'A. De La Fuente', 'Defender', 'Villareal')
insert into PlayerInfo values(38, 'C. Adriano', 'Midfielder', 'Villareal')
insert into PlayerInfo values(32, 'A. Baena', 'Midfielder', 'Villareal')
insert into PlayerInfo values(09, 'P. Alcacer', 'Forward', 'Villareal')
insert into PlayerInfo values(42, 'J. Carlos Arana', 'Forward', 'Villareal')
-------------------------------------------------------------------------------------
--Palmeiras--
insert into PlayerInfo values(41, 'K. Azarias', 'Goalkeeper', 'Palmeiras')
insert into PlayerInfo values(42, 'M. Lomba', 'Goalkeeper', 'Palmeiras')
insert into PlayerInfo values(31, 'Mateus', 'Goalkeeper', 'Palmeiras')
insert into PlayerInfo values(26, 'M. Cerqueira', 'Defender', 'Palmeiras')
insert into PlayerInfo values(43, 'JA DaSilva Valerio', 'Defender', 'Palmeiras')
insert into PlayerInfo values(46, 'I.C. dos Anjo', 'Defender', 'Palmeiras')
insert into PlayerInfo values(20, 'E. Atuesta', 'Midfielder', 'Palmeiras')
insert into PlayerInfo values(50, 'P. Barros', 'Midfielder', 'Palmeiras')
insert into PlayerInfo values(38, 'I. Angulo', 'Forward', 'Palmeiras')
insert into PlayerInfo values(19, 'Breno', 'Forward', 'Palmeiras')
-------------------------------------------------------------------------------------
--Benfica--
insert into PlayerInfo values(98, 'F. Duarte', 'Goalkeeper', 'Benfica')
insert into PlayerInfo values(45, 'Leo Brian Kokubo', 'Goalkeeper', 'Benfica')
insert into PlayerInfo values(77, 'H. Leite', 'Goalkeeper', 'Benfica')
insert into PlayerInfo values(34, 'A. Almeida', 'Defender', 'Benfica')
insert into PlayerInfo values(72, 'T. Araujo', 'Defender', 'Benfica')
insert into PlayerInfo values(97, 'Ferro', 'Defender', 'Benfica')
insert into PlayerInfo values(08, 'G. Appelt', 'Midfielder', 'Benfica')
insert into PlayerInfo values(00, 'A. Bah', 'Midfielder', 'Benfica')
insert into PlayerInfo values(39, 'H. Araujo', 'Forward', 'Benfica')
insert into PlayerInfo values(19, 'Chiquinho', 'Forward', 'Benfica')
-------------------------------------------------------------------------------------
--Bayer Leverkusen--
insert into PlayerInfo values(01, 'L. Hradecky', 'Goalkeeper', 'Bayer Leverkusen')
insert into PlayerInfo values(36, 'N. Lomb', 'Goalkeeper', 'Bayer Leverkusen')
insert into PlayerInfo values(40, 'A. Lunev', 'Goalkeeper', 'Bayer Leverkusen')
insert into PlayerInfo values(05, 'M. Backker', 'Defender', 'Bayer Leverkusen')
insert into PlayerInfo values(24, 'Tim Fosu-Mensah', 'Defender', 'Bayer Leverkusen')
insert into PlayerInfo values(30, 'J. Frimpong', 'Defender', 'Bayer Leverkusen')
insert into PlayerInfo values(11, 'N. Amiri', 'Midfielder', 'Bayer Leverkusen')
insert into PlayerInfo values(08, 'R. Andrich', 'Midfielder', 'Bayer Leverkusen')
insert into PlayerInfo values(31, 'A. Adli', 'Forward', 'Bayer Leverkusen')
insert into PlayerInfo values(09, 'K. Bellarabi', 'Forward', 'Bayer Leverkusen')
-------------------------------------------------------------------------------------
--Juventus--
insert into PlayerInfo values(00, 'S. Gori', 'Goalkeeper', 'Juventus')
insert into PlayerInfo values(35, 'F. Israel', 'Goalkeeper', 'Juventus')
insert into PlayerInfo values(36, 'M. Perin', 'Goalkeeper', 'Juventus')
insert into PlayerInfo values(19, 'L. Bonucci', 'Defender', 'Juventus')
insert into PlayerInfo values(03, 'G. Chiellini', 'Defender', 'Juventus')
insert into PlayerInfo values(11, 'J. Cuadrado', 'Defender', 'Juventus')
insert into PlayerInfo values(38, 'M. Ake', 'Midfielder', 'Juventus')
insert into PlayerInfo values(20, 'F. Bernardeschi', 'Midfielder', 'Juventus')
insert into PlayerInfo values(53, 'F. Correia', 'Forward', 'Juventus')
insert into PlayerInfo values(43, 'C. Marco Da Graca', 'Forward', 'Juventus')
-------------------------------------------------------------------------------------
--Sporting--
insert into PlayerInfo values(22, 'K. Mcintosh', 'Goalkeeper', 'Sporting')
insert into PlayerInfo values(29, 'T. Melia', 'Goalkeeper', 'Sporting')
insert into PlayerInfo values(01, 'J. Pulskamp', 'Goalkeeper', 'Sporting')
insert into PlayerInfo values(13, 'A. Dia', 'Defender', 'Sporting')
insert into PlayerInfo values(03, 'A. Fontas', 'Defender', 'Sporting')
insert into PlayerInfo values(80, 'S. Glass', 'Defender', 'Sporting')
insert into PlayerInfo values(19, 'G. Barber', 'Midfielder', 'Sporting')
insert into PlayerInfo values(17, 'J. Davis', 'Midfielder', 'Sporting')
insert into PlayerInfo values(25, 'O. Cisneros', 'Forward', 'Sporting')
insert into PlayerInfo values(23, 'T. Freeman', 'Forward', 'Sporting')
-------------------------------------------------------------------------------------
--RB Leipzig--
insert into PlayerInfo values(00, 'J. Blaswich', 'Goalkeeper', 'RB Leipzig')
insert into PlayerInfo values(29, 'F. Eutinger', 'Goalkeeper', 'RB Leipzig')
insert into PlayerInfo values(01, 'P. Gulacsi', 'Goalkeeper', 'RB Leipzig')
insert into PlayerInfo values(03, 'Angelino', 'Defender', 'RB Leipzig')
insert into PlayerInfo values(32, 'J. Gvardiol', 'Defender', 'RB Leipzig')
insert into PlayerInfo values(23, 'M. Halstenberg', 'Defender', 'RB Leipzig')
insert into PlayerInfo values(14, 'T. Adams', 'Midfielder', 'RB Leipzig')
insert into PlayerInfo values(35, 'S. Bonnah', 'Midfielder', 'RB Leipzig')
insert into PlayerInfo values(41, 'D. Borkowski', 'Forward', 'RB Leipzig')
insert into PlayerInfo values(21, 'B. Brobbey', 'Forward', 'RB Leipzig')
-------------------------------------------------------------------------------------
--Arsenal--
insert into PlayerInfo values(49, 'K. Jacob Hein', 'Goalkeeper', 'Arsenal')
insert into PlayerInfo values(01, 'B. Leno', 'Goalkeeper', 'Arsenal')
insert into PlayerInfo values(33, 'A. Okonkwo', 'Goalkeeper', 'Arsenal')
insert into PlayerInfo values(37, 'R. Alebiosu', 'Defender', 'Arsenal')
insert into PlayerInfo values(75, 'Z. Olumide Awe', 'Defender', 'Arsenal')
insert into PlayerInfo values(02, 'H. Bellerin', 'Defender', 'Arsenal')
insert into PlayerInfo values(25, 'M. Elneny', 'Midfielder', 'Arsenal')
insert into PlayerInfo values(82, 'O. Hutchinson', 'Midfielder', 'Arsenal')
insert into PlayerInfo values(38, 'M. Azeez', 'Forward', 'Arsenal')
insert into PlayerInfo values(26, 'F. Balogun', 'Forward', 'Arsenal')
-------------------------------------------------------------------------------------
--Borussia Dortmund--
insert into PlayerInfo values(38, 'R. Burki', 'Goalkeeper', 'Borussia Dortmund')
insert into PlayerInfo values(40, 'S. Drljaca', 'Goalkeeper', 'Borussia Dortmund')
insert into PlayerInfo values(35, 'M. Hitz', 'Goalkeeper', 'Borussia Dortmund')
insert into PlayerInfo values(16, 'M. Akanji', 'Defender', 'Borussia Dortmund')
insert into PlayerInfo values(04, 'S. Coulibaly', 'Defender', 'Borussia Dortmund')
insert into PlayerInfo values(13, 'R. Guerreiro', 'Defender', 'Borussia Dortmund')
insert into PlayerInfo values(22, 'J. Bellingham', 'Midfielder', 'Borussia Dortmund')
insert into PlayerInfo values(19, 'J. Brandt', 'Midfielder', 'Borussia Dortmund')
insert into PlayerInfo values(00, 'K. Adeyemi', 'Forward', 'Borussia Dortmund')
insert into PlayerInfo values(43, 'J. Bynoe Gittens', 'Forward', 'Borussia Dortmund')
-------------------------------------------------------------------------------------
--Sevilla--
insert into PlayerInfo values(13, 'Bono', 'Goalkeeper', 'Sevilla')
insert into PlayerInfo values(31, 'J. Diaz', 'Goalkeeper', 'Sevilla')
insert into PlayerInfo values(01, 'M. Dmitrovic', 'Goalkeeper', 'Sevilla')
insert into PlayerInfo values(19, 'M. Acuna', 'Defender', 'Sevilla')
insert into PlayerInfo values(44, 'J. Maria Serrano', 'Defender', 'Sevilla')
insert into PlayerInfo values(03, 'L. Augustinsson', 'Defender', 'Sevilla')
insert into PlayerInfo values(27, 'L. Cruz', 'Midfielder', 'Sevilla')
insert into PlayerInfo values(18, 'T. Delaney', 'Midfielder', 'Sevilla')
insert into PlayerInfo values(09, 'J. Corona', 'Forward', 'Sevilla')
insert into PlayerInfo values(11, 'M. El Haddadi', 'Forward', 'Sevilla')
-------------------------------------------------------------------------------------
--FK Red Star Belgrade--
insert into PlayerInfo values(82, 'M. Borjan', 'Goalkeeper', 'FK Red Star Belgrade')
insert into PlayerInfo values(51, 'M. Gordic', 'Goalkeeper', 'FK Red Star Belgrade')
insert into PlayerInfo values(40, 'S. Marinkovic', 'Goalkeeper', 'FK Red Star Belgrade')
insert into PlayerInfo values(93, 'A. Bakayoko', 'Defender', 'FK Red Star Belgrade')
insert into PlayerInfo values(15, 'A. Dragovic', 'Defender', 'FK Red Star Belgrade')
insert into PlayerInfo values(25, 'S. Erakovic', 'Defender', 'FK Red Star Belgrade')
insert into PlayerInfo values(14, 'A. Duric', 'Midfielder', 'FK Red Star Belgrade')
insert into PlayerInfo values(08, 'K. Guelor', 'Midfielder', 'FK Red Star Belgrade')
insert into PlayerInfo values(31, 'Ben', 'Forward', 'FK Red Star Belgrade')
insert into PlayerInfo values(39, 'Lois Diony', 'Forward', 'FK Red Star Belgrade')
-------------------------------------------------------------------------------------
--Atletico Mineiro--
insert into PlayerInfo values(35, 'G.A. De Silva', 'Goalkeeper', 'Atletico Mineiro')
insert into PlayerInfo values(01, 'G. Defim Ferreira', 'Goalkeeper', 'Atletico Mineiro')
insert into PlayerInfo values(21, 'C. Eduardo', 'Goalkeeper', 'Atletico Mineiro')
insert into PlayerInfo values(03, 'J. Alonso', 'Defender', 'Atletico Mineiro')
insert into PlayerInfo values(13, 'G. Arana', 'Defender', 'Atletico Mineiro')
insert into PlayerInfo values(23, 'G. Castiho', 'Defender', 'Atletico Mineiro')
insert into PlayerInfo values(05, 'Alexandre', 'Midfielder', 'Atletico Mineiro')
insert into PlayerInfo values(29, 'Allan', 'Midfielder', 'Atletico Mineiro')
insert into PlayerInfo values(19, 'Ademir', 'Forward', 'Atletico Mineiro')
insert into PlayerInfo values(07, 'Hulk', 'Forward', 'Atletico Mineiro')
-------------------------------------------------------------------------------------
--Roma--
insert into PlayerInfo values(63, 'P. Boer', 'Goalkeeper', 'Roma')
insert into PlayerInfo values(87, 'D. Fuzato', 'Goalkeeper', 'Roma')
insert into PlayerInfo values(67, 'D. Mastrantonio', 'Goalkeeper', 'Roma')
insert into PlayerInfo values(13, 'R. Calafiori', 'Defender', 'Roma')
insert into PlayerInfo values(00, 'Z. Celik', 'Defender', 'Roma')
insert into PlayerInfo values(03, 'R. Ibanez', 'Defender', 'Roma')
insert into PlayerInfo values(52, 'E. Bove', 'Midfielder', 'Roma')
insert into PlayerInfo values(04, 'B. Cristante', 'Midfielder', 'Roma')
insert into PlayerInfo values(09, 'T. Abraham', 'Forward', 'Roma')
insert into PlayerInfo values(64, 'F. Afena-Gyan', 'Forward', 'Roma')
-------------------------------------------------------------------------------------
--Lazio--
insert into PlayerInfo values(31, 'M. Adamonis', 'Goalkeeper', 'Lazio')
insert into PlayerInfo values(71, 'M. Alia', 'Goalkeeper', 'Lazio')
insert into PlayerInfo values(41, 'A. Furlanetto', 'Goalkeeper', 'Lazio')
insert into PlayerInfo values(33, 'F. Acerbi', 'Defender', 'Lazio')
insert into PlayerInfo values(00, 'D. Anderson', 'Defender', 'Lazio')
insert into PlayerInfo values(13, 'N. Armini', 'Defender', 'Lazio')
insert into PlayerInfo values(08, 'J. Akpa', 'Midfielder', 'Lazio')
insert into PlayerInfo values(88, 'T. Basic', 'Midfielder', 'Lazio')
insert into PlayerInfo values(10, 'L. Alberto', 'Forward', 'Lazio')
insert into PlayerInfo values(07, 'F. Anderson', 'Forward', 'Lazio')
-------------------------------------------------------------------------------------
--Betis--
insert into PlayerInfo values(25, 'C. Bravo', 'Goalkeeper', 'Real Betis')
insert into PlayerInfo values(13, 'D. Martin', 'Goalkeeper', 'Real Betis')
insert into PlayerInfo values(30, 'D. Rebollo', 'Goalkeeper', 'Real Betis')
insert into PlayerInfo values(05, 'M. Bartra', 'Defender', 'Real Betis')
insert into PlayerInfo values(19, 'H. Ballerin', 'Defender', 'Real Betis')
insert into PlayerInfo values(32, 'F. Delgado', 'Defender', 'Real Betis')
insert into PlayerInfo values(04, 'P. Akouokou', 'Midfielder', 'Real Betis')
insert into PlayerInfo values(36, 'J. Calderon', 'Midfielder', 'Real Betis')
insert into PlayerInfo values(08, 'N. Fekir', 'Forward', 'Real Betis')
insert into PlayerInfo values(09, 'B. Iglesias', 'Forward', 'Real Betis')
-------------------------------------------------------------------------------------
--Red Bull Salzburg--
insert into PlayerInfo values(18, 'P. Kohn', 'Goalkeeper', 'Red Bull Salzburg')
insert into PlayerInfo values(01, 'N. Manti', 'Goalkeeper', 'Red Bull Salzburg')
insert into PlayerInfo values(33, 'A. Walke', 'Goalkeeper', 'Red Bull Salzburg')
insert into PlayerInfo values(00, 'S. Baidoo', 'Defender', 'Red Bull Salzburg')
insert into PlayerInfo values(95, 'Bernardo', 'Defender', 'Red Bull Salzburg')
insert into PlayerInfo values(37, 'D. Guindo', 'Defender', 'Red Bull Salzburg')
insert into PlayerInfo values(11, 'B. Aaronson', 'Midfielder', 'Red Bull Salzburg')
insert into PlayerInfo values(16, 'L. Agyekum', 'Midfielder', 'Red Bull Salzburg')
insert into PlayerInfo values(09, 'C. Adamu', 'Forward', 'Red Bull Salzburg')
insert into PlayerInfo values(20, 'S. Koita', 'Forward', 'Red Bull Salzburg')
-------------------------------------------------------------------------------------
--Flamengo--
insert into PlayerInfo values(45, 'H. Souza', 'Goalkeeper', 'Flamengo')
insert into PlayerInfo values(25, 'M. Cunha', 'Goalkeeper', 'Flamengo')
insert into PlayerInfo values(20, 'Santos', 'Goalkeeper', 'Flamengo')
insert into PlayerInfo values(15, 'F. Bruno', 'Defender', 'Flamengo')
insert into PlayerInfo values(03, 'R. Caio', 'Defender', 'Flamengo')
insert into PlayerInfo values(30, 'P. Castro', 'Defender', 'Flamengo')
insert into PlayerInfo values(05, 'W. Arao', 'Midfielder', 'Flamengo')
insert into PlayerInfo values(28, 'D. Cabral', 'Midfielder', 'Flamengo')
insert into PlayerInfo values(10, 'Diego', 'Forward', 'Flamengo')
insert into PlayerInfo values(35, 'J. Gomes', 'Forward', 'Flamengo')
-------------------------------------------------------------------------------------
--PSV Einhoven--
insert into PlayerInfo values(00, 'W. Benitez', 'Goalkeeper', 'PSV Eindhoven')
insert into PlayerInfo values(21, 'M. Delanghe', 'Goalkeeper', 'PSV Eindhoven')
insert into PlayerInfo values(16, 'J. Drommel', 'Goalkeeper', 'PSV Eindhoven')
insert into PlayerInfo values(05, 'T. Baumgarti', 'Defender', 'PSV Eindhoven')
insert into PlayerInfo values(18, 'O. Boscagli', 'Defender', 'PSV Eindhoven')
insert into PlayerInfo values(23, 'D. Luckassen', 'Defender', 'PSV Eindhoven')
insert into PlayerInfo values(57, 'J. Antonisse', 'Midfielder', 'PSV Eindhoven')
insert into PlayerInfo values(25, 'R. Doan', 'Midfielder', 'PSV Eindhoven')
insert into PlayerInfo values(54, 'J. Bakayoko', 'Forward', 'PSV Eindhoven')
insert into PlayerInfo values(19, 'Bruma', 'Forward', 'PSV Eindhoven')

-------------------------------------------------------------------------------------

