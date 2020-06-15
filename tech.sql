-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 15, 2020 at 02:57 PM
-- Server version: 10.1.44-MariaDB-0+deb9u1
-- PHP Version: 7.0.33-0+deb9u7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tech`
--

-- --------------------------------------------------------

--
-- Table structure for table `allowance`
--

CREATE TABLE `allowance` (
  `id` int(11) NOT NULL,
  `userCode` varchar(8) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `examid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allowance`
--

INSERT INTO `allowance` (`id`, `userCode`, `examid`) VALUES
(140, 'A02', 1),
(141, 'A03', 1),
(142, 'A04', 1),
(143, 'A05', 1),
(144, 'A06', 1),
(145, 'A07', 1),
(146, 'A08', 1),
(147, 'A09', 1),
(148, 'A10', 1),
(149, 'A11', 1),
(154, 'A01', 2),
(155, 'A02', 2),
(156, 'A03', 2),
(157, 'A04', 2),
(158, 'A05', 2),
(159, 'A06', 2),
(160, 'A07', 2),
(161, 'A08', 2),
(162, 'A09', 2),
(163, 'A10', 2),
(164, 'A11', 2),
(169, 'A01', 3),
(170, 'A02', 3),
(171, 'A03', 3),
(172, 'A04', 3),
(173, 'A05', 3),
(174, 'A06', 3),
(175, 'A07', 3),
(176, 'A08', 3),
(177, 'A09', 3),
(178, 'A10', 3),
(179, 'A11', 3),
(180, '2T01', 2),
(181, '2T02', 2),
(182, '2T03', 2),
(184, '2T05', 2),
(185, '2T06', 2),
(186, '2T07', 2),
(187, '2T08', 2),
(188, '2T09', 2),
(189, '2T10', 2),
(190, '2T11', 2),
(191, '2T12', 2),
(192, '2T13', 2),
(194, '1T02', 3),
(195, '1T11', 3);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `className` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `className`) VALUES
(3, '1 Klasa testowa'),
(4, '2 Klasa testowa'),
(5, '3 Klasa testowa'),
(8, 'energetyczna A+'),
(10, '4 Klasa testowa'),
(11, '5 Klasa testowa'),
(12, '6 Klasa testowa');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `pagetitle` varchar(50) NOT NULL,
  `demo` enum('0','1') NOT NULL,
  `anonymous` enum('0','1') NOT NULL,
  `theme` int(11) NOT NULL,
  `gdprinfo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `pagetitle`, `demo`, `anonymous`, `theme`, `gdprinfo`) VALUES
(1, 'Testy online', '0', '1', 0, 'Informacja: Strona wykorzystuje pliki cookies zgodnie ze specyfiacją. Administratorem danych osobowych jest &lt;tu wstawić nazwę klienta&gt;. Pytania proszę kierować do administratora.');

-- --------------------------------------------------------

--
-- Table structure for table `examowners`
--

CREATE TABLE `examowners` (
  `id` int(11) NOT NULL,
  `examid` int(11) NOT NULL,
  `teacherid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examowners`
--

INSERT INTO `examowners` (`id`, `examid`, `teacherid`) VALUES
(10, 1, 5),
(11, 2, 5),
(12, 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `examtypes`
--

CREATE TABLE `examtypes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time` int(11) NOT NULL,
  `questions` int(11) NOT NULL,
  `icon` text NOT NULL,
  `theme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examtypes`
--

INSERT INTO `examtypes` (`id`, `name`, `time`, `questions`, `icon`, `theme`) VALUES
(1, 'E.12', 60, 40, 'fa-microchip', 1),
(2, 'E.13', 60, 40, 'fa-sitemap', 3),
(3, 'E.14', 60, 40, 'fa-code', 0),
(6, 'Test testowy', 60, 40, 'fa-poo', 0),
(7, 'Pusty test', 60, 40, 'fa-ban', 0);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `Id` int(11) NOT NULL,
  `Data` text COLLATE utf8_polish_ci NOT NULL,
  `userCode` varchar(8) COLLATE utf8_polish_ci NOT NULL,
  `Date` datetime NOT NULL,
  `examid` int(11) NOT NULL,
  `Score` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`Id`, `Data`, `userCode`, `Date`, `examid`, `Score`, `Total`) VALUES
(100, '233=0&348=0&468=0&490=0&283=0&433=0&301=0&385=0&255=0&319=0&420=0&164=0&52=0&444=0&492=0&23=0&347=0&448=0&274=0&405=0&406=0&89=0&160=0&83=0&95=0&404=0&56=0&346=0&136=0&276=0&193=0&282=0&322=0&140=0&443=0&104=0&256=0&379=0&258=0&270=0&', 'A01', '2020-06-14 00:57:07', 1, 12, 40),
(101, '233=0&348=0&468=0&490=0&283=0&433=0&301=0&385=0&255=0&319=0&420=0&164=0&52=0&444=0&492=0&23=0&347=0&448=0&274=0&405=0&406=0&89=0&160=0&83=0&95=0&404=0&56=0&346=0&136=0&276=0&193=0&282=0&322=0&140=0&443=0&104=0&256=0&379=0&258=0&270=0&', 'A01', '2020-06-14 00:57:26', 1, 12, 40),
(102, '233=0&348=0&468=0&490=0&283=0&433=0&301=0&385=0&255=0&319=0&420=0&164=0&52=0&444=0&492=0&23=0&347=0&448=0&274=0&405=0&406=0&89=0&160=0&83=0&95=0&404=0&56=0&346=0&136=0&276=0&193=0&282=0&322=0&140=0&443=0&104=0&256=0&379=0&258=0&270=0&', 'A01', '2020-06-14 00:57:59', 1, 12, 40),
(103, '233=0&348=0&468=0&490=0&283=0&433=0&301=0&385=0&255=0&319=0&420=0&164=0&52=0&444=0&492=0&23=0&347=0&448=0&274=0&405=0&406=0&89=0&160=0&83=0&95=0&404=0&56=0&346=0&136=0&276=0&193=0&282=0&322=0&140=0&443=0&104=0&256=0&379=0&258=0&270=0&', 'A01', '2020-06-14 00:58:59', 1, 12, 40),
(104, '1116=1&1027=1&1130=3&1019=0&1037=2&1124=1&1127=1&1080=3&1202=2&1072=1&1158=1&1160=1&1129=2&1036=0&1066=2&1069=3&1098=3&1046=1&1133=3&1206=3&1081=1&1103=0&1195=1&1035=1&1040=1&1144=0&1199=3&1068=1&1018=2&1176=1&1026=1&1088=3&1201=1&1024=2&1034=2&1078=3&1216=2&1108=1&1164=2&1060=3&', '1T01', '2020-06-15 11:25:28', 3, 38, 40),
(105, '1129=0&1098=0&1202=0&1114=0&1126=0&1065=0&1135=0&1177=0&1061=0&1179=0&1118=0&1030=0&1031=0&1197=0&1069=0&1162=0&1192=0&1148=0&1088=0&1059=0&1154=0&1140=0&1139=0&1121=0&1066=0&1019=0&1084=0&1032=0&1176=0&1214=0&1130=0&1210=0&1054=0&1018=0&1185=0&1208=0&1045=0&1160=0&1141=0&1182=0&', '1T01', '2020-06-15 11:26:51', 3, 5, 40),
(106, '747=0&595=0&718=0&563=0&696=0&810=0&684=0&571=0&604=0&737=0&507=0&599=0&837=0&699=0&670=0&574=0&745=0&821=-1&660=0&609=0&542=0&752=0&720=0&795=0&722=0&760=0&533=0&734=0&828=0&614=0&624=0&512=0&770=0&743=0&605=0&710=0&516=0&677=0&851=0&579=0&', '2T04', '2020-06-15 14:12:28', 2, 8, 40);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `exam` int(11) NOT NULL,
  `q` text COLLATE utf8_polish_ci NOT NULL,
  `ans` text COLLATE utf8_polish_ci NOT NULL,
  `i` text COLLATE utf8_polish_ci,
  `at` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `exam`, `q`, `ans`, `i`, `at`) VALUES
(1, 1, 'Na rysunku procesor oznaczony jest numerem', '0', 'old/1.jpg', '[\"2\",\"3\",\"5\",\"8\"]'),
(2, 1, 'Na rysunku karta rozszerzeń oznaczona jest numerem', '1', 'old/2.jpg', '[\"1\",\"4\",\"6\",\"7\"]'),
(3, 1, 'W przedstawionej na schemacie płycie głównej złącze PCI oznaczone jest numerem', '3', 'old/5.jpg', '[\"1\",\"2\",\"3\",\"4\"]'),
(4, 1, 'Do którego wyprowadzenia należy podłączyć głośniki aktywne w karcie dźwiękowej, której schemat funkcjonalny przedstawia rysunek?', '2', 'old/12.jpg', '[\"Mic in\",\"Line in\",\"Line out\",\"Speaker out\"]'),
(5, 1, 'Ile komórek pamięci można zaadresować bezpośrednio w 64 bitowym procesorze, który ma 32 bitową szynę adresową?', '0', NULL, '[\"2 do potęgi 32\",\"2 do potęgi 64\",\"32 do potęgi 2\",\"64 do potęgi 2\"]'),
(6, 1, 'Klaster komputerowy to', '2', NULL, '[\"komputer z macierzą dyskową\",\"komputer z wieloma procesorami\",\"grupa komputerów pracujących współbieżnie tak, jakby był to jeden komputer\",\"komputer zapasowy, na którym co pewien czas wykonywana jest kopia systemu głównego\"]'),
(7, 1, 'Pamięć oznaczona symbolem PC3200 nie może współpracować z magistralą', '3', NULL, '[\"300 MHz\",\"333 MHz\",\"400 MHz\",\"533 MHz\"]'),
(8, 1, 'Jaka jest maksymalna prędkość odczytu płyt CD-R w napędzie oznaczonym x48?', '2', NULL, '[\"480 kB/s\",\"4800 kB/s\",\"7200 kB/s\",\"10000 kB/s\"]'),
(9, 1, 'Urządzenie komputerowe, które bezwzględnie powinno być podłączone do sieci za pośrednictwem UPS, to', '2', NULL, '[\"dysk zewnętrzny\",\"drukarka atramentowa\",\"serwer sieciowy\",\"ploter\"]'),
(10, 1, 'Z jakiego systemu plików należy skorzystać instalując Linuxa, by mieć możliwość definiowania uprawnień do plików i folderów?', '0', NULL, '[\"EXT2\",\"FAT32\",\"NTFS\",\"ISO9660\"]'),
(11, 1, 'W celu zdalnego i przy tym bezpiecznego administrowania systemem Linux należy wykorzystać protokół', '3', NULL, '[\"FTP\",\"Telnet\",\"SMTP\",\"SSH2\"]'),
(12, 1, 'Cechą charakterystyczną wirusów polimorficznych jest to, że', '3', NULL, '[\"atakują tablicę FAT\",\"atakują rekord startowy dysku\",\"zarażają wszystkie komputery w sieci lokalnej\",\"mają cechę polegającą na modyfikowaniu swojego kodu\"]'),
(13, 1, 'Na komputerze podłączonym do Internetu, w programie antywirusowym bazę wirusów należy aktualizować co najmniej', '0', NULL, '[\"raz dziennie\",\"raz w tygodniu\",\"raz w miesiącu\",\"raz do roku\"]'),
(14, 1, 'Jeżeli podczas podłączenia stacji dysków elastycznych 1,44 MB kabel danych zostanie podłączony odwrotnie, to', '0', NULL, '[\"BIOS komputera zgłosi błąd podłączenia stacji dysków\",\"BIOS komputera poprawnie wykryje stację dysków\",\"BIOS komputera wykryje stację dysków jako 2,88 MB\",\"stacja dysków ulegnie uszkodzeniu\"]'),
(15, 1, 'Jakie elementy znajdują się na przedstawionej płycie głównej?', '1', 'old/71.jpg', '[\"2 złącza ISA, 3 złącza PCI, 4 złącza pamięci DIMM\",\"2 złącza ISA, 4 złącza PCI, 3 złącza pamięci DIMM\",\"3 złącza ISA, 4 złącza PCI, 2 złącza pamięci DIMM\",\"4 złącza ISA, 2 złącza PCI, 3 złącza pamięci DIMM\"]'),
(16, 1, 'Na schemacie blokowym, przedstawiającym fragment systemu mikroprocesorowego, symbolem X oznaczono', '2', 'old/72.jpg', '[\"pamięć Cache\",\"kontroler DMA\",\"kontroler przerwań\",\"pamięć stałą ROM\"]'),
(17, 1, 'Na zdjęciu przedstawiono płytę główną komputera. Strzałką oznaczono', '2', 'old/74.jpg', '[\"procesor z umocowanym radiatorem\",\"chip wbudowanej karty graficznej\",\"kontroler mostka północnego z umocowanym radiatorem\",\"kontroler mostka południowego\"]'),
(18, 1, 'Schemat blokowy przedstawia', '1', 'old/86.jpg', '[\"streamer\",\"dysk twardy\",\"napęd dyskietek\",\"napęd DVD-ROM\"]'),
(19, 1, 'Systemy operacyjne z rodziny Linux rozprowadzane są na podstawie licencji', '0', NULL, '[\"GNU\",\"MOLP\",\"shareware\",\"komercyjnej\"]'),
(20, 1, 'Zgodnie z dokumentacją karty graficznej jej zdolność do pracy z systemem AGP 2X/4X umożliwia', '0', NULL, '[\"przesyłanie danych z maksymalną prędkością 1066 MB/s\",\"przesyłanie danych z maksymalną prędkością 256 MB/s\",\"pracę z maksymalną częstotliwością taktowania 55 MHz\",\"pracę z maksymalną częstotliwością taktowania 44 MHz\"]'),
(21, 1, 'Jeżeli w konfiguracji karty graficznej zostanie  wybrane odświeżanie obrazu większe od zalecanego, monitor CRT spełniający normy TCO 99', '3', NULL, '[\"ulegnie uszkodzeniu\",\"nie wyłączy się, będzie wyświetlał czarny obraz\",\"nie wyłączy się, będzie wyświetlał jedynie część obrazu\",\"przejdzie w stan uśpienia lub pojawi się okno informacyjne z komunikatem\"]'),
(22, 1, 'Jakie systemy operacyjne infekuje wirus MS Blaster?', '0', NULL, '[\"MS Windows 2000/NT/XP\",\"MS Windows 9x\",\"Linux\",\"DOS\"]'),
(23, 1, 'W celu wymiany uszkodzonego modułu pamięci RAM w pierwszej kolejności należy', '2', NULL, '[\"zdemontować uszkodzony moduł pamięci\",\"otworzyć obudowę komputera\",\"odłączyć zasilanie komputera\",\"wyłączyć monitor ekranowy\"]'),
(24, 1, 'Specyfika pracy firmy wymaga posługiwania się systemami plików charakteryzujących się dużym bezpieczeństwem i możliwością szyfrowania danych.\nW tym celu należy zastosować system operacyjny Windows', '0', NULL, '[\"2000/7/XP\",\"NC\",\"NTSC\",\"Server\"]'),
(25, 1, 'Oprogramowanie antywirusowe może skutecznie chronić komputer. Ważne jest, aby wybrać opcję uruchamiania programu wraz z komputerem oraz opcję', '1', NULL, '[\"skanowania ostatnio używanych programów\",\"monitorowania w czasie rzeczywistym (skanowania w tle)\",\"automatycznego kasowania zainfekowanych plików\",\"automatycznego odłączenia od sieci w przypadku infekcji\"]'),
(26, 1, 'Szerokość magistrali pamięci DDR SDRAM wynosi', '1', NULL, '[\"72 bity\",\"64 bity\",\"36 bitów\",\"32 bity\"]'),
(27, 1, 'Przy pomocy taśmy 34-pinowej przedstawionej na rysunku podłącza się do płyty głównej komputera', '2', 'old/148.jpg', '[\"dyski SCSI\",\"dyski ATA\",\"napędy dyskietek 3,5 lub 5,25 cala\",\"napędy DVD.\"]'),
(28, 1, 'Niektóre systemy operacyjne są wielodostępne (multiuser). Systemy takie', '3', NULL, '[\"równocześnie wykonują wiele programów (zadań)\",\"sterują układem (klasterem) niezależnych komputerów\",\"stosowane są głównie w przemyśle i systemach sterowania\",\"oprócz wielozadaniowości z wywłaszczeniem realizują funkcję przydzielania czasu użytkownikom\"]'),
(29, 1, 'Tabela przedstawia parametry trzech dysków twardych standardu Ultra320 SCSI. Dyski te mogą pracować z maksymalnym transferem wewnętrznym', '0', 'old/162.jpg', '[\"132 MB/s\",\"320MB/S\",\"200MB/S\",\"320 GB/s\"]'),
(30, 1, 'Blok funkcjonalny RAMDAC na schemacie blokowym przedstawia', '0', 'old/168.jpg', '[\"przetwornik cyfrowo-analogowy z pamięcią RAM\",\"przetwornik analogowo-cyfrowy z pamięcią RAM\",\"pamięć RAM karty graficznej\",\"pamięć ROM karty graficznej\"]'),
(31, 1, 'W trybie wielozadaniowości z wywłaszczeniem zawieszony program', '1', NULL, '[\"może zawiesić cały system operacyjny\",\"nie może zawiesić systemu operacyjnego\",\"zablokuje pracę wszystkich innych programów\",\"nie pozwoli usunąć się z pamięci operacyjnej\"]'),
(32, 1, 'Jak należy wpisać w formule arkusza kalkulacyjnego adres komórki B3, żeby przy kopiowaniu tej formuły w dowolne miejsce arkusza adres komórki B3 pozostał niezmieniony?', '3', NULL, '[\"B3\",\"$B3\",\"B$3\",\"$B$3\"]'),
(33, 1, 'W wyniku użycia narzędzia diagnostycznego chkdsk otrzymano informacje widoczne na zrzucie ekranu. Jaką wielkość posiada pojedynczy klaster dysku?', '2', 'old/186.jpg', '[\"1 972 kB\",\"2 140 kB\",\"4 kB\",\"8 kB\"]'),
(34, 1, 'Komputery przenośne są z reguły wyposażone w bezprzewodowe sieci LAN. Ograniczenia ich użytkowania dotyczą emisji fal radiowych mogących zakłócać działanie innych, ważnych dla bezpieczeństwa, urządzeń', '1', NULL, '[\"w pociągu\",\"w samolocie\",\"w biurze\",\"w mieszkaniu\"]'),
(35, 1, 'Plik zaszyfrowany przez użytkownika za pomocą systemu NTFS 5.0 jest każdorazowo automatycznie szyfrowany podczas', '0', NULL, '[\"zapisywania go na dysku\",\"kopiowania go przez sieć\",\"wysyłania go pocztą e-mail\",\"odczytywania go przez innego użytkownika\"]'),
(36, 1, 'Na zdjęciu przedstawiono', '2', 'old/211.jpg', '[\"modem kablowy\",\"kartę telewizyjną\",\"kartę sieci bezprzewodowej\",\"moduł łączący komputer z UPS\"]'),
(37, 1, 'Zerowanie rejestrów procesora odbywa się poprzez', '0', NULL, '[\"użycie sygnału RESET\",\"wyzerowanie bitów rejestru flag\",\"ustawienie parametru w BIOS-ie\",\"ustawienie licznika rozkazów na adresie zerowym\"]'),
(38, 1, 'Do porównywania liczb binarnych służą', '1', NULL, '[\"sumatory\",\"komparatory\",\"multipleksery\",\"demultipleksery\"]'),
(39, 1, 'Na podstawie nazw sygnałów sterujących określ funkcję podzespołu komputera oznaczonego na rysunku symbolem X', '2', 'old/220.jpg', '[\"Układ generatorów programowalnych\",\"Zegar czasu rzeczywistego\",\"Kontroler przerwań\",\"Kontroler DMA\"]'),
(40, 1, 'Który z podzespołów komputera przy wyłączonym zasilaniu przechowuje program rozpoczynający ładowanie systemu operacyjnego?', '2', 'old/221.jpg', '[\"CPU\",\"RAM\",\"ROM\",\"I/O\"]'),
(41, 1, 'Monitor CRT łączy się z kartą graficzną za pomocą złącza', '2', NULL, '[\"PCMCIA\",\"D-USB\",\"D-SUB\",\"BNC\"]'),
(42, 1, 'Rejestr mikroprocesora zwany licznikiem rozkazów zawiera', '2', NULL, '[\"liczbę rozkazów wykonanych przez procesor do danego momentu\",\"liczbę rozkazów pozostałych do wykonania do końca programu\",\"adres rozkazu przeznaczonego do wykonania jako następny\",\"liczbę cykli zegara liczoną od początku pracy programu\"]'),
(43, 1, 'MFT w systemie plików NTFS to', '3', NULL, '[\"główny plik indeksowy partycji\",\"główny rekord rozruchowy dysku\",\"tablica partycji na dysku twardym\",\"plik zawierający informacje dotyczące poszczególnych plików i folderów na danym woluminie\"]'),
(44, 1, 'Sumą dwóch liczb binarnych 1101011 i 1001001 jest liczba dziesiętna', '2', NULL, '[\"402\",\"201\",\"180\",\"170\"]'),
(45, 1, 'Czynności samokontrolujące komputer po włączeniu zasilania oznaczone są skrótem', '0', NULL, '[\"POST\",\"BIOS\",\"CPU\",\"MBR\"]'),
(46, 1, 'Magistrala, która łączy w komputerze procesor z kontrolerem pamięci, składająca się z szyny adresowej, szyny danych i linii sterujących, nosi nazwę', '1', NULL, '[\"AGP – Accelerated Graphics Port\",\"FSB – Front Side Bus\",\"ISA – Industry Standard Architecture\",\"PCI – Peripheral Component Interconnect\"]'),
(47, 1, 'Określ wielkość klastra na podstawie zamieszczonego fragmentu komunikatu systemu WINDOWS wyświetlonego po zakończeniu działania programu format a:', '0', 'old/247.jpg', '[\"0,5 KB\",\"512 KB\",\"12 bitów\",\"1 457 664 bajtów\"]'),
(48, 1, 'Systemy operacyjne z rodziny Linux rozprowadzane są na podstawie licencji', '0', NULL, '[\"GNU\",\"MOLP\",\"shareware\",\"komercyjnej\"]'),
(49, 1, 'W systemie Linux ifconfig oznacza', '1', NULL, '[\"nazwę karty sieciowej\",\"narzędzie umożliwiające wyświetlenie stanu interfejsów sieciowych\",\"narzędzie umożliwiające sprawdzanie znanych adresów MAC/IP\",\"wykorzystanie pakietów TCP/IP do sprawdzenia stanu odległego hosta\"]'),
(50, 1, 'Które złącze płyty głównej komputera służy do zainstalowania przedstawionej na zdjęciu karty graficznej?', '3', 'old/281.jpg', '[\"ISA\",\"PCI\",\"AGP\",\"PCI-E\"]'),
(51, 1, 'Który z portów na panelu tylnym komputera oznacza się przedstawionym symbolem?', '3', 'old/282.jpg', '[\"COM\",\"LPT\",\"RJ45\",\"USB\"]'),
(52, 1, 'Jak nazywa się port panelu tylnego komputera zamieszczony na rysunku?', '3', 'old/283.jpg', '[\"FIRE WIRE\",\"D-SUB\",\"HDMI\",\"DVI\"]'),
(53, 1, 'Scandisk to program, który stosuje się do', '3', NULL, '[\"defragmentacji dysku\",\"formatowania dysku\",\"oczyszczania dysku\",\"sprawdzania dysku\"]'),
(54, 1, 'Główny rekord rozruchowy dysku twardego komputera to', '1', NULL, '[\"BOOT\",\"MBR\",\"FAT\",\"PT\"]'),
(55, 1, 'Jaki zestaw kolorów zawiera tryb CMYK?', '0', NULL, '[\"Błękitny, purpurowy, żółty i czarny\",\"Czerwony, zielony, żółty i granatowy\",\"Czerwony, zielony, niebieski i czarny\",\"Czerwony, purpurowy, żółty i karmelowy\"]'),
(56, 1, 'W systemie Windows moduł odpowiedzialny za internetowe usługi informacyjne to', '0', NULL, '[\"IIS\",\"ISA\",\"IIU\",\"OSI\"]'),
(57, 1, 'Co oznacza znajdujący się w dokumentacji technicznej płyty głównej parametr LGA 775?', '0', NULL, '[\"Typ gniazda procesora\",\"Typ chipsetu płyty\",\"Rodzaj obsługiwanych pamięci\",\"Rodzaj karty graficznej\"]'),
(58, 1, 'Rezydentna część programu antywirusowego jako podstawowa forma ochrony antywirusowej, odpowiedzialna za ciągłe nadzorowanie chronionego systemu komputerowego, to', '2', NULL, '[\"skaner skryptowy\",\"zapora systemowa\",\"monitor antywirusowy\",\"moduł antyspywarowy\"]'),
(59, 1, 'Na zdjęciu, strzałką wskazano gniazdo interfejsu', '3', 'old/352.jpg', '[\"COM\",\"FDD\",\"IDE\",\"LPT\"]'),
(60, 1, 'Który z podzespołów komputera przy wyłączonym zasilaniu przechowuje program rozpoczynający ładowanie systemu operacyjnego?', '2', 'old/361.jpg', '[\"CPU\",\"RAM\",\"ROM\",\"I/O\"]'),
(61, 1, 'Na podstawie nazw sygnałów sterujących określ funkcję podzespołu komputera oznaczonego na rysunku symbolem X', '2', 'old/362.jpg', '[\"Układ generatorów programowalnych\",\"Zegar czasu rzeczywistego\",\"Kontroler przerwań\",\"Kontroler DMA\"]'),
(62, 1, 'Co oznacza skrót MBR, dotyczący urządzeń techniki komputerowej?', '0', NULL, '[\"Główny rekord rozruchowy SO\",\"Fizyczny adres karty sieciowej\",\"Bloki pamięci górnej komputera IBM/PC\",\"Usługę związaną z tłumaczeniem nazw domeny\"]'),
(63, 1, 'Który z interfejsów jest interfejsem równoległym?', '0', NULL, '[\"LPT\",\"USB\",\"PS/2\",\"RS232\"]'),
(64, 1, 'Rejestr mikroprocesora zwany licznikiem rozkazów zawiera', '2', NULL, '[\"liczbę rozkazów wykonanych przez procesor do danego momentu\",\"liczbę rozkazów pozostałych do wykonania do końca programu\",\"adres rozkazu przeznaczonego do wykonania jako następny\",\"liczbę cykli zegara liczoną od początku pracy programu\"]'),
(65, 1, 'Liczba 257 dziesiętnie to', '0', NULL, '[\"1 0000 0001 dwójkowo\",\"1000 0000 dwójkowo\",\"FF szesnastkowo\",\"F0 szesnastkowo\"]'),
(66, 1, 'Liczba szesnastkowa: FFFF w systemie dwójkowym ma postać', '0', NULL, '[\"1111 1111 1111 1111\",\"1111 0000 0000 0111\",\"0010 0000 0000 0111\",\"0000 0000 0000 0000\"]'),
(67, 1, 'Na podstawie informacji z \"Właściwości systemu\" można wywnioskować, że na komputerze jest zainstalowana fizycznie pamięć RAM o pojemności', '1', 'old/384.jpg', '[\"523 MB\",\"512 MB\",\"256 MB\",\"128 MB\"]'),
(68, 1, 'Jaka drukarka powinna być zastosowana w dziale sprzedaży hurtowni materiałów budowlanych do drukowania faktur na papierze samokopiującym, tak aby uzyskać na nim kopie wydruku?', '0', NULL, '[\"Igłowa\",\"Laserowa\",\"Atramentowa\",\"Sublimacyjna\"]'),
(69, 1, 'Manager bootowania, który pozwala na wybór systemu operacyjnego Linux do uruchomienia to', '3', NULL, '[\"Ranish Partition Manager\",\"Smart Boot Manager\",\"Boot Magic\",\"Grub\"]'),
(70, 1, 'W którym miejscu znajduje się nagłówek i stopka w dokumencie tekstowym Word?', '0', NULL, '[\"Nagłówek jest drukowany na górnym marginesie, natomiast stopka jest drukowana na dolnym marginesie\",\"Nagłówek jest drukowany na dolnym marginesie, natomiast stopka jest drukowana na górnym marginesie\",\"Nagłówek znajduje się na początku dokumentu, natomiast stopka na końcu dokumentu\",\"Na parzystych stronach dokumentu\"]'),
(71, 1, 'Odwrotnością bezstratnej kompresji danych jest', '1', NULL, '[\"archiwizacja\",\"dekompresja\",\"prekompresja\",\"pakowanie danych\"]'),
(72, 1, 'Jaki pierwszy znak w nazwie pliku w systemie Windows oznacza plik tymczasowy?', '2', NULL, '[\"#\",\"*\",\"~\",\"&\"]'),
(73, 1, 'Robak komputerowy to program, który', '0', NULL, '[\"ma zdolność samoreplikacji\",\"potrzebuje programu nosiciela\",\"uaktywnia się, gdy nadejdzie odpowiednia data\",\"uruchamia się, gdy użytkownik zainfekowanego komputera uruchomi jakiś program\"]'),
(74, 1, 'W systemie operacyjnym Linux archiwizację danych wykonuje się poleceniem', '0', NULL, '[\"tar\",\"rpm\",\"cmd\",\"chmod\"]'),
(75, 1, 'Pamięć podręczna określana jest nazwą', '1', NULL, '[\"Chipset\",\"Cache\",\"EIDE\",\"VLB\"]'),
(76, 1, 'Pamięć nieulotna, elektrycznie kasowana i programowana określana jest skrótem', '3', NULL, '[\"IDE\",\"ROM\",\"RAM\",\"EEPROM\"]'),
(77, 1, 'Ustawienie zworek na dyskach z interfejsem IDE odpowiada za', '3', NULL, '[\"rodzaj interfejsu dyskowego\",\"prędkość obrotową dysku\",\"napięcie zasilania silnika\",\"tryb pracy dysku\"]'),
(78, 1, 'Koprocesor (Floating Point Unit) w komputerze służy do wykonywania', '3', NULL, '[\"podprogramów\",\"operacji na liczbach całkowitych\",\"operacji na liczbach naturalnych\",\"operacji zmiennoprzecinkowych\"]'),
(79, 1, 'Jakie mogą być typy partycji dyskowych w systemie operacyjnym Windows?', '0', NULL, '[\"Podstawowa, rozszerzona oraz dysk logiczny\",\"Dodatkowa, rozszerzona, wymiany oraz dysk logiczny\",\"Podstawowa, rozszerzona, wymiany, dodatkowa\",\"Dodatkowa, podstawowa, rozszerzona, wymiany oraz dysk logiczny\"]'),
(80, 1, 'Na płycie głównej pokazanej na schemacie, moduły pamięci RAM można zainstalować w gnieździe oznaczonym cyfrą', '0', 'old/453.jpg', '[\"1\",\"2\",\"3\",\"4\"]'),
(81, 1, 'Które zadanie spełnia system informatyczny?', '0', NULL, '[\"Przetwarzanie danych\",\"Sterowanie monitorem CRT\",\"Zabezpieczanie przed wirusami\",\"Kontrola pracy oprogramowania diagnostycznego\"]'),
(82, 1, 'W czasie uruchamiania (krótko po teście POST) komputer zawiesza się. Co może być przyczyną takiej usterki?', '3', NULL, '[\"Zbyt dużo ikon na pulpicie\",\"Źle skonfigurowana drukarka\",\"Brak podłączonej myszki komputerowej\",\"Niewłaściwe napięcie zasilania procesora\"]'),
(83, 1, 'Na rysunku przedstawiono zrzut ekranu z przeprowadzonego testu', '0', 'old/457.jpg', '[\"czasu oczekiwania pamięci\",\"czasu dostępu do dysku twardego\",\"czasu dostępu do napędu optycznego\",\"czasu opróżniania buforu systemowego\"]'),
(84, 1, 'Przedstawiony symbol odnosi się do urządzeń', '2', 'old/458.jpg', '[\"USB\",\"LPT\",\"SCSI\",\"IEEE-1394\"]'),
(85, 1, 'Pamięci DDR2 zasilane są napięciem', '2', NULL, '[\"1,0 V\",\"1,4 V\",\"1,8 V\",\"2,5 V\"]'),
(86, 1, 'Na zdjęciu przedstawiono kość pamięci', '2', 'old/461.jpg', '[\"RIMM\",\"SIMM\",\"SDRAM\",\"RAMBUS\"]'),
(87, 1, 'Wartość liczby 1101 0100 0111 w kodzie szesnastkowym wynosi', '3', NULL, '[\"C27\",\"D43\",\"C47\",\"D47\"]'),
(88, 1, 'Na zdjęciu jest widoczny tylny panel komputera. Jak nazywa się wejście oznaczone strzałką?', '3', 'old/491.jpg', '[\"LPT\",\"USB\",\"COM\",\"FireWire\"]'),
(89, 1, 'Rysunek przedstawia schemat blokowy karty dźwiękowej. Jaką funkcję pełni układ oznaczony cyfrą 1?', '2', 'old/498.jpg', '[\"Wzmacnia sygnał wejściowy\",\"Wzmacnia sygnał wyjściowy\",\"Zamienia sygnał analogowy na cyfrowy\",\"Zamienia sygnał cyfrowy na analogowy\"]'),
(90, 1, 'Active Directory w systemach MS Windows Server 2000 i MS Windows Server 2003 to', '3', NULL, '[\"baza danych zawierająca informacje o użytkownikach sieci, ich hasłach dostępu i uprawnieniach\",\"logiczna grupa komputerów, które mają możliwość komunikowania się w sieci i wzajemnego udostępniania zasobów\",\"grupa komputerów połączonych w sieć, składająca się z serwera pełniącego rolę kontrolera oraz stacji roboczych – klientów\",\"usługa katalogowa, która przechowuje informacje dotyczące obiektów w sieci i udostępnia je użytkownikom oraz administratorom sieci\"]'),
(91, 1, 'Procesor RISC to procesor', '3', NULL, '[\"z pełną listą rozkazów\",\"z główną listą rozkazów\",\"z kompleksową listą rozkazów\",\"ze zredukowaną listą rozkazów\"]'),
(92, 1, 'W dokumentacji systemu operacyjnego Windows XP opisane są pliki z rozszerzeniem .dll. Rozszerzenie to dotyczy pliku', '0', NULL, '[\"biblioteki\",\"uruchamialnego\",\"inicjalizacyjnego\",\"dziennika zdarzeń\"]'),
(93, 1, 'Procesor Athlon 2800+ to', '2', NULL, '[\"procesor firmy Intel taktowany częstotliwością 2,8 GB\",\"procesor firmy AMD taktowany częstotliwością 2,8 GB\",\"procesor firmy AMD o wydajności podobnej do procesora Pentium 4 taktowanego częstotliwością 2,8 GHz\",\"procesor firmy Intel o wydajności podobnej do procesora Pentium 4 taktowanego częstotliwością 2,8 GHz\"]'),
(94, 1, 'Gdzie w edytorze tekstu wprowadza się informację lub ciąg znaków, który ma pojawić się na wszystkich stronach dokumentu?', '2', NULL, '[\"W polu tekstowym\",\"W przypisach dolnych\",\"W nagłówku lub stopce\",\"W przypisach końcowych\"]'),
(95, 1, 'Jeżeli w komórce arkusza kalkulacyjnego MS Excel, zamiast cyfr pojawiają się znaki ########, to należy przede wszystkim sprawdzić, czy', '3', NULL, '[\"wpisana formuła zawiera błąd\",\"pojawił się błąd w obliczeniach\",\"wprowadzone zostały znaki tekstowe, a nie liczby\",\"liczba nie mieści się w komórce i nie można jej prawidłowo wyświetlić\"]'),
(96, 1, 'We właściwościach karty graficznej w zakładce Zasoby jest określony jeden z zakresów pamięci dla tej karty od A0000h do BFFFFh. Wielkość ta oznacza obszar pamięci określony adresem fizycznym', '0', NULL, '[\"1010 0000 0000 0000 0000 – 1011 1111 1111 1111 1111\",\"1011 0000 0000 0000 0000 – 1100 1111 1111 1111 1111\",\"1001 1111 1111 1111 1111 – 1010 0000 0000 0000 0000\",\"1100 1111 1111 1111 1111 – 1110 1111 1111 1111 1111\"]'),
(97, 1, 'Po włączeniu komputera procedura POST pokazuje 512 MB RAM. Na karcie właściwości ogólnych systemu operacyjnego Windows widnieje wartość 480 MB RAM. Co jest przyczyną tej różnicy?', '3', NULL, '[\"System operacyjny jest źle zainstalowany i nie obsługuje całego obszaru pamięci\",\"Jest źle przydzielony rozmiar pliku stronicowania w ustawieniach pamięci wirtualnej\",\"Jedna z kości pamięci jest uszkodzona lub jest uszkodzone jedno z gniazd pamięci RAM na płycie głównej\",\"W komputerze znajduje się karta graficzna zintegrowana z płytą główną wykorzystująca część pamięci RAM\"]'),
(98, 1, 'W przedsiębiorstwie należy cyklicznie tworzyć kopie bezpieczeństwa dużej ilości danych, znajdujących się na serwerze, rzędu kilkuset GB. Jakie urządzenie najlepiej wykorzystać do tego celu?', '0', NULL, '[\"Streamer\",\"Macierz RAID1\",\"Nagrywarkę CD\",\"Nagrywarkę DVD\"]'),
(99, 1, 'W jakim systemie operacyjnym przy instalacji sterowników do nowego urządzenia może pojawić się komunikat', '2', 'old/526.jpg', '[\"Unix\",\"Linux\",\"Windows XP\",\"Windows 98\"]'),
(100, 1, 'System operacyjny działający w trybie tekstowym z możliwością uruchomienia środowiska graficznego KDE, to', '1', NULL, '[\"DOS\",\"Linux\",\"Windows 95\",\"Windows XP\"]'),
(101, 1, 'Skaner antywirusowy wykrył niepożądane oprogramowanie. Z opisu wynika, że jest to dialer, który pozostawiony w systemie', '3', NULL, '[\"zaatakuje rekord startowy dysku\",\"zainfekuje załączniki poczty internetowej\",\"przejmie pełną kontrolę nad komputerem\",\"połączy się z płatnymi numerami telefonicznymi przy użyciu modemu\"]'),
(102, 1, 'Jaką cyfrą został oznaczony procesor na schemacie płyty głównej komputera?', '0', 'old/561.jpg', '[\"1\",\"2\",\"3\",\"4\"]'),
(103, 1, 'Na rysunku przedstawiono symbol układu cyfrowego', '1', 'old/563.jpg', '[\"dekodera priorytetu\",\"kodera priorytetu\",\"multipleksera priorytetu\",\"demultipleksera priorytetu\"]'),
(104, 1, 'Na schemacie blokowym, przedstawiającym fragment systemu mikroprocesorowego, symbolem X oznaczono', '2', 'old/566.jpg', '[\"pamięć cache\",\"kontroler DMA\",\"kontroler przerwań\",\"pamięć stałą ROM\"]'),
(105, 1, 'Cecha systemu operacyjnego, pozwalająca uruchomić równocześnie kilka aplikacji w ramach podziału czasu, przy czym podział czasu realizowany jest przez same aplikacje nosi nazwę', '1', NULL, '[\"wielodostępowości\",\"wielozadaniowości kooperatywnej\",\"wielozadaniowości z wywłaszczeniem\",\"wieloprogramowości\"]'),
(106, 1, 'Program \"VirtualPC\", który można pobrać z witryny firmy Microsoft służy do korzystania:', '0', NULL, '[\"z wirtualnych systemów operacyjnych na dysku lokalnym\",\"z bezpłatnej pomocy technicznej TechNet.Soft firmy Virtual Soft\",\"z bezpłatnego konta o pojemności 100 MB w ramach hostingu firmy Microsoft\",\"z konta osobistego o pojemności 1 GB w serwerze wirtualnym firmy Microsoft\"]'),
(107, 1, 'Zapisywanie kluczy rejestru do pliku nazywamy', '0', NULL, '[\"eksportowaniem rejestru\",\"kopiowaniem rejestru\",\"modyfikacją rejestru\",\"edycją rejestru\"]'),
(108, 1, 'W tabeli zamieszczono dane katalogowe procesora AMD Athlon 1333 Model 4 Thunderbird. Z jaką częstotliwością realizowane są przesłania międzyrejestrowe?', '2', 'old/582.jpg', '[\"133 MHz\",\"266 MHz\",\"1333 MHz\",\"2666 MHz\"]'),
(109, 1, 'Suma liczb szesnastkowych: 4C + C4 zapisana w systemie dziesiętnym wynosi', '2', NULL, '[\"270\",\"271\",\"272\",\"273\"]'),
(110, 1, 'Monitor powinien spełniać standard', '3', NULL, '[\"TN GNS\",\"ISO-9N01\",\"TCO Energy66.\",\"EPA Energy Star\"]'),
(111, 1, 'Szkodliwe samoreplikujące się programy komputerowe wykorzystujące luki w systemie operacyjnym, które potrafią uzupełniać i zmieniać swoją funkcjonalność to', '0', NULL, '[\"robaki\",\"rootkity\",\"trojany\",\"wirusy\"]'),
(112, 1, 'Symbol graficzny odnosi się do standardu urządzeń', '3', 'old/632.jpg', '[\"LPT\",\"USB\",\"SCSI-12\",\"FireWire\"]'),
(113, 1, 'Zdjęcie przedstawia 168-stykową pamięć\n', '3', 'old/633.jpg', '[\"SIPP\",\"SIMM\",\"RIMM\",\"SDRAM\"]'),
(114, 1, 'Rysunek przedstawia schemat blokowy zasilacza', '0', 'old/639.jpg', '[\"awaryjnego (UPS)\",\"impulsowego komputera\",\"analogowego komputera\",\"impulsowego matrycy RAID\"]'),
(115, 1, 'Na schemacie element odpowiedzialny za dekodowanie instrukcji jest oznaczony cyfrą', '2', 'old/640.jpg', '[\"1\",\"2\",\"3\",\"6\"]'),
(116, 1, 'Rozpowszechniona forma oprogramowania zgodna z zasadą \"najpierw wypróbuj, a potem kup\", to', '3', NULL, '[\"OEM\",\"Software\",\"Freeware\",\"Shareware\"]'),
(117, 1, 'Który z portów panelu tylnego płyty głównej jest oznaczany w dokumentacji jako port standardu RS232C?', '0', NULL, '[\"COM\",\"LPT\",\"PS/2\",\"USB\"]'),
(118, 1, 'Termin SLI dotyczy', '1', NULL, '[\"dysków twardych\",\"kart graficznych\",\"kart sieciowych\",\"modemów\"]'),
(119, 1, 'W tabeli zamieszczono podstawowe dane techniczne dwóch interfejsów. Wynika z nich, że SATA w porównaniu z ATA ma', '2', 'old/649.jpg', '[\"mniejszą przepustowość i mniejszą liczbę wyprowadzeń w złączu\",\"większą przepustowość i większą liczbę wyprowadzeń w złączu\",\"większą przepustowość i mniejszą liczbę wyprowadzeń w złączu\",\"mniejszą przepustowość i większą liczbę wyprowadzeń w złączu\"]'),
(120, 1, 'Tablica partycji zakończona jest sygnaturą (ciągiem bitów) 55AA (szesnastkowo). Odpowiadająca jej wartość dwójkowa to', '3', NULL, '[\"1,0101010010101E+015\",\"1,0100101101001E+015\",\"101101001011010\",\"101010110101010\"]'),
(121, 1, 'Zgodnie z zamieszczonym fragmentem testu w komputerze jest zainstalowana', '1', 'old/666.jpg', '[\"pamięć fizyczna 0,50 GB i plik wymiany 1,00 GB \",\"pamięć fizyczna 0,49 GB i plik wymiany 1,20 GB \",\"pamięć fizyczna 0,49 GB i plik wymiany 1,22 GB \",\"pamięć fizyczna 0,70 GB i plik wymiany 1,22 GB \"]'),
(122, 1, 'Pracownik serwisu w wyniku przeprowadzonego testu na serwerze NetWare uzyskał informację, że obiekt ma prawo', '3', 'old/667.jpg', '[\"czytania swoich właściwości\",\"dodawania swoich właściwości\",\"porównania swoich właściwości\",\"dodawania lub usuwania swoich właściwości\"]'),
(123, 1, 'Jednoczesne  zwiększenie  szybkości  operacji  (zapis/odczyt) i  bezpieczeństwa przechowywania danych umożliwia macierz dyskowa', '3', NULL, '[\"RAID 0\",\"RAID 1\",\"RAID 3\",\"RAID 50\"]'),
(124, 1, 'Szkodliwe samoreplikujące się programy komputerowe wykorzystujące luki w systemie operacyjnym, które potrafią uzupełniać i zmieniać swoją funkcjonalność to', '0', NULL, '[\"robaki\",\"rootkity\",\"trojany\",\"wirusy\"]'),
(125, 1, 'Program testujący wydajność sprzętu komputerowego to', '0', NULL, '[\"benchmark\",\"checkdisk\",\"exploit\",\"sniffer\"]'),
(126, 1, 'Jaką nazwę nosi niepożądane oprogramowanie komputerowe instalowane najczęściej bez wiedzy użytkownika?', '3', NULL, '[\"Shareware\",\"Slackware\",\"Freeware\",\"Malware\"]'),
(127, 1, 'Na zdjęciu przedstawiono złącza karty graficznej. Złącze cyfrowe to', '2', 'old/703.jpg', '[\"wyłącznie złącze 1\",\"wyłącznie złącze 2\",\"wyłącznie złącze 3\",\"złącze 1 i 2\"]'),
(128, 1, 'Przedstawiony symbol graficzny oznacza', '3', 'old/705.jpg', '[\"generator dźwięku\",\"filtr dolnoprzepustowy\",\"przetwornik cyfrowo-analogowy\",\"przetwornik analogowo-cyfrowy\"]'),
(129, 1, 'Na schemacie działania skanera numerem 1 oznaczono element, którego zadaniem jest', '3', 'old/713.jpg', '[\"wzmacnianie sygnału optycznego\",\"wzmacnianie sygnału elektrycznego\",\"zamiana sygnału analogowego na sygnał cyfrowy\",\"zamiana sygnału optycznego na sygnał elektryczny\"]'),
(130, 1, 'Element oznaczony numerem 1 na schemacie blokowym procesora jest odpowiedzialny za', '2', 'old/714.jpg', '[\"przechowywanie wyniku operacji\",\"wykonywanie operacji na blokach danych\",\"wykonywanie operacji na liczbach zmiennoprzecinkowych\",\"przechowywanie dodatkowych informacji o wykonywanej operacji\"]'),
(131, 1, 'Element oznaczony numerem 1 na schemacie blokowym karty graficznej', '0', 'old/715.jpg', '[\"zawiera matrycę znaków trybu tekstowego\",\"zamienia sygnał cyfrowy na sygnał analogowy\",\"generuje sygnał RGB na wyjście karty graficznej\",\"przechowuje dane wyświetlane, w trybie graficznym\"]'),
(132, 1, 'Który z elementów oznaczonych numerami od 1 do 4, przedstawionych na schemacie blokowym frame grabbera i opisanym we fragmencie dokumentacji technicznej, służy do wymiany danych z innymi urządzeniami przetwarzającymi obraz wideo bez niepotrzebnego obciążania magistrali PCI?', '1', 'old/716.jpg', '[\"1\",\"2\",\"3\",\"4\"]'),
(133, 1, 'W ramce zamieszczono zawartość jednego z plików systemu operacyjnego MS Windows. Jest to plik', '0', 'old/717.jpg', '[\"tekstowy, zawierający listę zainstalowanych systemów  operacyjnych\",\"dziennika, zawierający informacje o zainstalowanych urządzeniach\",\"wykonywalny, uruchamiający edytor rejestru systemu\",\"wsadowy, służący do uruchamiania instalatora\"]'),
(134, 1, 'Domyślnie, w systemie Linux, twardy dysk w standardzie SATA oznaczony jest', '1', NULL, '[\"fda\",\"sda\",\"ida\",\"ide\"]'),
(135, 1, 'Do sporządzenia projektu sieci komputerowej dla budynku szkoły najlepiej wykorzystać edytor grafiki wektorowej, którym jest program', '0', NULL, '[\"AutoCad\",\"MS Excel\",\"MS Publisher\",\"Adobe Photoshop\"]'),
(136, 1, 'Adres komórki pamięci podano w postaci binarnej 1110001110010100. W systemie szesnastkowym adres zapisuje się w postaci', '3', NULL, '[\"493\",\"7E+092\",\"D281\",\"E394\"]'),
(137, 1, 'Firma zajmująca się sprzątaniem musi drukować faktury tekstowe w czterech egzemplarzach jednocześnie, na papierze samokopiującym. Jaką drukarkę powinna wybrać?', '0', NULL, '[\"Igłową\",\"Laserową\",\"Atramentową\",\"Termosublimacyjną\"]'),
(138, 1, 'W biurze rachunkowym znajduje się w jednym pomieszczeniu sześć komputerów podłączonych do koncentratora kablem DTP Cat 5e. Pracownicy użytkujący te komputery muszą mieć możliwość drukowania bardzo dużej ilości (powyżej 5 tys. stron miesięcznie) dokumentów monochromatycznych. Aby koszty zakupu sprzętu i eksploatacji były jak najniższe należy wybrać:', '0', NULL, '[\"laserową drukarkę sieciową z portem RJ45\",\"atramentowe urządzenie wielofunkcyjne ze skanerem i faksem\",\"laserowe drukarki lokalne podłączone do każdego z komputerów\",\"drukarkę atramentową podłączoną do jednego z komputerów i udostępnianą w sieci\"]'),
(139, 1, 'Trzech użytkowników komputera z zainstalowanym systemem operacyjnym Windows XP Pro ma swoje foldery z dokumentami w katalogu głównym dysku C:. Na dysku jest zainstalowany system plików NTFS. Użytkownicy mają założone w systemie konta z ograniczeniami. W jaki sposób należy zabezpieczyć folder każdego z użytkowników, by pozostali nie mogli modyfikować zawartości folderu?', '3', NULL, '[\"Nadać dokumentom atrybut Ukryty we właściwościach folderów\",\"Każdemu z użytkowników zmienić typ konta na konto z ograniczeniami\",\"Nie udostępniać dokumentów w zakładce Udostępnianie  we właściwościach folderu\",\"Przypisać uprawnienia NTFS do modyfikacji folderu tylko właściwemu użytkownikowi\"]'),
(140, 1, 'Główny księgowy musi mieć możliwość odzyskiwania zawartości folderów z kopii zapasowej plików. Do jakiej grupy użytkowników systemu MS Windows XP należy go przydzielić?', '2', NULL, '[\"Użytkownicy z ograniczeniami\",\"Użytkownicy pulpitu zdalnego\",\"Operatorzy kopii zapasowych\",\"Operatorzy konfiguracji sieci\"]'),
(141, 1, 'Komputer jest najprawdopodobniej zainfekowany boot wirusem. Jakie działanie spowoduje usunięcie wirusa w sposób najmniej inwazyjny dla systemu operacyjnego?', '3', NULL, '[\"Restart systemu\",\"Uruchomienie systemu w trybie awaryjnym\",\"Ponowne zainstalowanie systemu operacyjnego\",\"Przeskanowanie programem antywirusowym z bootowalnego nośnika\"]'),
(142, 1, 'Jednym z zaleceń dotyczących ochrony antywirusowej jest skanowanie całego komputera.\nZgodnie z tym zaleceniem komputer należy skanować', '3', NULL, '[\"jedynie w sytuacji, gdy podejrzewamy zainfekowanie wirusem\",\"tylko wtedy, gdy nie działa w systemie monitor antywirusowy\",\"jedynie po aktualizacji baz programu antywirusowego\",\"systematycznie, na przykład raz w tygodniu\"]'),
(143, 1, 'Do zarządzania programami i usługami uruchamianymi wraz ze startem systemu operacyjnego w Windows 7 należy wykorzystać program', '3', NULL, '[\"config.sys\",\"autorun.inf\",\"autoexec.bat\",\"msconfig.exe\"]'),
(144, 1, 'Materiałem eksploatacyjnym dla kolorowej drukarki laserowej jest', '2', NULL, '[\"przetwornik CMOS\",\"podajnik papieru\",\"kartridż z tonerem\",\"pamięć wydruku\"]'),
(145, 1, 'Instalowanie systemów Linux oraz Windows 7 przebiegło bez żadnych utrudnień. Systemy zainstalowały się poprawnie z domyślnymi ustawieniami. Na tym samym komputerze, przy identycznej konfiguracji, podczas instalowania systemu Windows XP wyświetlony został komunikat o braku dysków twardych co może świadczyć o', '3', NULL, '[\"złym ułożeniu zworek w dysku twardym\",\"uszkodzeniu logicznym dysku twardego\",\"źle ustawionym bootowaniu napędów\",\"braku sterowników\"]'),
(146, 1, 'Która czynność doprowadzi do nieodwracalnej utraty danych, w przypadku uszkodzenia systemu plików?', '0', NULL, '[\"Formatowanie dysku.\",\"Włączenie systemu operacyjnego.\",\"Skanowanie programem antywirusowym.\",\"Przeprowadzenie skanowania scandiskiem.\"]'),
(147, 1, 'Plik ma rozmiar 2 KiB. Jest to', '3', NULL, '[\"2000 bitów\",\"2048 bitów\",\"16000 bitów\",\"16384 bitów\"]'),
(148, 1, 'Wskaż właściwą kolejność operacji przygotowujących nowy laptop do pracy.', '0', NULL, '[\"Montaż baterii, podłączenie zewnętrznego zasilania sieciowego, włączenie laptopa, instalacja systemu operacyjnego, wyłączenie laptopa po instalacji systemu operacyjnego\",\"Podłączenie zewnętrznego zasilania sieciowego, włączenie laptopa, instalacja systemu operacyjnego, montaż baterii, wyłączenie laptopa po instalacji systemu operacyjnego\",\"Podłączenie zewnętrznego zasilania sieciowego, włączenie laptopa, montaż baterii, instalacja systemu operacyjnego, wyłączenie laptopa po instalacji systemu operacyjnego\",\"Włączenie laptopa, montaż baterii, instalacja systemu operacyjnego, podłączenie zewnętrznego zasilania  sieciowego, wyłączenie laptopa po instalacji systemu operacyjnego\"]'),
(149, 1, 'Zaletą systemu plików NTFS jest', '3', NULL, '[\"możliwość sformatowania nośnika o małej pojemności (od 1,44MiB)\",\"zapisywanie plików o nazwie dłuższej niż 255 znaków\",\"przechowywanie tylko jednej kopi tabeli plików\",\"możliwość szyfrowania folderów i plików \"]'),
(150, 1, 'Okresowych kopii zapasowych dysku serwera nie można tworzyć na wymiennych nośnikach typu', '3', NULL, '[\"karty SD\",\"karty MMC\",\"płyty CD-RW\",\"płyty DVD-ROM\"]'),
(151, 1, 'W dokumentacji jednego z elementów składowych komputera zamieszczono informację, że urządzenie wspiera OpenGL. Dokumentacja dotyczy', '2', NULL, '[\"mikroprocesora.\",\"karty sieciowej.\",\"karty graficznej.\",\"dysku twardego.\"]'),
(152, 1, 'Użytkownik komputera udostępnia publicznie posiadane pliki w sieci Internet. Prawa autorskie zostaną naruszone, gdy udostępni', '3', NULL, '[\"otrzymany dokument urzędowy.\",\"własne autorskie filmy z demonstracji ulicznych.\",\"wykonane przez siebie zdjęcia obiektów wojskowych.\",\"obraz płyty systemu operacyjnego Windows 7 Home\"]'),
(153, 1, 'Przy uruchamianiu komputera pojawia się komunikat \"CMOS checksum error press F1 to continue press DEL to setup\". Wciśnięcie klawisza DEL spowoduje', '1', NULL, '[\"usunięcie pliku setup\",\"wejście do BIOS-u komputera\",\"skanowanie zawartości pamięci CMOS\",\"przejście do konfiguracji systemu Windows\"]'),
(154, 1, 'Którego oprogramowania nie można używać na urządzeniach należących do instytucji rządowych lub edukacyjnych?', '3', NULL, '[\"AbiWord\",\"Microsoft Word\",\"Windows Defender\",\"Microsoft Security Essentials\"]'),
(155, 1, 'W dokumentacji płyty głównej jest informacja  „Wsparcie dla S/PDIF Out”. Oznacza to, że dana płyta główna zawiera', '1', NULL, '[\"cyfrowe złącze sygnału video\",\"cyfrowe złącze sygnału audio\",\"analogowe złącze sygnału wyjścia video\",\"analogowe złącze sygnału wejścia video\"]'),
(156, 1, 'W systemie Windows XP do zmiany typu systemu plików z FAT32 na NTFS należy wykorzystać program\n', '0', NULL, '[\"convert.exe\",\"replace.exe\",\"subst.exe\",\"attrib.exe\"]'),
(157, 1, 'W celu dokonania aktualizacji zainstalowanego systemu operacyjnego Linux Ubuntu należy użyć polecenia ', '3', NULL, '[\"yum upgrade\",\"kernel update\",\"system update\",\"apt-get upgrade\"]'),
(158, 1, 'Wskaż nieprawidłowy podział dysku MBR na partycje', '3', NULL, '[\"3 partycje podstawowe i 1 rozszerzona\",\"2 partycje podstawowe i 1 rozszerzona\",\"1 partycja podstawowa i 1 rozszerzona \",\"1 partycja podstawowa i 2 rozszerzone\"]'),
(159, 1, 'Jaki będzie koszt wymiany karty graficznej w komputerze, jeśli karta kosztuje 250 zł, jej wymiana zajmie pracownikowi serwisu 80 min, a każda rozpoczęta roboczo godzina kosztuje 50 zł?', '2', NULL, '[\"250 zł\",\"300 zł\",\"350 zł\",\"400 zł\"]'),
(160, 1, 'W systemie operacyjnym Fedora katalogi domowe użytkowników umieszczone są w katalogu', '3', NULL, '[\"/bin\",\"/user\",\"/users\",\"/home\"]'),
(161, 1, 'W systemie operacyjnym Ubuntu konto użytkownika student można usunąć za pomocą polecenia', '0', NULL, '[\"userdel student\",\"del user student\",\"net user student /del\",\"user net student /del\"]'),
(162, 1, 'Licencja Windows OEM nie pozwala na wymianę ', '1', NULL, '[\"sprawnego zasilacza na model o lepszych parametrach\",\"sprawnej płyty głównej na model o lepszych parametrach\",\"sprawnej karty graficznej na model o lepszych parametrach\",\"sprawnego dysku twardego na model o lepszych parametrach\"]'),
(163, 1, 'Po uruchomieniu komputera pojawił się komunikat \"Non-system disk or disk error. Replace and strike any key when ready\". Przyczyną może być', '3', NULL, '[\"brak pliku ntldr\",\"uszkodzony kontroler DMA\",\"skasowany BIOS komputera\",\"dyskietka włożona do napędu\"]'),
(164, 1, 'W drukarce laserowej do utrwalania wydruku wykorzystuje się', '0', NULL, '[\"rozgrzane wałki\",\"promienie lasera\",\"taśmy transmisyjne \",\"głowice piezoelektryczne\"]'),
(165, 1, 'Które konto nie jest wbudowanym w systemie Windows XP ?\n', '1', NULL, '[\"gość\",\"admin\",\"pomocnik\",\"administrator\"]'),
(166, 1, 'System S.M.A.R.T. służy do monitorowania pracy i wykrywania błędów', '2', NULL, '[\"płyty głównej\",\"kart rozszerzeń\",\"dysków twardych\",\"napędów płyt CD/DVD\"]'),
(167, 1, 'Po zainstalowaniu Systemu Windows 7 została w BIOS komputera zmieniona konfiguracja dysku SATA z AHCI na IDE. Po ponownym uruchomieniu komputera system będzie', '0', NULL, '[\"resetował się podczas uruchamiania\",\"uruchamiał się bez zmian\",\"działał szybciej\",\"działał wolniej\"]'),
(168, 1, 'W systemie operacyjnym Ubuntu do utworzenia archiwum danych należy wykorzystać program ', '1', NULL, '[\"set\",\"tar\",\"sed\",\"awk\"]'),
(169, 1, 'Interfejsem umożliwiającym przesyłanie danych pomiędzy pokazaną na rysunku płyta główna, a urządzeniem zewnętrznym, bez równoczesnego zasilania urządzenia zewnętrznego poprzez interfejs jest', '3', 'new/286.jpg', '[\"PCI\",\"USB\",\"PCIe\",\"SATA\"]'),
(170, 1, 'W systemach operacyjnych Windows ograniczenie użytkownikom dostępu do poszczególnych katalogów, plików lub dysków umożliwia system plików', '2', NULL, '[\"FAT16\",\"FAT32\",\"NTFS\",\"EXT2\"]'),
(171, 1, 'W dokumentacji technicznej procesora Intel Xeon Processor E3-1220, producent podaje następujące parametry: # of Cores: 4 # of Threads: 4 Clock Speed: 3.1 GHz  Max Turbo Frequency: 3.4 GHz Intel Smart Cache: 8 MB DMI: 5 GT/s Instruction Set: 64 bit Instruction Set Extensions: SSE4.1/4.2, AVX Embedded Options Available: No Lithography: 32 nm Max TDP: 80 W. Oznacza to, że Menedżer zadań systemu Windows będzie pokazywał historię użycia dla', '1', 'new/288.jpg', '[\"2 procesorów\",\"4 procesorów\",\"8 procesorów\",\"16 procesorów\"]'),
(172, 1, 'Użytkownik systemu Windows otrzymuje komunikaty o zbyt małej pamięci wirtualnej. Problem ten można rozwiązać przez', '0', NULL, '[\"zwiększenie pamięci RAM\",\"zamontowanie dodatkowego dysku\",\"zwiększenie rozmiaru pliku virtualfilo.sys\",\"zamontowania dodatkowej pamięci cache procesora\"]'),
(173, 1, 'W hurtowni materiałów budowlanych istnieje konieczność jednoczesnego drukowania faktur w kilku egzemplarzach. Należy użyć drukarki', '0', NULL, '[\"igłowej\",\"laserowej\",\"atramentowej\",\"termosublimacyjnej\"]'),
(174, 1, 'Na który z nośników pamięci zewnętrznej, nie przedostanie się wirus podczas odczytywania jego zawartości?', '2', NULL, '[\"na kartę SD\",\"na pamięć Flash\",\"na płytę DVD-ROM\",\"na dysk zewnętrzny\"]'),
(175, 1, 'Adres MAC karty sieciowej zapisany w postaci binarnej wynosi 00000000-00010100-10000101-10001011-01101011-10001010. Który z zapisów jest postacią heksadecymalną tego adresu?', '1', NULL, '[\"00-12-85-8B-6B-8A\",\"00-14-85-8B-6B-8A\",\"00-14-85-8C-6C-8B\",\"00-16-83-8C-6B-8B\"]'),
(176, 1, 'Któremu zapisowi heksadecymalnemu odpowiada zapis binarny adresu komórki pamięci 0111 1100 1111 0110?', '2', NULL, '[\"5AF3\",\"7BF5\",\"7CF6\",\"5DF6\"]'),
(177, 1, 'Jaką funkcję pełni podzespół wskazany strzałką na schemacie chipsetu płyty głównej ?', '2', 'new/295.jpg', '[\"Umożliwia połączenie i korzystanie z pamięci DDR 400 jako DUAL Channel w celu zachowania zgodności z DUAL Channel DDR2 800\",\"Umożliwia korzystanie z pamięci DDR3-800 i DDR2-800 jako DUAL Channel\",\"Pozwala wykorzystać magistralę o szerokości 128 bitów do przesyłania danych pomiędzy pamięcią RAM, a kontrolerem pamięci\",\"Pozwala wykorzystać typowe pamięci DDR SDRAM\"]'),
(178, 1, 'Na podstawie zamieszczonej w tabeli informacji dotyczącej dysku twardego określ, który wniosek jest prawdziwy ', '2', 'new/297.jpg', '[\"Defragmentacja jest zbędna, fragmentacja plików wynosi 0%\",\"Dysk wymaga defragmentacji, fragmentacja całkowita wynosi 19%\",\"Defragmentacja nie jest konieczna, fragmentacja całkowita wynosi 9% \",\"Należy zdefragmentować dysk, fragmentacja wolnego miejsca wynosi 19% \"]'),
(179, 1, 'Niskopoziomowe formatowanie dysku IDE HDD', '2', NULL, '[\"tworzy partycje rozszerzoną.\",\"tworzy partycję podstawową.\",\"jest wykonywane przez producenta dysku.\",\"umieszcza program rozruchowy w MBR.\"]'),
(180, 1, 'Procedura POST (Power-On Self Test) uruchamiana przez BIOS komputera odpowiada za ', '3', NULL, '[\"włączenie lub wyłączenie automatycznego rozpoznawania urządzeń pracujących w standardzie P&P\",\"predefiniowane typy schematów zarządzania energią oraz daje możliwość zdefiniowania własnych ustawień\",\"kolejność przeszukiwania zainstalowanych urządzeń w celu znalezienia sektora startowego podczas uruchamiania komputera\",\"przeprowadzenie testu poprawności działania podstawowych podzespołów komputera, wykonywanego przy każdym uruchomieniu lub restarcie\"]'),
(181, 1, 'Jaka usługa umożliwia zdalną instalację systemu operacyjnego?', '1', NULL, '[\"IIS\",\"RIS\",\"IRC\",\"DNS\"]'),
(182, 1, 'Na schemacie, przedstawiającym budowę modemu, za funkcję modulacji i demodulacji odpowiada podzespół oznaczony cyfrą', '2', 'new/304.jpg', '[\"1\",\"2\",\"3\",\"4\"]'),
(183, 1, 'Dla dysku twardego, wartość współczynnika MTBF (Mean Time Between Failure) podawana jest w', '3', NULL, '[\"latach\",\"dniach\",\"minutach\",\"godzinach\"]'),
(184, 1, 'Który zapis w systemie binarnym odpowiada liczbie 111 zapisanej w systemie dziesiętnym?', '0', NULL, '[\"1101111\",\"1110111\",\"1111110\",\"1111111\"]'),
(185, 1, 'Która z wymienionych pamięci RAM wykorzystuje do przesyłania danych wznoszące i opadające zbocze sygnału zegarowego?', '2', NULL, '[\"SIMM\",\"SDR\",\"DDR\",\"SIPP\"]'),
(186, 1, 'Na rysunku przedstawiono gniazdo:', '0', 'e12/286.jpg', '[\"DisplayPort\",\"HDMI\",\"SATA\",\"DVI\"]'),
(187, 1, 'Równoważnym zapisem 2^32 bajtów jest zapis:', '2', NULL, '[\"1 GiB\",\"2 GB\",\"4 GiB\",\"8 GB\"]'),
(188, 1, 'Polecenie msconfig uruchamia w systemie Windows:', '3', NULL, '[\"panel sterowania\",\"menedżera zadań\",\"menedżera plików\",\"narzędzie konfiguracji systemu\"]'),
(189, 1, 'Użytkownik systemu Windows otrzymuje komunikaty o zbyt małej pamięci  wirtualnej. Problem ten można rozwiązać przez:', '3', NULL, '[\"zamontowanie dodatkowej pamięci cache procesora\",\"zwiększenie rozmiaru pliku virtualfile.sys\",\"zamontowanie dodatkowego dysku\",\"zwiększenie pamięci RAM \"]'),
(190, 1, 'Które określenie dotyczące konta użytkownika Active Directory w systemie Windows jest prawdziwe?', '2', NULL, '[\"Nazwa logowania użytkownika musi mieć mniej niż 21 znaków\",\"Nazwa logowania użytkownika musi mieć mniej niż 20 znaków\",\"Nazwa logowania użytkownika może mieć długość większą niż 100 bajtów\",\"Nazwa logowanie użytkownika nie może mieć długości większej niż 100 bajtów\"]'),
(191, 1, 'Harmonogram zadań w systemie Windows pozwala przypisać', '0', NULL, '[\"Więcej niż pięć terminów wykonania dla wskazanego programu\",\"Nie więcej niż trzy terminy wykonania dla wskazanego programu\",\"Nie więcej niż cztery terminy wykonania dla wskazanego programu\",\"Nie więcej niż pięć terminów wykonania dla wskazanego programu\"]'),
(192, 1, 'Na płycie głównej uległa uszkodzeniu zintegrowana karta sieciowa. Komputer nie posiada\ndysku twardego ani żadnych innych napędów takich jak stacja dysków czy CD-ROM. Klient \ntwierdzi, że w sieci firmowej komputery nie posiadają żadnych napędów i wszystko \"czyta\"\nsię z serwera. W celu zapewnienia utraconej funkcjonalności należy zamontować', '3', NULL, '[\"w komputerze dysk twardy\",\"w komputerze napęd CD-ROM\",\"w gnieździe rozszerzeń kartę sieciową samodzielnie wspierającą funkcję Postboot Execution Enumeration\",\"w gnieździe rozszerzeń kartę sieciową samodzielnie wspierającą funkcję Preboot Execution Environment\"]'),
(193, 1, 'Podłączając drukarkę wyposażoną w złącze równoległe do komputera, który posiada tylko porty USB należy zainstalować adapter', '1', NULL, '[\"USB na PS/2\",\"USB na LPT\",\"USB na COM\",\"USB na RS-232\"]'),
(194, 1, 'Do oprogramowania typu malware (z ang. malicious software) nie należy oprogramowanie typu:', '0', NULL, '[\"computer aided manufacturing\",\"scumware\",\"keylogger\",\"exploit\"]'),
(195, 1, 'Dysk z systemem plików FAT32, na którym często wykonywane są operacje kasowania starych plików oraz zapisu nowych plików, ulega:', '1', NULL, '[\"defragmentacji\",\"fragmentacji\",\"kolokacji\",\"relokacji\"]'),
(196, 1, 'W czterech sklepach sprzedawany jest ten sam komputer w różnych cenach. Najtaniej można go nabyć w sklepie:', '2', 'e12/300.jpg', '[\"A\",\"B\",\"C\",\"D\"]'),
(197, 1, 'W systemie Linux hasła użytkowników są przechowywane w pliku:', '2', NULL, '[\"users\",\"groups\",\"passwd\",\"password\"]'),
(198, 1, 'Licencja wolnego i otwartego oprogramowania, to licencja', '3', NULL, '[\"Trial\",\"OEM\",\"Adware\",\"GNU GPL\"]'),
(199, 1, 'Przedstawiony na rysunku symbol graficzny oznacza opakowanie', '2', 'e12/304.jpg', '[\"zgodne z normą TCO\",\"wielokrotnego użytku\",\"nadającego się do recyklingu\",\"wyprodukowane z surowców wtórnych\"]'),
(200, 1, 'W systemie plików NTFS zmianę nazwy pliku umożliwia uprawnienie', '2', NULL, '[\"zapisu \",\"odczytu\",\"modyfikacji\",\"odczytu i wykonania\"]'),
(201, 1, 'Bezprzewodową transmisję danych zapewnia standard, którego elementem jest interfejs', '2', NULL, '[\"LFH60\",\"HDMI\",\"IrDA\",\"DVI\"]'),
(202, 1, 'Jaki wyraz należałoby wstawić w wykropkowanym miejscu na schemacie blokowym ilustrującym budowę systemu operacyjnego?', '1', 'e12/307.jpg', '[\"Sterowniki\",\"Powłoka\",\"Programy użytkowe\",\"Benchmarki\"]'),
(203, 1, 'Której liczbie dziesiętnej odpowiada liczba FF zapisana w systemie szesnastkowym?', '3', NULL, '[\"248\",\"250\",\"254\",\"255\"]'),
(204, 1, 'Na fotografii przedstawiono', '3', 'e12/309.jpg', '[\"tusz\",\"tuner\",\"kartridż\",\"taśmę barwiącą\"]'),
(205, 1, 'Po uruchomieniu komputera pojawił się komunikat: Non-system disk or disk error. Replace and strike any key when ready. Przyczyną może być', '3', NULL, '[\"brak pliku NTLDR\",\"uszkodzony kontroler DMA\",\"skasowany BIOS komputera\",\"dyskietka włożona do napędu\"]'),
(206, 1, 'Na fotografii przedstawiono', '3', 'e12/312.jpg', '[\"reflektometr\",\"tester sieciowy\",\"zaciskarkę do tulejek\",\"zaciskarkę wtyków RJ45\"]'),
(207, 1, 'Wewnętrzny dysk twardy IDE zasilany jest poprzez złącze typu', '0', NULL, '[\"Molex\",\"SATA\",\"PCIe\",\"ATX\"]'),
(208, 1, 'Na dysku należy zapisać 100 tysięcy pojedynczych plików, każdy o rozmiarze 2570 bajtów. Zapisane pliki zajmą najmniej miejsca na dysku o jednostce alokacji wynoszącej', '2', NULL, '[\"8192 bajty\",\"4096 bajtów\",\"3072 bajty\",\"2048 bajtów\"]'),
(209, 1, 'Po podłączeniu sprawnej klawiatury do dowolnego z portów USB nie można wybrać awaryjnego trybu uruchomienia systemu Windows. Mimo to, klawiatura po uruchomieniu systemu w normalnym trybie, działa prawidłowo. Wskazuje to na:', '1', NULL, '[\"uszkodzony kontroler klawiatury\",\"niepoprawne ustawienia BIOS-u\",\"uszkodzone porty USB\",\"uszkodzony zasilacz\"]'),
(210, 1, 'Aby sprawdzić, który program najbardziej obciąża procesor w systemie Windows, należy uruchomić program:', '0', NULL, '[\"menedżer zadań\",\"msconfig\",\"regedit\",\"dxdiag\"]');
INSERT INTO `questions` (`id`, `exam`, `q`, `ans`, `i`, `at`) VALUES
(211, 1, 'W systemie Windows ustawienia bieżącego użytkownika komputera zapisane są w gałęzi rejestru o skróconej nazwie:', '2', NULL, '[\"HKCC\",\"HKCR\",\"HKCU\",\"HKLM\"]'),
(212, 1, 'Brak odporności na utratę danych z uwagi na fizyczną awarię jednego z dysków jest cechą', '3', NULL, '[\"RAID 3\",\"RAID 2\",\"RAID 1\",\"RAID 0\"]'),
(213, 1, 'Rodzina protokołów, której cechą jest wspólna technika szyfrowania, to', '1', NULL, '[\"PPP\",\"SSH\",\"UDP\",\"SPX/IPX\"]'),
(214, 1, 'Który adres IP w systemie dziesiętnym odpowiada adresowi IP 10101010.00001111.10100000.11111100 zapisanemu w systemie binarnym?', '1', NULL, '[\"170.14.160.252\",\"170.15.160.252\",\"171.14.159.252\",\"171.15.159.252\"]'),
(215, 1, 'Suma liczb binarnych 1010 + 111 zapisana w systemie dziesiętnym wyniesie', '1', NULL, '[\"16\",\"17\",\"18\",\"19\"]'),
(216, 1, 'Jednostka obliczeń zmiennoprzecinkowych to', '0', NULL, '[\"FPU\",\"ALU\",\"RPU\",\"AND\"]'),
(217, 1, 'Przydzielaniem czasu procesora do określonych zadań zajmuje się', '3', NULL, '[\"chipset\",\"pamięć RAM\",\"cache procesora\",\"system operacyjny\"]'),
(218, 1, 'Najkrótszy czas dostępu posiada', '3', NULL, '[\"dysk twardy\",\"pamięć USB\",\"pamięć RAM\",\"pamięć cache procesora\"]'),
(219, 1, 'Przedstawiona na rysunku karta rozszerzeń posiada chłodzenie', '1', 'e12/326.jpg', '[\"aktywne\",\"pasywne\",\"wymuszone\",\"symetryczne\"]'),
(220, 1, 'Błąd systemu Windows typu STOP Error (Blue Screen), polegający na odwoływaniu się systemu do nieprawidłowych danych w pamięci operacyjnej, to', '2', NULL, '[\"NTFS_FILE_SYSTEM\",\"UNMOUNTABLE_BOOT_VOLUME\",\"PAGE_FAULT_IN_NONPAGE_AREA\",\"UNEXPECTED_KERNEL_MODE_TRAP\"]'),
(221, 1, 'Na rysunku przedstawiono złącze zasilania', '1', 'e12/328.jpg', '[\"stacji dyskietek\",\"ATX12V zasilania procesora\",\"dysków wewnętrznych SATA\",\"Molex do dysków twardych\"]'),
(222, 1, 'Wyłączenie automatycznej aktualizacji systemu Windows powoduje', '2', NULL, '[\"automatyczne pobieranie aktualizacji bez jej instalacji\",\"zablokowanie każdego sposobu pobierania aktualizacji systemu\",\"zablokowanie samodzielnego pobierania uaktualnień przez system\",\"automatyczne sprawdzenie, czy jest dostępna aktualizacja i powiadomienie o niej użytkownika\"]'),
(223, 1, 'Polecenie md w wierszu poleceń systemu Windows służy do', '1', NULL, '[\"tworzenia pliku\",\"tworzenia katalogu\",\"zmiany nazwy pliku\",\"przejścia do katalogu nadrzędnego\"]'),
(224, 1, 'Głównym celem mechanizmu Plug and Play jest:', '2', NULL, '[\"automatyczne uruchomienie ostatnio otwartej gry\",\"automatyczne tworzenie kopii danych na nowo podłączonym nośniku pamięci\",\"wykrycie nowo podłączonego sprzętu i automatycznie przydzielenie mu zasobów\",\"automatyczne odinstalowanie sterowników, które przez dłuższy czas nie były używane\"]'),
(225, 1, 'Dziedziczenie uprawnień polega na:', '3', NULL, '[\"przekazywaniu uprawnień jednego użytkownika drugiemu\",\"nadawaniu uprawnień użytkownikowi przez administratora\",\"przeniesieniu uprawnień z obiektu podrzędnego na obiekt nadrzędny\",\"przeniesieniu uprawnień z obiektu nadrzędnego na obiekt podrzędny\"]'),
(226, 1, 'W systemie Windows domyślne konto administratora po jego wyłączeniu i ponownym uruchomieniu komputera', '3', NULL, '[\"nie pozwala na zmianę hasła dostępu do konta\",\"umożliwia uruchamianie niektórych usług z tego konta\",\"jest niedostępne, gdy system uruchomi się w trybie awaryjnym\",\"pozostaje dostępne po uruchomieniu systemu w trybie awaryjnym\"]'),
(227, 1, 'Program firewall stosuje się w celu zabezpieczenia', '2', NULL, '[\"dysku przed przepełnieniem\",\"systemu przed błędnymi programami\",\"sieci LAN i systemów przed intruzami\",\"procesora przed przeciążeniem ze strony systemu\"]'),
(228, 1, 'Zgodnie z zamieszczonym  cennikiem, średni koszt wyposażenia stanowiska komputerowego wynosi:', '1', 'e12/341.jpg', '[\"2000,00 zł\",\"4350,00 zł\",\"5000,50 zł\",\"6700,00 zł\"]'),
(229, 1, 'W systemie Windows, zainstalowanym w wersji obsługującej przydziały dyskowe, użytkownik o nazwie Gość ', '3', NULL, '[\"nie może należeć do żadnej grupy\",\"może należeć tylko do grupy globalnej\",\"może należeć tylko do grupy o nazwie Goście\",\"może należeć do grup lokalnych i do grup globalnych \"]'),
(230, 1, 'Oprogramowanie OEM (Original Equipment Manufacturer) przypisane jest do', '1', NULL, '[\"właściciela/nabywcy komputera\",\"komputera (lub jego części), na którym jest zainstalowane\",\"systemu operacyjnego zainstalowanego na danym komputerze\",\"do wszystkich komputerów w danym gospodarstwie domowym\"]'),
(231, 1, 'Licencja CAL (Client Access License) daje użytkownikowi prawo', '3', NULL, '[\"zmiany kodu programu\",\"używania programu bezterminowo\",\"kopiowania programu na nośniki zewnętrzne\",\"korzystania z usług udostępnionych przez serwer\"]'),
(232, 1, 'Oznakowanie CE informuje, że', '3', NULL, '[\"wyrób jest zgodny z normami ISO\",\"wyrób jest wyprodukowany na terenie Unii Europejskiej\",\"producent sprawdził produkt pod względem wydajności i ergonomii\",\"wyrób spełnia wymagania pod względem bezpieczeństwa użytkowania, ochrony zdrowia i ochrony środowiska\"]'),
(233, 1, 'Recykling można określić jako', '0', NULL, '[\"odzysk\",\"produkcję\",\"segregację\",\"oszczędność\"]'),
(234, 1, 'Gorące podłączenie (hot-plug) oznacza, że podłączane urządzenie jest', '3', NULL, '[\"sterowane temperaturą\",\"kompatybilne z komputerem\",\"sprawne po zainstalowaniu właściwych sterowników\",\"sprawne zaraz po podłączeniu, bez konieczności wyłączania bądź restartowania systemu\"]'),
(235, 1, 'Interfejsem wewnętrznym komputera jest', '1', NULL, '[\"DVI\",\"AGP\",\"IrDA\",\"RJ-45\"]'),
(236, 1, 'Urządzeniem wskazującym jest', '3', NULL, '[\"skaner\",\"drukarka\",\"pamięć USB\",\"ekran dotykowy\"]'),
(237, 1, 'Wielkość plamki monitora LCD jest równa', '2', NULL, '[\"wielkości jednego piksela wyświetlanego na ekranie\",\"wielkości obszaru na którym wyświetla się 1024 pikseli\",\"odległości od początku jednego do początku następnego piksela\",\"wielkości obszaru, na którym można wyświetlić wszystkie kolory obsługiwane przez monitor\"]'),
(238, 1, 'W drukarce igłowej materiałem eksploatacyjnym jest', '3', NULL, '[\"tusz\",\"toner\",\"pigment\",\"taśma barwiąca\"]'),
(239, 1, 'Która macierz RAID jest zbudowana w oparciu o replikację dwóch lub więcej dysków fizycznych?', '1', NULL, '[\"RAID 0\",\"RAID 1\",\"RAID 3\",\"RAID 5\"]'),
(240, 1, 'Który interfejs pozwala przesyłać dane w postaci cyfrowej i analogowej pomiędzy komputerem a monitorem?', '1', NULL, '[\"HDMI\",\"DVI-I\",\"DFP\",\"DISPLAY PORT\"]'),
(241, 1, 'Powodem niekontrolowanego zapełnienia dysku może być', '0', NULL, '[\"wirus komputerowy\",\"częsta defragmentacja\",\"zbyt małe jednostki alokacji plików\",\"źle skonfigurowana pamięć wirtualna\"]'),
(242, 1, 'Aby uporządkować pliki na dysku w celu przyspieszenia pracy systemu, należy:', '0', NULL, '[\"wykonać defragmentację\",\"usunąć pliki tymczasowe\",\"odinstalować nieużywane programy\",\"przeskanować dysk programem antywirusowym\"]'),
(243, 1, 'W celu odzyskania danych usuniętych przy pomocy kombinacji klawiszy Shift + Delete, należy', '3', NULL, '[\"odzyskać je z kosza systemowego\",\"użyć kombinacji klawiszy Shift+Insert\",\"odzyskać je z katalogu plików tymczasowych\",\"skorzystać z oprogramowania do odzyskiwania danych\"]'),
(244, 1, 'Obraz dysku tworzy się, aby', '3', NULL, '[\"przyspieszyć pracę z wybranymi plikami na tym dysku\",\"zabezpieczyć dane przed nieupoważnionymi użytkownikami\",\"zabezpieczyć aplikacje przed nieupoważnionymi użytkownikami\",\"zabezpieczyć system, aplikacje i dane przed poważną awarią komputera\"]'),
(245, 1, 'W systemach Windows XP Pro/Windows Vista Business/Windows 7 Pro/Windows 8 Pro, opcją gwarantująca poufność danych dla użytkowników korzystających z tego samego komputera, których dane mogą być wykorzystywane wyłącznie przez nich samych, jest', '2', NULL, '[\"korzystanie z własnym kont z ograniczeniami\",\"samodzielne przypisywanie plikom atrybutu: ukryty\",\"samodzielnie przypisywanie plikom atrybutu: zaszyfrowany\",\"korzystanie z własnych kont z uprawnieniami administratora\"]'),
(246, 1, 'Notacja #102816 oznacza zapis w systemie', '3', NULL, '[\"dziesiętnym\",\"dwójkowym\",\"ósemkowym\",\"szesnastkowym\"]'),
(247, 1, 'Przerzutnik bistabilny przechowuje bit informacji w pamięci', '0', NULL, '[\"SRAM\",\"DRAM\",\"SDRAM\",\"DDR SDRAM\"]'),
(248, 1, 'Dodatkowe cechy wyniku operacji wykonywanej przez jednostkę arytmetyczno - logiczną ALU zawiera', '2', NULL, '[\"akumulator\",\"wskaźnik stosu\",\"rejestr flagowy\",\"licznik rozkazów\"]'),
(249, 1, 'Który typ dysków jest podłączany do gniazda IDE płyty głównej komputera?', '1', NULL, '[\"SSD\",\"ATA\",\"SCSI\",\"FLASH\"]'),
(250, 1, 'Standard podstawki procesora bez nóżek to', '0', NULL, '[\"LGA\",\"PGA\",\"SPGA\",\"CPGA\"]'),
(251, 1, 'Pokazany na rysunku symbol graficzny oznacza złącze', '3', 'e12/369.jpg', '[\"DVI\",\"COM\",\"HDMI\",\"FIRE WIRE\"]'),
(252, 1, 'W systemie Linux polecenie chown umożliwia', '1', NULL, '[\"przeniesienie pliku\",\"zmianę właściciela pliku\",\"naprawę systemu plików\",\"zmianę parametrów pliku\"]'),
(253, 1, 'Które polecenie należy wykonać w celu zamontowania pierwszej partycji logicznej dysku primary slave w systemie Linux?', '3', NULL, '[\"mount/dev/hda2 /mnt/hdd\",\"mount/dev/hdb3 /mnt/hdd\",\"mount/dev/hda4 /mnt/hdd\",\"mount/dev/hdb5 /mnt/hdd\"]'),
(254, 1, 'W dokumentacji technicznej procesora umieszczono na płycie głównej komputera szybkość zegara podaje się w', '2', NULL, '[\"s\",\"kHz\",\"GHz\",\"GHz/s\"]'),
(255, 1, 'Oprogramowanie komputerowe, z którego można korzystać za darmo i bez ograniczeń czasowych, rozpowszechniane jest w ramach licencji typu', '3', NULL, '[\"trial\",\"shareware\",\"donationware\",\"public domain\"]'),
(256, 1, 'Grupowa licencja oprogramowania Microsoft to licencja typu', '2', NULL, '[\"GNU\",\"OEM\",\"MOLP\",\"EULA\"]'),
(257, 1, 'Asynchronicznym interfejsem szeregowym zgodnym ze standardem RS-232 jest port', '3', NULL, '[\"LPT\",\"ECP\",\"EPP\",\"COM\"]'),
(258, 1, 'Interfejs USB 3.0 umożliwia transfer danych z prędkością do', '3', NULL, '[\"120 MB/s\",\"400 Mb/s\",\"4 GB/s\",\"5 Gb/s\"]'),
(259, 1, 'Jeżeli rozdzielczość myszy wynosi 200 dpi a monitora Full HD, to przeciągnięcie kursora w poprzek ekranu wymaga przesunięcia myszy o', '2', NULL, '[\"480 i\",\"1080 px\",\"około 25 cm\",\"około 35 cm\"]'),
(260, 1, 'Technika zwana rytownictwem odnosi się do zasady działania plotera', '3', NULL, '[\"tnącego\",\"laserowego\",\"solwentowego\",\"grawerującego\"]'),
(261, 1, 'Elementem eksploatacyjnym drukarki laserowej NIE JEST', '1', NULL, '[\"bęben\",\"głowica\",\"wałek grzewczy\",\"lampa czyszcząca\"]'),
(262, 1, 'Klawiatura QWERTY umożliwiająca wprowadzenie znaków charakterystycznych dla języka polskiego nazywana jest również klawiaturą', '2', NULL, '[\"polską\",\"maszynistki\",\"programisty\",\"diakrytyczną\"]'),
(263, 1, 'Dla zmiany zeskanowanego obrazu na tekst należy zastosować oprogramowanie wykorzystujące techniki', '2', NULL, '[\"DPI\",\"DTP\",\"OCR\",\"OMR\"]'),
(264, 1, 'Symulowanie stanów logicznych obwodów cyfrowych umożliwia', '2', NULL, '[\"sonometr\",\"kalibrator\",\"impulsator\",\"sonda logiczna\"]'),
(265, 1, 'Jeden długi i dwa krótkie sygnały dźwiękowe BIOS POST firmy AMI oraz AWARD oznaczają błąd', '2', NULL, '[\"zegara systemowego\",\"mikroprocesora\",\"karty graficznej\",\"karty sieciowej\"]'),
(266, 1, 'Aby sprawdzić integralność systemu plików w systemie Linux należy użyć polecenia', '1', NULL, '[\"man\",\"fsck\",\"mkfs\",\"fstab\"]'),
(267, 1, 'W celu przywrócenia prawidłowych wersji plików systemowych, w systemie Windows stosowane jest narzędzie', '0', NULL, '[\"sfc\",\"debug\",\"verifer\",\"replace\"]'),
(268, 1, 'Przyczyną awarii drukarki igłowej może być usterka', '2', NULL, '[\"dyszy\",\"termorezystora\",\"elektromagnesu\",\"elektrody ładującej\"]'),
(269, 1, 'W celu zwolnienia adresu IP dla danej karty sieciowej w systemie Windows, należy zastosować polecenie systemowe', '1', NULL, '[\"ipconfig /renew\",\"ipconfig /release\",\"ipconfig /flushdns\",\"ipconfig /displaydns\"]'),
(270, 1, 'Podczas przeglądania stron WWW, w celu podniesienia bezpieczeństwa prywatnych danych, jest wskazane wyłączenie w opcjach przeglądarki', '3', NULL, '[\"monitów dotyczących uruchomienia skryptów\",\"powiadamiania o wygasłych certyfikatach\",\"blokady wyskakujących okienek\",\"funkcji zapamiętywania haseł\"]'),
(271, 1, 'Które złącze karty graficznej NIE jest interfejsem cyfrowym?', '3', NULL, '[\"DVI-D\",\"HDMI\",\"Display Port\",\"D-SUB 15pin\"]'),
(272, 1, 'Liczba 3FC7 zapisana w systemie dwójkowym będzie miała postać:', '0', NULL, '[\"11111111000111\",\"00111110010111\",\"01111111100011\",\"10111011110111\"]'),
(273, 1, 'Koprocesor arytmetyczny, którego rolą w mikroprocesorze jest dokonywanie obliczeń na liczbach zmiennoprzecinkowych został na schemacie oznaczony cyfrą', '3', 'e12/403.jpg', '[\"1\",\"2\",\"3\",\"4\"]'),
(274, 1, 'Dodatkowa funkcja mikroprocesora Intel Turbo Boost pozwala na', '1', NULL, '[\"wykonywanie większej liczby instrukcji w jednym cyklu zegara\",\"automatyczną regulację częstotliwości pracy mikroprocesora w zależności od obciążenia\",\"włączenie i wyłączenie elementów mikroprocesora w celu oszczędzania energii\",\"dokonywanie rozległych obliczeń przez dwa niezależne rdzenie, przy czym każdy z nich wykonuje do czterech pełnych instrukcji jednocześnie\"]'),
(275, 1, 'Wyjście słuchawek lub głośników minijack oznaczone jest na karcie dźwiękowej kolorem', '1', NULL, '[\"różowym\",\"zielonym\",\"niebieskim\",\"żółtym\"]'),
(276, 1, 'Układ elektroniczny RAMDAC występuje w', '2', NULL, '[\"karcie dźwiękowej\",\"procesorze\",\"karcie graficznej\",\"zasilaczu\"]'),
(277, 1, 'Ile klawiszy funkcyjnych znajduje się na klawiaturze w standardzie QWERTY?\n\n', '2', NULL, '[\"8\",\"10\",\"12\",\"14\"]'),
(278, 1, 'Jakim poleceniem w systemie Linux, nadamy pełny dostęp wszystkim użytkownikom do zasobów?', '0', NULL, '[\"chmod 777\",\"chmod 533\",\"chmod 666\",\"chmod 000\"]'),
(279, 1, 'AC-72-89-17-6E-B2 to adres fizyczny karty sieciowej zapisany w postaci', '3', NULL, '[\"binarnej\",\"oktalnej\",\"dziesiętnej\",\"heksadecymalnej\"]'),
(280, 1, 'Konwerter RAMDAC przetwarza sygnał', '1', NULL, '[\"analogowy na cyfrowy\",\"cyfrowy na analogowy\",\"zmienny na stały\",\"stały na zmienny\"]'),
(281, 1, 'W systemie Linux plik ma ustawione uprawnienia na 541. Właściciel może plik', '2', NULL, '[\"modyfikować\",\"tylko wykonać\",\"odczytać i wykonać\",\"odczytać, zapisać i wykonać\"]'),
(282, 1, 'W technologii Blu-ray nośnik jednokrotnego zapisu oznaczany jest', '1', NULL, '[\"BD \",\"BD-R \",\"BD-RE\",\"BD-ROM\"]'),
(283, 1, 'Który poziom macierzy RAID zapisuje dane równolegle na kilku dyskach jako jedno urządzenie', '0', NULL, '[\"RAID 0\",\"RAID 1\",\"RAID 2\",\"RAID 3\"]'),
(284, 1, 'W systemie plików NTFS zmianę nazwy pliku umożliwia uprawnienie', '2', NULL, '[\"zapisu\",\"odczytu\",\"modyfikacji\",\"odczytu i wykonania\"]'),
(285, 1, 'Którego polecenia należy użyć w konsoli do naprawy błędów na dysku?', '2', NULL, '[\"CHDIR\",\"SUBST\",\"CHKDSK\",\"DISKCOMP\"]'),
(286, 1, 'W celu powiększenia lub zmniejszenia ikony na pulpicie należy kręcić rolką myszki, przytrzymując jednocześnie klawisz', '1', NULL, '[\"SHIFT\",\"CTRL\",\"ALT\",\"TAB\"]'),
(287, 1, 'Wewnętrzny dysk twardy IDE zasilany jest poprzez złącze typu', '0', NULL, '[\"Molex\",\"SATA\",\"PCIe\",\"ATX\"]'),
(288, 1, 'W systemie Linux do monitorowania w czasie rzeczywistym uruchomionych procesów służy polecenie:', '0', NULL, '[\"ps\",\"sed\",\"proc\",\"sysinfo\"]'),
(289, 1, 'W systemie Windows XP do zmiany typu systemu plików na dysku z FAT32 na NTFS należy skorzystać z programu', '0', NULL, '[\"convert\",\"replace\",\"subst\",\"attrib\"]'),
(290, 1, 'Jednostka obliczeń zmiennoprzecinkowych to', '0', NULL, '[\"FPU\",\"ALU\",\"RPU\",\"AND\"]'),
(291, 1, 'Wskaż złącze, które NIE występuje w zasilaczach ATX', '2', NULL, '[\"MPC\",\"PCI-E\",\"DE-15/HD-15\",\"SATA Connector\"]'),
(292, 1, 'Przedstawiona na rysunku karta rozszerzeń posiada chłodzenie ', '1', 'e12/430.jpg', '[\"aktywne\",\"pasywne\",\"wymuszone\",\"symetryczne\"]'),
(293, 1, 'Który aplet panelu sterowania w systemie Windows 7 umożliwia ograniczenie czasu pracy użytkownika na komputerze?', '3', NULL, '[\"Centrum akcji\",\"Windows Defender\",\"Konta użytkowników\",\"Kontrola rodzicielska\"]'),
(294, 1, 'Bezpłatnym programem antywirusowym dostarczanym przez Microsoft dla użytkowników legalnych wersji systemu operacyjnego Windows jest', '0', NULL, '[\"Microsoft Security Essentials\",\"Microsoft Free Antywirus\",\"Windows Antywirus\",\"Windows Defender\"]'),
(295, 1, 'Głównym celem mechanizmu Plug and Play jest', '2', NULL, '[\"automatycznie uruchamianie ostatnio otwartej gry\",\"automatyczne tworzenie kopii danych na nowo podłączonym nośniku pamięci\",\"wykrycie nowo podłączonego sprzętu i automatycznie przydzielenie mu zasobów\",\"automatyczne odinstalowywanie sterowników, które przez dłuższy czas nie były używane\"]'),
(296, 1, 'Na rysunku przedstawiono taśmę (kabel) złącza', '1', 'e12/436.jpg', '[\"SAS\",\"ATA\",\"SCSI\",\"SATA\"]'),
(297, 1, 'Interfejs HDMI komputera pozwala na przesyłanie sygnału', '2', NULL, '[\"cyfrowego video\",\"cyfrowego audio\",\"cyfrowego video i audio\",\"analogowego audio i video\"]'),
(298, 1, 'Licencja CAL(Client Access License) daje użytkownikowi prawo', '3', NULL, '[\"zmiany kodu programu\",\"używanie programu bezterminowo\",\"kopiowanie programu na nośniki zewnętrzne\",\"korzystanie z usług udostępnionych przez serwer\"]'),
(299, 1, 'Program antyspyware chroni przed', '1', NULL, '[\"programami typu robak\",\"programami szpiegującymi\",\"programami antywirusowymi\",\"atakami typu DoS i DDoS(Denial of Service)\"]'),
(300, 1, 'Interfejsem wewnętrznym komputera jest', '1', NULL, '[\"IrDA\",\"AGP\",\"D-SUB\",\"PCMCIA\"]'),
(301, 1, 'W drukarce laserowej do utrwalania wydruku na papierze służą', '0', NULL, '[\"rozgrzane wałki\",\"promienie lasera\",\"bęben transferowy\",\"głowice piezoelektryczne\"]'),
(302, 1, 'Aby uniknąć uszkodzenia układów scalonych, podczas naprawy sprzętu komputerowego należy stosować', '3', NULL, '[\"okulary ochronne\",\"gumowe rękawiczki\",\"skórzane rękawiczki\",\"opaskę antystatyczną\"]'),
(303, 1, 'System S.M.A.R.T. przeznaczony jest do monitorowania pracy i wykrywania błędów', '2', NULL, '[\"płyty głównej\",\"kart rozszerzeń\",\"dysków twardych\",\"napędów płyt CD/DVD\"]'),
(304, 1, 'Wskaż najbardziej prawdopodobną przyczynę wystąpienia komunikatu: CMOS checksum error press F1 to continue press DEL to setup przy uruchomieniu komputera', '3', NULL, '[\"Usunięty plik setup\",\"Uszkodzona karta graficzna\",\"Skasowana zawartość pamięci CMOS\",\"Rozładowana bateria podtrzymująca ustawienia BIOS-u\"]'),
(305, 1, 'W komunikacie o błędzie systemu informacja wyświetlana w postaci heksadecymalnej oznacza', '0', NULL, '[\"kod błędu\",\"definicję błędu\",\"nazwę sterownika\",\"odnośnik do systemu pomocy\"]'),
(306, 1, 'Ustawienia wszystkich użytkowników komputera zapisane są w gałęzi rejestru o akronimie', '0', NULL, '[\"HKU\",\"HKCR\",\"HKCC\",\"HKLM\"]'),
(307, 1, 'Pliki, które znajdują się w koszu, można odzyskać poprzez zastosowanie polecenia', '3', NULL, '[\"Wróć\",\"Cofnij\",\"Ponów\",\"Przywróć\"]'),
(308, 1, 'Aby przywrócić ustawienia domyślne płyty głównej w przypadku, gdy nie ma możliwości uruchomienia programu BIOS Setup, należy', '2', NULL, '[\"zaktualizować BIOS Setup\",\"uruchomić ponownie system\",\"przełożyć zworkę na płycie głównej\",\"doładować baterię na płycie głównej\"]'),
(309, 1, 'Ile maksymalnie partycji podstawowych na dysku twardym z tablicą MBR pozwala utworzyć narzędzie Zarządzanie dyskami dostarczone wraz z systemem Windows?', '3', NULL, '[\"1\",\"2\",\"3\",\"4\"]'),
(310, 1, 'Podstawowe znaczenie przy budowie stacji roboczej, na której będzie działać wiele wirtualnych maszyn ma:', '3', NULL, '[\"Wysokiej klasy karta sieciowa\",\"Zespół chłodzenia wodą\",\"Silna karta graficzna\",\"Liczba rdzeni procesora\"]'),
(311, 1, 'Złącze przedstawione na zdjęciu umożliwia podłączenie', '0', 'e12/458.jpg', '[\"Monitora\",\"Drukarki\",\"Modemu\",\"Myszy\"]'),
(312, 1, 'Liczba 10101110110(2) zapisana w systemie szesnastkowym ma postać', '2', NULL, '[\"AE6\",\"536\",\"576\",\"A76\"]'),
(313, 1, 'System plików, który umożliwia w systemie Windows kompresję danych i nadawanie uprawnień do folderów i plików, to', '2', NULL, '[\"FAT\",\"FAT32\",\"NTFS\",\"EXT\"]'),
(314, 1, 'Najczęstszą przyczyną rozmazywania się tonera na wydrukach z drukarki laserowej jest', '0', NULL, '[\"Zbyt niska temperatura utrwalacza\",\"Uszkodzenie rolek\",\"Zacięcie papieru\",\"Zanieczyszczenie wnętrza drukarki\"]'),
(315, 1, 'Za przydzielanie czasu procesora do określonych zadań odpowiada', '3', NULL, '[\"Chipset\",\"Pamięć RAM\",\"Cache procesora\",\"System operacyjny\"]'),
(316, 1, 'Które konto nie jest kontem wbudowanym w system Windows XP?', '1', NULL, '[\"Gość\",\"Admin\",\"Pomocnik\",\"Administrator\"]'),
(317, 1, 'W systemie Windows 7, do modyfikacji konfiguracji rozruchowej komputera za pomocą linii poleceń, należy zastosować polecenie', '2', NULL, '[\"bootcfg\",\"bootfix\",\"bcdedit\",\"config\"]'),
(318, 1, 'Wyłączenie automatycznej aktualizacji systemu Windows powoduje', '2', NULL, '[\"Automatycznie pobieranie aktualizacji bez jej instalacji\",\"Zablokowanie każdego sposobu pobierania aktualizacji systemu\",\"Zablokowanie samodzielnego pobierania uaktualnień przez system\",\"Automatyczne sprawdzenie, czy jest dostępna aktualizacja i powiadomienie o niej użytkownika\"]'),
(319, 1, 'Interfejs SATA 2 (3Gb/s) zapewnia przepustowość', '2', NULL, '[\"150 MB/s\",\"300 MB/s\",\"375 MB/s\",\"750 MB/s\"]'),
(320, 1, 'Aby w systemie Windows przydzielić użytkownikowi prawo do zmiany czasu systemowego, należy użyć przystawki', '0', NULL, '[\"secpol.msc\",\"eventvwr.msc\",\"certmgr.msc\",\"services.msc\"]'),
(321, 1, 'Program typu firewall nie chroni przed', '0', NULL, '[\"Wirusami rozprzestrzeniającymi się pocztą e-mail\",\"Atakami generującymi wzmożony ruch w sieci\",\"Uzyskaniem dostępu do komputera przez hakerów\",\"Szpiegowaniem i wykradaniem poufnych danych użytkownika\"]'),
(322, 1, 'Ile urządzeń może być podłączonych do portu IEEE1394?', '3', NULL, '[\"1\",\"8\",\"55\",\"63\"]'),
(323, 1, 'Które narzędzie należy użyć w systemie Windows do wyświetlenia informacji na temat problemów systemowych?', '1', NULL, '[\"Zasady grupy\",\"Podgląd zdarzeń\",\"Foldery udostępnione\",\"Harmonogram zadań\"]'),
(324, 1, 'Oprogramowanie, przypisane do jednego komputera lub jego części, uniemożliwiające ponowną instalację na nowszym sprzęcie zakupionym przez tego samego użytkownika, to', '3', NULL, '[\"MPL\",\"CPL\",\"MOLP\",\"OEM\"]'),
(325, 1, 'Umieszczany na urządzeniach symbol, będący certyfikatem zgodności urządzeń pod względem emisji promieniowania, ergonomii, energooszczędności i ekologii, przedstawiono na rysunku', '0', 'e12/479.jpg', '[\"A\",\"B\",\"C\",\"D\"]'),
(326, 1, 'Na rysunku przedstawiono element, który jest częścią składową', '0', 'e12/481.jpg', '[\"HDD\",\"Plotera\",\"Drukarki igłowej\",\"Napędu CD-ROM\"]'),
(327, 1, 'Jaka kopia w procesie archiwizacji plików pozostawia znacznik archiwizacji?', '1', NULL, '[\"Normalna\",\"Różnicowa\",\"Całościowa\",\"Przyrostowa\"]'),
(328, 1, 'Jakiego typu złącze należy użyć, aby podłączyć zasilanie do CD-ROM?', '1', NULL, '[\"Berg\",\"Molex\",\"Mini-Molex\",\"20-pinowe ATX\"]'),
(329, 1, 'Bęben światłoczuły jest niezbędnym elementem działania drukarki', '1', NULL, '[\"Igłowej\",\"Laserowej\",\"Atramentowej\",\"Sublimacyjnej\"]'),
(330, 1, 'Zużyte urządzenie elektryczne lub elektroniczne, na którym umieszczony jest znak przedstawiony na rysunku, należy', '2', 'e12/485.jpg', '[\"Przekazać do punktu skupu złomu\",\"Wyrzucić do pojemników na śmieci bytowe\",\"Przekazać do punktu odbioru zużytej elektroniki\",\"Wyrzucić do pojemników oznaczonych tym znakiem\"]'),
(331, 1, 'Przedstawione na rysunku ustawienia dotyczą', '1', 'e12/486.jpg', '[\"Karty sieciowej\",\"Modemu\",\"Drukarki\",\"Skanera\"]'),
(332, 1, 'Przedstawiony na rysunku znak zgodny ze standardem Energy Star oznacza urządzenie', '0', 'e12/489.jpg', '[\"Energooszczędne\",\"O podwyższonym poborze mocy\",\"Będące zwycięzcą plebiscytu EnergyStar\",\"Wyprodukowane przez firmę EnergyStar Co\"]'),
(333, 1, 'Przedstawiony na rysunku wpis w dzienniku zdarzeń zalicza się do zdarzeń typu', '1', 'e12/491.jpg', '[\"Błędy\",\"Informacje\",\"Ostrzeżenia\",\"Inspekcja niepowodzeń\"]'),
(334, 1, 'Nośniki danych takie jak dysk twardy przechowują informacje w porcjach zwanych sektorami, które mają rozmiar', '1', NULL, '[\"128B\",\"512B\",\"512KB\",\"1024KB\"]'),
(335, 1, 'Które polecenie w systemie Linux uruchamia sprawdzanie dysku oraz umożliwia naprawę jego błędów?', '0', NULL, '[\"fsck\",\"lshw\",\"fdisk\",\"mksf\"]'),
(336, 1, 'Liczba szesnastkowa 29A zapisana w systemie binarnym będzie miała postać:', '0', NULL, '[\"1010011010\",\"1001011010\",\"1010010110\",\"1000011010\"]'),
(337, 1, 'Który typ pamięci należy umieścić na płycie głównej komputera w miejscu wskazanym strzałką?', '1', 'e12/496.jpg', '[\"SO-DIMM DDR2\",\"SD-RAM DDR3\",\"SIMM\",\"FLASH\"]'),
(338, 1, 'Do zamiany kodu źródłowego na program wykonywalny służy', '3', NULL, '[\"debuger\",\"emulator\",\"interpreter\",\"kompilator\"]'),
(339, 1, 'Do uruchomienia edytora rejestru w systemie Windows należy użyć narzędzia', '2', NULL, '[\"msconfig\",\"ipconfig\",\"regedit\",\"cmd\"]'),
(340, 1, 'W systemie Windows, wykorzystując wiersz poleceń do zmiany partycji FAT na partycję NTFS bez utraty zawartych na niej danych, należy użyć polecenia', '1', NULL, '[\"format\",\"convert\",\"change\",\"recover\"]'),
(341, 1, 'Która usługa umożliwia zdalną instalację systemu operacyjnego?', '1', NULL, '[\"IIS\",\"RIS\",\"IRC\",\"DNS\"]'),
(342, 1, 'Przedstawiona na rysunku karta rozszerzeń posiada chłodzenie', '1', 'e12/504.jpg', '[\"aktywne\",\"pasywne\",\"wymuszone\",\"symetryczne\"]'),
(343, 1, 'Program, który umożliwia komunikację między kartą sieciową a systemem operacyjnym, to', '1', NULL, '[\"sniffer\",\"sterownik\",\"middleware\",\"komunikator\"]'),
(344, 1, 'Bezprzewodową transmisję danych zapewnia interfejs', '2', NULL, '[\"LFH60\",\"HDMI\",\"IrDA\",\"DVI\"]'),
(345, 1, 'W systemie Windows wymagania co do złożoności hasła należy określić w', '3', NULL, '[\"BIOS-ie\",\"autostarcie\",\"panelu sterowania\",\"zasadach zabezpieczeń lokalnych\"]'),
(346, 1, 'Przedstawiona na zdjęciu wtyczka jest częścią obwodu elektrycznego zasilającego', '2', 'e12/508.jpg', '[\"stację dyskietek\",\"napędy CD-ROM\",\"procesor ATX12V\",\"dyski wewnętrzne SATA\"]'),
(347, 1, 'Aby zwolnić miejsce na dysku bez utraty danych, należy wykonać', '2', NULL, '[\"backup dysku\",\"sprawdzanie dysku\",\"oczyszczanie dysku\",\"defragmentację dysku\"]'),
(348, 1, 'W celu ochrony systemu przed programem posiadającym zdolność replikacji należy zainstalować', '2', NULL, '[\"program szpiegowski\",\"program narzędziowy\",\"program antywirusowy\",\"program diagnostyczny\"]'),
(349, 1, 'Która tablica partycji umożliwia utworzenie do 128 partycji podstawowych na jednym dysku?', '0', NULL, '[\"GPT\",\"MBR\",\"BOOT\",\"NTLDR\"]'),
(350, 1, 'Koszt wydrukowania jednej strony tekstu wynosi 95 gr, natomiast koszt przygotowania jednej płyty CD to 1,54 zł. Jakie koszty poniesie firma, przygotowująca płytę z prezentacjami oraz 120 stronicowy poradnik?', '0', NULL, '[\"115,54 zł\",\"120,95 zł\",\"145,54 zł\",\"154,95 zł\"]'),
(351, 1, 'Bez zezwolenia posiadacza autorskich praw majątkowych do programu komputerowego jego legalny użytkownik, zgodnie z ustawą o prawie autorskim i prawach pokrewnych', '3', NULL, '[\"może rozpowszechniać program\",\"nie może wykonać żadnej kopii programu\",\"może wykonać dowolną liczbę kopii programu na własny użytek\",\"może wykonać jedną kopię, jeśli jest to niezbędne do korzystania z programu\"]'),
(352, 1, 'Która licencja umożliwia bezpłatne wykorzystywanie programu, pod warunkiem, że użytkownik zatroszczy się o środowisko naturalne?', '1', NULL, '[\"Donationware\",\"Greenware\",\"Adware\",\"OEM\"]'),
(353, 1, 'Przedstawiony na rysunku symbol oznacza produkt', '0', 'e12/516.jpg', '[\"nadający się do powtórnego przetworzenia\",\"przeznaczony do powtórnego użycia\",\"biodegradowalny\",\"niebezpieczny\"]'),
(354, 1, 'Który z trybów nie jest dostępny dla narzędzia lupa w systemie Windows?', '2', NULL, '[\"Pełnoekranowy\",\"Zadokowany\",\"Płynny\",\"Lupy\"]'),
(355, 1, 'Partycja, na której zainstalowany jest system operacyjny, nazywana jest partycją', '1', NULL, '[\"rozszerzoną\",\"systemową\",\"folderową\",\"wymiany\"]'),
(356, 1, 'Zużyte kasety od drukarek należy', '1', NULL, '[\"przekazać do wydziału ochrony środowiska\",\"przekazać firmie utylizującej tego typu odpady\",\"wyrzucić do pojemnika z odpadami komunalnymi\",\"wyrzucić do pojemnika przeznaczonego na plastik\"]'),
(357, 1, 'Przyczyną awarii drukarki igłowej może być usterka', '1', NULL, '[\"dyszy\",\"elektromagnesu\",\"elektrody ładującej\",\"utrwalacza termicznego\"]'),
(358, 1, 'Materiałem eksploatacyjnym w drukarce laserowej jest ', '1', NULL, '[\"pojemnik z tuszem\",\"kaseta z tonerem\",\"taśma barwiąca\",\"laser\"]'),
(359, 1, 'Programy GRUB, LILO, NTLDR to ', '3', NULL, '[\"wersje głównego interfejsu sieciowego\",\"aplikacje do aktualizacji BIOS-u\",\"firmware dla dysku twardego\",\"programy rozruchowe\"]'),
(360, 1, 'Przed wykonaniem prac serwisowych związanych z modyfikacją rejestru systemu Windows należy wykonać', '3', NULL, '[\"defragmentację dysku\",\"czyszczenie rejestru\",\"oczyszczanie dysku\",\"kopię rejestru\"]'),
(361, 1, 'Jak nazywa się klucz rejestru systemu Windows, w którym są zapisane powiązania typów plików z obsługującymi je aplikacjami?', '2', NULL, '[\"HKEY_LOCAL_RELATIONS\",\"HKEY_CURRENT_PROGS\",\"HKEY_CLASSES_ROOT\",\"HKEY_USERS\"]'),
(362, 1, 'Który typ plików należy utworzyć w systemie operacyjnym do zautomatyzowania najczęściej wykonywanych czynności, takich jak kopiowanie, tworzenie plików lub folderów?', '2', NULL, '[\"Konfiguracyjny\",\"Systemowy\",\"Wsadowy\",\"Inicjujący\"]'),
(363, 1, 'Przy uruchamianiu się komputera pojawia się komunikat CMOS checksum error press F1 to continue press DEL to setup. Wciśnięcie klawisza DEL spowoduje', '2', NULL, '[\"usunięcie pliku setup\",\"skasowanie zawartości pamięci CMOS\",\"wejście do ustawień BIOS-u komputera\",\"przejście do konfiguracji systemu Windows\"]'),
(364, 1, 'Do przechowywania części plików programów i danych, które są duże i nie mogą być umieszczone w całości w pamięci, służy', '0', NULL, '[\"plik stronicowania\",\"schowek systemu\",\"menadżer zadań\",\"edytor rejestru\"]'),
(365, 1, 'Na załączonym rysunku przedstawiono operację', '1', 'e12/530.jpg', '[\"fuzji danych\",\"kompresji danych\",\"kasowania danych\",\"kompilacji danych\"]'),
(366, 1, 'Na rysunku zamieszczono fragment karty graficznej ze złączem', '2', 'e12/534.jpg', '[\"PCI\",\"ISA\",\"AGP\",\"PCI-Express\"]'),
(367, 1, 'Jaką nazwę nosi rodzina procesorów firmy Intel, o niewielkich rozmiarach i małym poborze prądu, dedykowanych do zastosowań mobilnych?', '0', NULL, '[\"Atom\",\"Alpha\",\"Athlon\",\"Radeon\"]'),
(368, 1, 'Większą wydajność programów multimedialnych w systemie rodziny Windows zapewnia technologia ', '3', NULL, '[\"GPU\",\"CUDA\",\"jQuery\",\"DirectX\"]'),
(369, 1, 'Na rysunku przedstawiono kabel z wtyczkami', '3', 'e12/538.jpg', '[\"ATA\",\"Berg\",\"Molex\",\"SATA\"]'),
(370, 1, 'Widoczne na schemacie procesora rejestry pełnią funkcję ', '2', 'e12/540.jpg', '[\"przechowywania adresu do następnej instrukcji programu\",\"sterowania wykonywanym programem\",\"przechowywanie argumentów obliczeń\",\"wykonywania działań arytmetycznych\"]'),
(371, 1, 'W ramce zamieszczono opis technologii', '0', 'e12/543.jpg', '[\"SLI\",\"CUDA\",\"3DVision\",\"HyperTransport\"]'),
(372, 1, 'Który z przedstawionych parametrów procesora AMD APU A10 5700 3400 nie wpływa w sposób bezpośredni na prędkość jego działania?', '3', 'e12/544.jpg', '[\"Ilość rdzeni\",\"Częstotliwość\",\"Pojemność pamięci\",\"Proces technologiczny\"]'),
(373, 1, 'Wskaż program DTP', '3', NULL, '[\"MS Visio\",\"MS Word\",\"MS Excel\",\"MS Publisher\"]'),
(374, 1, 'Liczba ABBA w kodzie heksadecymalnym ma postać dwójkową o wartości', '0', NULL, '[\"1010 1011 1011 1010\",\"1011 1010 1010 1011\",\"0101 1011 1011 0101\",\"1010 1111 1111 1010\"]'),
(375, 1, 'Liczba dziesiętna 129 zostanie zapisana w postaci dwójkowej na ', '3', NULL, '[\"5 bitach\",\"6 bitach\",\"7 bitach\",\"8 bitach\"]'),
(376, 1, 'Przedstawiony wydruk w systemie rodziny Linux pojawi się po wydaniu komendy', '2', 'e12/548.jpg', '[\"ps\",\"pwd\",\"ls -la\",\"free\"]'),
(377, 1, 'Aby bezprzewodowo połączyć mysz z komputerem, należy użyć interfejsu', '2', NULL, '[\"DVI\",\"RS 232\",\"Bluetooth\",\"IEEE_1284\"]'),
(378, 1, 'W systemie Windows konto użytkownika tworzy się poleceniem', '1', NULL, '[\"users\",\"net user\",\"useradd\",\"adduser\"]'),
(379, 1, 'Przed modyfikacją rejestru Windows, dla zapewnienia bezpieczeństwa pracy, w pierwszej kolejności należy ', '3', NULL, '[\"wykonać kopię zapasową ważnych dokumentów\",\"sprawdzić czy na komputerze nie ma wirusów\",\"uruchomić komputer w trybie awaryjnym\",\"wykonać kopię zapasową rejestru\"]'),
(380, 1, 'Aby zapobiec wyładowaniom elektrostatycznym podczas wymiany podzespołów komputerowych, technik powinien zastosować', '0', NULL, '[\"matę i opaskę antystatyczną\",\"odzież poliestrową \",\"rękawice gumowe\",\"okulary ochronne\"]'),
(381, 1, 'Przy wymianie którego podzespołów komputera nie wymaga się wyłączenia źródła zasilania?', '3', NULL, '[\"zasilacza \",\"płyty głównej\",\"pamięci RAM\",\"urządzenia typu hot-swap\"]'),
(382, 1, 'Wskaż tryb pracy, w którym komputer zużywa najmniejszą ilość energii', '1', NULL, '[\"uśpienie \",\"hibernacja\",\"wstrzymanie\",\"gotowość (pracy)\"]'),
(383, 1, 'W jednostce ALU do akumulatora została wpisana liczba dziesiętna 500. Jaka jest jej binarna reprezentacja?', '2', NULL, '[\"110110000\",\"111011000\",\"111110100\",\"111111101\"]'),
(384, 1, 'Liczba 100110011 zapisana w kodzie ósemkowym ma postać', '0', NULL, '[\"463\",\"383\",\"346\",\"333\"]'),
(385, 1, 'AC-72-89-17-6E-B2 to adres fizyczny karty sieciowej zapisany w postaci', '3', NULL, '[\"binarnej\",\"oktalnej\",\"dziesiętnej\",\"heksadecymalnej\"]'),
(386, 1, 'Niskopoziomowe formatowanie dysku IDE HDD', '2', NULL, '[\"tworzy partycję rozszerzoną\",\"tworzy partycję podstawową\",\"jest wykonywane przez producenta dysku\",\"umieszcza program rozruchowy MBR\"]'),
(387, 1, 'Konwerter RAMDAC przetwarza sygnał', '1', NULL, '[\"analogowy na cyfrowy\",\"cyfrowy na analogowy\",\"zmienny na stały\",\"stały na zmienny\"]'),
(388, 1, 'Jaki typ złącza musi posiadać płyta główna, aby użytkownik mógł zainstalować przedstawioną na rysunku kartę graficzną?', '3', 'e12/565.jpg', '[\"AGP\",\"PCI\",\"PCIe x1\",\"PCIe x16\"]'),
(389, 1, 'Na nowym komputerze program antywirusowy należy zainstalować', '2', NULL, '[\"w trakcie instalacji systemu operacyjnego\",\"przed zainstalowaniem systemu operacyjnego\",\"zaraz po zainstalowaniu systemu operacyjnego\",\"po zainstalowaniu pobranych z internetu programów\"]'),
(390, 1, 'GRUB, LILO, NTLDR to:', '3', NULL, '[\"wersje głównego interfejsu sieciowego\",\"aplikacje do aktualizacji BIOS-u\",\"firmware dla dysku sieciowego\",\"programy rozruchowe\"]'),
(391, 1, 'W systemie Windows 7 w celu skopiowania katalogu c:	est wraz z podkatalogami na dysk przenośny, nalezy użyć polecenia', '2', NULL, '[\"copy c:\\\\test f:\\\\test /E\",\"copy f:\\\\test c:\\\\test /E\",\"xcopy c:\\\\test f:\\\\test /E\",\"xcopy f:\\\\test c:\\\\test /E\"]'),
(392, 1, 'W systemie operacyjnym Ubuntu konto użytkownika student można usunąć za pomocą polecenia', '0', NULL, '[\"userdel student\",\"del user student\",\"net user student /del\",\"user net student /del\"]'),
(393, 1, 'W systemie operacyjnym Ubuntu do utworzenia archiwum danych należy wykorzystać program:', '1', NULL, '[\"set\",\"tar\",\"sed\",\"awk\"]'),
(394, 1, 'W komputerach wykonujących zadania serwerowe, wymagające dużej wydajności, nalezy zastosować dysk', '0', NULL, '[\"SAS\",\"ATA\",\"USB\",\"SATA\"]'),
(395, 1, 'Interface USB 3.0 umożliwia transfer danych z prędkością do ', '3', NULL, '[\"120 MB/s\",\"400 Mb/s\",\"4 GB/s\",\"5 Gb/s\"]'),
(396, 1, 'Dla zamiany zeskanowanego obrazu na tekst należy zastosować oprogramowanie wykorzystujące techniki', '2', NULL, '[\"DPI\",\"DTP\",\"OCR\",\"OMR\"]'),
(397, 1, 'Interface HDMI komputera pozwala na przesyłanie sygnału', '2', NULL, '[\"wyłącznie cyfrowego video\",\"wyłącznie cyfrowego audio\",\"cyfrowego audio i video\",\"analogowego audio i video\"]'),
(398, 1, 'Licencja CAL (Client Access License) daje użytkownikowi prawo', '3', NULL, '[\"zmiany kodu programu\",\"używania programu bezterminowo\",\"kopiowania programu na nośniki zewnętrzne\",\"korzystania z usług udostępnionych przez serwer\"]'),
(399, 1, 'System oświetlenia oparty o trójkolorowe diody LED wykorzystują skanery typu', '0', NULL, '[\"CIS\",\"CCD\",\"CMOS\",\"CMYK\"]'),
(400, 1, 'W dokumentacji płyty głównej jest informacja: Wsparcie dla S/PDIF Out. Oznacza to, że dana płyta główna zawiera', '1', NULL, '[\"cyfrowe złącze sygnału video\",\"cyfrowe złącze sygnału audio\",\"analogowe złącze sygnału wyjścia video\",\"analogowe złącze sygnału wyjścia audio\"]'),
(401, 1, 'W dokumentacji jednego z elementów składowych komputera zamieszczono informacje, że urządzenie wspiera OpenGL. Dokumentacja dotyczy', '2', NULL, '[\"mikroprocesora\",\"karty sieciowej\",\"karty graficznej\",\"dysku twardego\"]'),
(402, 1, 'Użytkownik komputera udostępnia publicznie posiadane pliki w sieci Internet. Prawa autorskie zostaną naruszone, gdy udostępni', '3', NULL, '[\"otrzymany dokument urzędowy\",\"własne autorskie filmy z demonstracji publicznych\",\"wykonane przez siebie zdjęcia obiektów wojskowych\",\"obraz płyty systemu operacyjnego Windows 7 Home\"]'),
(403, 1, 'Program WinRAR wyświetlił okienko informacyjne pokazane na rysunku. Z jakiego typu licencji na program korzystał do tej pory użytkownik?', '2', 'e12/584.jpg', '[\"Adware\",\"Freeware\",\"Shareware\",\"Public domain\"]'),
(404, 1, 'Licencja Windows OEM nie pozwala na wymianę', '1', NULL, '[\"sprawnego zasilacza na model o lepszych parametrach\",\"sprawnej płyty głównej na model o lepszych parametrach\",\"sprawnej karty graficznej na model o lepszych parametrach\",\"sprawnego dysku twardego na model o lepszych parametrach\"]'),
(405, 1, 'Do pomiaru wartości rezystencji służy', '0', NULL, '[\"omomierz\",\"watomierz\",\"woltomierz\",\"amperomierz\"]'),
(406, 1, 'Interfejs SLI (ang. Scalable Link Interface) służy do łączenia', '0', NULL, '[\"dwóch kart graficznych\",\"czytnika kart z płytą główną\",\"napędu Blu-ray z kartą dźwiękową\",\"karty graficznej z odbiornikiem TV\"]'),
(407, 1, 'Materiałem eksploatacyjnym dla kolorowej drukarki laserowej jest', '2', NULL, '[\"przetwornik CMOS\",\"podajnik papieru\",\"kartridż z tonem\",\"pamięć wydruku\"]'),
(408, 1, 'Zaletą systemu plików NTFS jest', '3', NULL, '[\"możliwość sformatowana nośnika o małej pojemności (od 1.44 MB)\",\"zapisywanie plików o nazwie dłuższej niż 255 znaków\",\"przechowywanie tylko jednej kopi tabeli plików\",\"możliwość szyfrowania folderów i plików\"]'),
(409, 1, 'Wskaż niepoprawny podział dysków MBR na partycje', '3', NULL, '[\"3 partycje podstawowe i 1 rozszerzona\",\"2 partycje podstawowe i 1 rozszerzona\",\"1 partycja podstawowa i 1 rozszerzona\",\"1 partycja podstawowa i 2 rozszerzone\"]'),
(410, 1, 'Przy uruchomieniu komputera pojawia się komunikat: CMOS checksum error press F1 to continue press DEL to setup. Wciśnięcie klawisza DEL spowoduje', '1', NULL, '[\"usunięcie pliku setup\",\"wejście do BIOS-u komputera\",\"skasowanie zawartości pamięci CMOS\",\"przejście do konfiguracji systemu Windows\"]'),
(411, 1, 'Technika zwana rytownictwem odnosi się do zasady działania plotera', '3', NULL, '[\"tnącego\",\"laserowego\",\"solwentowego\",\"grawerującego\"]'),
(412, 1, 'Okresowych kopii zapasowych dysków serwera nie można tworzyć na wymiennych nośnikach typu ', '3', NULL, '[\"karty SD\",\"karty MMC\",\"płyty CD-RW\",\"płyty DVD-ROM\"]'),
(413, 1, 'Jaki będzie koszt wymiany karty graficznej w komputerze, jeśli karta kosztuje 250 zł, jej wymiana zajmie pracownikowi serwisu 80 minut, a każda rozpoczęta roboczogodzina kosztuje 50 zł?', '2', NULL, '[\"250 zł\",\"300 zł\",\"350 zł\",\"400 zł\"]'),
(414, 1, 'Zasilanie dostarczane przez płytę główną dla pamięci typu SDRAM DDR3 może mieć wartość', '2', NULL, '[\"1,2 V\",\"3,3 V\",\"1,5 V\",\"2,5 V\"]'),
(415, 1, 'Po podłączeniu sprawnej klawiatury do dowolnego z portów USB nie można wybrać awaryjnego trybu uruchomienia systemu Windows. Mimo to po uruchomieniu systemu w normalnym trybie klawiatura działa prawidłowo. Wskazuje to na', '0', NULL, '[\"niepoprawne ustawienia BIOS\",\"uszkodzony kontroler klawiatury\",\"uszkodzony zasilacz\",\"uszkodzone porty USB\"]'),
(416, 1, 'Maksymalny transfer danych napędu CD dla prędkości przesyłu x42 wynosi', '0', NULL, '[\"6300 KiB/s\",\"3600 KiB/s\",\"6000 KiB/s\",\"2400 KiB/s\"]'),
(417, 1, 'Taśma barwiąca jest podstawowym materiałem eksploatacyjnym drukarki', '3', NULL, '[\"atramentowej\",\"termicznej\",\"laserowej\",\"igłowej\"]'),
(418, 1, 'Typem pamięci operacyjnej o możliwie najmniejszym poborze mocy jest', '2', NULL, '[\"DDR\",\"SDR\",\"DDR3\",\"DDR2\"]'),
(419, 1, 'Wielkość plamki monitora LCD jest równa', '1', NULL, '[\"wielkości obszaru, na którym wyświetla się 1024 pikseli\",\"odległości od początku jednego do początku następnego piksela\",\"wielkości jednego piksela wyświetlanego na ekranie\",\"wielkości obszaru, na którym można wyświetlić jedną składową koloru RGB\"]'),
(420, 1, 'Narzędziem systemu Linux, służącym do monitorowania systemu przy pomocy scentralizowanego mechanizmu, jest program', '3', NULL, '[\"tar\",\"bcdedit\",\"fsck\",\"syslog\"]'),
(421, 1, 'Adapter USB na LPT można wykorzystać przy niekompatybilności złączy w przypadku podłączenia starszych egzemplarzy', '0', NULL, '[\"drukarki\",\"myszy\",\"klawiatury\",\"monitora\"]'),
(422, 1, 'W nowoczesnych ekranach dotykowych poprawność działania ekranu zapewnia mechanizm wykrywający zmianę', '2', NULL, '[\"oporu między przezroczystymi diodami wtopionymi w ekran\",\"położenia ręki dotykającej ekran poprzez zastosowanie kamery\",\"pola elektrostatycznego\",\"pola elektromagnetycznego\"]'),
(423, 1, 'Adware jest oprogramowaniem', '3', NULL, '[\"płatnym na zasadzie dobrowolnej darowizny\",\"płatnym po określonym czasie próbnym\",\"darmowym bez zastrzeżeń\",\"darmowym z dołączonymi reklamami\"]'),
(424, 1, 'W systemie Linux plik ma ustawione uprawnienia na 765. Grupa przypisana do tego pliku może go', '2', NULL, '[\"odczytać, zapisać, wykonać\",\"odczytać i wykonać\",\"odczytać i zapisać\",\"tylko odczytać\"]'),
(425, 1, 'Do oznaczenia iloczynu logicznego jest stosowany spójnik', '3', NULL, '[\"OR\",\"NOT\",\"XOR\",\"AND\"]'),
(426, 1, 'Do interfejsów równoległych zaliczany jest interfejs', '3', NULL, '[\"FireWire\",\"DVI\",\"RS-232\",\"AGP\"]'),
(427, 1, 'Funkcję S.M.A.R.T. dysku twardego odpowiadającą za aktywność mechanizmu monitoringu i wczesnego ostrzegania przed usterkami można aktywować poprzez', '3', NULL, '[\"opcję polecenia chkdsk\",\"rejestr systemu\",\"panel sterowania\",\"BIOS płyty głównej\"]'),
(428, 1, 'Emisja sygnałów dźwiękowych: jednego długiego i dwóch krótkich przez BIOS firmy AMI oznacza', '2', NULL, '[\"uszkodzenie pamięci\",\"błąd parzystości pamięci\",\"błąd karty graficznej\",\"uszkodzenie zegara systemowego\"]'),
(429, 1, 'Polecenie systemowe ipconfig umożliwia konfigurację', '2', NULL, '[\"rejestru systemu\",\"mapowania dysków sieciowych\",\"interfejsów sieciowych\",\"atrybutów uprawnień dostępu\"]'),
(430, 1, 'Przy modyfikacji rejestru Windows dla zapewnienia bezpieczeństwa pracy w pierwszej kolejności należy', '1', NULL, '[\"wykonać kopię zapasową ważnych dokumentów\",\"wyeksportować klucze rejestru do pliku\",\"sprawdzić czy nie ma błędów na dysku\",\"sprawdzić czy na komputerze nie ma wirusów\"]'),
(431, 1, 'Aby zwiększyć bezpieczeństwo prywatnych danych sesji na stronie WWW jest wskazane wyłączenie w opcjach przeglądarki', '2', NULL, '[\"blokady wyskakujących okienek\",\"powiadamiania o wygasłych certyfikatach\",\"funkcji zapamiętywania haseł\",\"blokady uruchamiania skryptów\"]'),
(432, 1, 'Jeden terabajt jest równy', '0', NULL, '[\"10^12 bajtów\",\"10^10 bajtów\",\"10^8 bajtów\",\"10^14 bajtów\"]'),
(433, 1, 'W systemie Windows 7 narzędzie trybu poleceń Cipher.exe służy do', '3', NULL, '[\"przełączania monitora w tryb oczekiwania\",\"podglądu plików tekstowych\",\"zarządzania rozruchem systemu\",\"szyfrowania i odszyfrowywania plików i katalogów\"]'),
(434, 1, 'Urządzenie typu Plug and Play, podłączone do komputera po raz kolejny, jest rozpoznawane na podstawie', '2', NULL, '[\"lokalizacji sterownika urządzenia\",\"specjalnego sterownika programowego\",\"unikalnego identyfikatora urządzenia\",\"lokalizacji urządzenia\"]'),
(435, 1, 'Do montażu zestawu komputerowego z płytą główną zawierającą gniazdo procesora typu Socket AM3 można zastosować procesor', '3', NULL, '[\"Core i7\",\"Itanium\",\"Pentium D\",\"Phenom II\"]'),
(436, 1, 'Martwy piksel, będący wadą monitorów LCD, to punkt pozostający niezmiennie w kolorze', '0', NULL, '[\"czarnym\",\"żółtym\",\"szarym\",\"fioletowym\"]'),
(437, 1, 'Na płycie głównej uległa uszkodzeniu zintegrowana karta sieciowa. Komputer nie może uruchomić systemu operacyjnego, gdyż nie ma dysku twardego ani żadnych napędów optycznych, a system operacyjny uruchamiany jest z sieci lokalnej. Aby przywrócić utraconą funkcjonalność, należy zamontować w komputerze', '3', NULL, '[\"najprostszą kartę sieciową wspierającą IEEE 802.3\",\"dysk twardy\",\"napęd CD-ROM\",\"kartę sieciową wspierającą funkcję Preboot Execution Environment\"]'),
(438, 1, 'Przed instalacją sterownika urządzenia peryferyjnego system operacyjny Windows powinien sprawdzać, czy sterownik posiada podpis', '1', NULL, '[\"zaufany\",\"cyfrowy\",\"kryptograficzny\",\"elektroniczny\"]'),
(439, 1, 'W systemie binarnym wynikiem sumowania liczb dwójkowych 1001101 i 11001 jest', '1', NULL, '[\"1101100\",\"1100110\",\"1110001\",\"1101101\"]'),
(440, 1, 'Certyfikatem potwierdzającym energooszczędność urządzenia jest', '1', NULL, '[\"Energy TCO\",\"Energy STAR\",\"Energy IEEE\",\"Energy ISO\"]'),
(441, 1, 'Liczba dziesiętna 512 w systemie binarnym ma postać', '3', NULL, '[\"100000\",\"1000000\",\"10000000\",\"1000000000\"]'),
(442, 1, 'Aby zapisać 10 GB danych na jednej płycie DVD, należy użyć nośnika typu', '3', NULL, '[\"DVD-5\",\"DVD-9\",\"DVD-10\",\"DVD-18\"]'),
(443, 1, 'Transmisję danych z maksymalną przepustowością 6Gb/s umożliwia interfejs', '3', NULL, '[\"USB 2.0\",\"USB 3.0\",\"SATA 2\",\"SATA 3 \"]'),
(444, 1, 'Komputer wyposażono w płytę główną przedstawioną na rysunku. Aby zwiększyć moc obliczeniową komputera zaleca się', '0', 'e12/645.jpg', '[\"zainstalowanie dwóch procesorów\",\"zwiększyć pamięci operacyjne\",\"instalację kontrolera RAID\",\"instalację dysku SAS\"]'),
(445, 1, 'Użycie polecenia attrib +h +s +r przykład.txt w linii poleceń systemu Windows spowoduje', '2', NULL, '[\"zabezpieczenie pliku przykład.txt hasłem hsr\",\"zapisanie ciągu znaków hsr w pliku przykład.txt\",\"nadanie dla pliku przykład.txt atrybytów: ukryty, systemowy, tylko do odczytu\",\"nadanie dla pliku przykład.txt atrybytów: ukryty, skompresowany, tylko do odczytu\"]'),
(446, 1, 'Wynik działania polecenia ls -l użytego w systemie Linux przedstawia rysunek', '3', 'e12/648.jpg', '[\"A\",\"B\",\"C\",\"D\"]'),
(447, 1, 'Którego z poleceń systemu Linux należy użyć do utworzenia archiwum danych?', '0', NULL, '[\"tar\",\"cal\",\"grep\",\"date\"]'),
(448, 1, 'Użycie polecenia fsck w systemie Linux spowoduje', '0', NULL, '[\"sprawdzenie integralności systemu plików\",\"wyświetlenie parametrów plików\",\"zmianę praw dostępu do pliku\",\"odszukanie pliku\"]'),
(449, 1, 'Zrzut ekranu przedstawia program', '3', 'e12/655.jpg', '[\"antywirusowy\",\"antyspamowy\",\"typu recovery\",\"typu firewall\"]'),
(450, 1, 'Aby najlepiej zabezpieczyć zgromadzone dane przed odczytem na wypadek kradzieży komputera, należy', '2', NULL, '[\"zastosować atrybut ukryty dla wszystkich ważnych plików\",\"wykonać punkt przywracania systemu\",\"zastosować szyfrowanie partycji\",\"zabezpieczyć konta hasłem\"]'),
(451, 1, 'Atak komputerowy, polegający na wyłudzaniu poufnych informacji osobistych przez podszywanie się pod godną zaufania osobę lub instytucję, to', '2', NULL, '[\"backscatter\",\"spoofing\",\"phishing\",\"spam\"]'),
(452, 1, 'Transfer danych napędu DVD dla prędkości przesyłu x48 wynosi', '3', NULL, '[\"10800 KiB/s\",\"32400 KiB/s\",\"54000 KiB/s\",\"64800 KiB/s\"]'),
(453, 1, 'Jaka jest liczba pinów we wtyczce SATA?', '2', NULL, '[\"4\",\"5\",\"7\",\"9\"]'),
(454, 1, 'Transmisja za pomocą fal radiowych korzystających z pasma ISM jest realizowana w interfejsie', '0', NULL, '[\"Bluetooth\",\"FireWire\",\"HDMI\",\"IrDA\"]'),
(455, 1, 'Wydruk z drukarki igłowej odbywa się przy użyciu zestawu stalowych igieł w ilości', '2', NULL, '[\"6, 9 lub 15\",\"10, 20 lub 30\",\"9, 24 lub 48\",\"9, 15 lub 45\"]'),
(456, 1, 'Na rysunku przedstawiono schemat zasady działania', '0', 'e12/665.jpg', '[\"karty dźwiękowej\",\"kontrolera USB\",\"karty graficznej\",\"modemu\"]'),
(457, 1, 'Standardem komunikacji między skanerem a programem graficznym jest', '3', NULL, '[\"USB\",\"OPC\",\"SCAN\",\"TWAIN\"]'),
(458, 1, 'Przydziały dyskowe w systemach rodziny Windows', '3', NULL, '[\"przydzielają partycje na dyskach\",\"przydzielają etykietę (np. C) dla danej partycji\",\"zapewniają podstawową funkcje diagnostyczne, defragmentację i checkdisk\",\"pozwalają na zdefiniowanie maksymalnej przestrzeni dyskowej dla kont użytkowników\"]'),
(459, 1, 'Aby udrożnić zatkane dysze kartridża drukarki atramentowej, należy', '0', NULL, '[\"przemyć dyszę specjalnym środkiem chemicznym\",\"oczyścić dysze za pomocą sprężonego powietrza\",\"przeczyścić dysze drobnym papierem ściernym\",\"oczyścić dysze za pomocą drucianych zmywaków\"]');
INSERT INTO `questions` (`id`, `exam`, `q`, `ans`, `i`, `at`) VALUES
(460, 1, 'Do serwisu komputerowego dostarczono laptopa z matrycą bardzo słabo wyświetlającą obraz. Ponadto obraz jest bardzo ciemny i widoczny tylko z bliska. Przyczyna usterki to', '1', NULL, '[\"pęknięta matryca\",\"uszkodzony inwerter\",\"uszkodzone gniazdo HDMI\",\"uszkodzone łącze między procesorem a matrycą\"]'),
(461, 1, 'Do przechowywania części plików programów i danych, które są duże i nie mogą być umieszczone w całości w pamięci, służy', '3', NULL, '[\"edytor rejestru\",\"menadżer zadań\",\"schowek systemu\",\"plik stronicowania\"]'),
(462, 1, 'Aby nadpisać błędne wpisy w pliku boot.ini w konsoli odzyskiwania systemu Windows, należy użyć polecenia', '3', NULL, '[\"fixmbr\",\"fixboot\",\"diskpart /add\",\"bootcfg /rebuild\"]'),
(463, 1, 'Podczas podłączenia sprawnego monitora do innego komputera jest wyświetlany komunikat przedstawiony na rysunku. Pojawienie się komunikatu jest spowodowane', '3', 'e12/674.jpg', '[\"wyłączeniem komputera\",\"uszkodzeniem karty graficznej komputera\",\"uszkodzeniem monitora podczas podłączenia\",\"zbyt wysoką lub zbyt niską częstotliwością sygnału\"]'),
(464, 1, 'Na rysunku przedstawiono oprogramowanie monitorujące', '3', 'e12/675.jpg', '[\"SAS\",\"NCQ\",\"IRDA\",\"SMART\"]'),
(465, 1, 'Aby system operacyjny miał szybszy dostęp do plików znajdujących się na dysku twardym, należy przeprowadzić', '2', NULL, '[\"szyfrowanie dysku\",\"fragmentację dysku\",\"defragmentację dysku\",\"partycjonowanie dysku\"]'),
(466, 1, 'Aby możliwe było wykorzystanie macierzy RAID 1, potrzeba minimum', '0', NULL, '[\"2 dysków\",\"3 dysków\",\"4 dysków\",\"5 dysków\"]'),
(467, 1, 'Najbardziej efektywnym sposobem sporządzania codziennej archiwizacji pojedynczego pliku o rozmiarze 4,8 GB, na pojedynczym stanowisku komputerowym bez dostępu do sieci jest', '1', NULL, '[\"nagranie na płytę DVD-5 w standardzie ISO\",\"użycie pamięci USB z systemem plików NTFS\",\"użycie pamięci USB z systemem plików FAT32\",\"spakowanie i przechowywanie w lokalizacji sieciowej\"]'),
(468, 1, 'Typem pamięci operacyjnej o możliwie najmniejszym poborze mocy jest', '3', NULL, '[\"SDR\",\"DDR\",\"DDR2\",\"DDR3\"]'),
(469, 1, 'We wtyczce zasilania SATA został uszkodzony żółty przewód. Oznacza to, że złącze nie podaje napięcia o wartości', '1', NULL, '[\"5V\",\"12V\",\"3,3V\",\"8,5V\"]'),
(470, 1, 'Aby połączyć komputer z siecią LAN, należy wykorzystać interfejs', '3', NULL, '[\"LPT\",\"S/PDIF\",\"D-SUB\",\"RJ-45\"]'),
(471, 1, 'Elementem zestawu komputerowego przetwarzającym zarówno daje wejściowe, jak i wyjściowe jest', '2', NULL, '[\"ploter\",\"skaner\",\"modem\",\"głośnik\"]'),
(472, 1, 'Które polecenie należy wydać, aby uzyskać wykaz przedstawionych plików?', '1', 'e12/691.jpg', '[\"dir *a*.jpg\",\"ls -l *a* *.jpg\",\"grep *a* *.jpg\",\"find *.jpg | *a*\"]'),
(473, 1, 'W wyniku wykonania przedstawionego skryptu', '2', 'e12/692.jpg', '[\"zawartość pliku ola.txt zostanie skopiowana do pliku ala.txt\",\"zawartość pliku ala.txt zostanie skopiowana do pliku ola.txt\",\"zostanie wpisany tekst ola.txt do pliku ala.txt\",\"zostanie wpisany tekst ala.txt do pliku ola.txt\"]'),
(474, 1, 'Aby ustawić w systemach operacyjnych rodziny Windows właściowość pliku na tylko do odczytu, należy użyć polecenia', '1', NULL, '[\"chmod\",\"attrib\",\"ftype\",\"set\"]'),
(475, 1, 'Aby zainstalować system openSUSE i skonfigurować jego ustawienia, można wykorzystać narzędzie', '1', NULL, '[\"GEdit\",\"YaST\",\"Brasero\",\"Evolution\"]'),
(476, 1, 'W systemach Windows można przypisać użytkownika do dowolnej grupy za pomocą przystawki', '2', NULL, '[\"certsrv\",\"fsmgmt\",\"lusrmgr\",\"services\"]'),
(477, 1, 'Programem umożliwiającym wydzielanie logicznych części dysku twardego w systemie GNU/Linux jest', '0', NULL, '[\"fdisk\",\"format\",\"convert\",\"truncate\"]'),
(478, 1, 'W dokumentacji karty dźwiękowej znajduje się następująca informacja: częstotliwość próbkowania 22kHz, rozdzielczość próbkowania 16 bitów. Jaka będzie przybliżona wielkość pliku dźwiękowego z 10-sekundowym nagraniem mono (jednokanałowym)?', '3', NULL, '[\"80000 B\",\"160000 B\",\"220000 B\",\"440000 B\"]'),
(479, 1, 'Uruchamianie programu w dowolnym celu, analizowanie działania programu oraz jego modyfikowanie wraz z możliwością publicznego rozpowszechniania tych zmian jest cechą licencji typu', '1', NULL, '[\"MOLP\",\"GNU GPL\",\"ADWARE\",\"FREEWARE\"]'),
(480, 1, 'Do sprawdzenia wartości napięcia w zasilaczu służy', '2', NULL, '[\"amperomierz\",\"impulsator\",\"multimetr\",\"pirometr\"]'),
(481, 1, 'Przy uruchamianiu komputera pojawia sie komunikat CMOS checksum error press F1 to continue press DEL to setup. Wciśnięcie klawisza DEL spowoduje', '2', NULL, '[\"usunięcie pliku setup\",\"skasowanie zawartości pamięci CMOS\",\"wejście do BIOS-u komputera\",\"przejście do konfiguracji systemu Windows\"]'),
(482, 1, 'Odpowiednikiem Linuksowego programu fsck w systemach rodziny Windows jest program', '3', NULL, '[\"erase\",\"icacls\",\"tasklist\",\"chkdsk\"]'),
(483, 1, 'Program df działający w systemach rodziny Linux umożliwia wyświetlenie', '3', NULL, '[\"nazwy bieżącego katalogu\",\"tekstu pasującego do wzorca\",\"zawartości ukrytego katalogu\",\"informacji o wolnej przestrzeni dyskowej\"]'),
(484, 1, 'Program tar umożliwia', '1', NULL, '[\"zarządzanie pakietami\",\"archiwizowanie plików\",\"konfigurowanie karty sieciowej\",\"wyświetlanie listy aktywnych procesów\"]'),
(485, 1, 'Parametr pamięci RAM nazywany czasem opóźnienia jest definiowany jako', '3', NULL, '[\"RAS to CAS Delay\",\"Command Rate\",\"RAS Precharge\",\"CAS Latency\"]'),
(486, 1, 'Zgodnie ze specyfikacją JEDEC napięcie zasilania modułów pamięci RAM DDR3L wynosi', '0', NULL, '[\"1,35 V\",\"1,5 V\",\"1,85 V\",\"1,9 V\"]'),
(487, 1, 'Które z wymienionych urządzeń jest elementem jednostki centralnej?', '2', NULL, '[\"Klawiatura PS/2\",\"Monitor LCD\",\"Modem PCI\",\"Mysz USB\"]'),
(488, 1, 'Procesory AMD wyposażone w złącze AM2+ będą poprawnie działały na płycie głównej wyposażonej w podstawkę socket', '1', NULL, '[\"FM2\",\"AM2\",\"AM3\",\"AM3+\"]'),
(489, 1, 'Pamięć podręczna Intel Smart Cache wbudowana w procesory wielordzeniowe np. Intel Core Duo to pamięć', '3', NULL, '[\"Cache L1 podzielona równo pomiędzy rdzenie\",\"Cache L1 współdzielona przez wszystkie rdzenie\",\"Cache L2 lub Cache L3, podzielona równo pomiędzy rdzenie\",\"Cache L2 lub Cache L3, współdzielona przez wszystkie rdzenie\"]'),
(490, 1, 'Aby blokować i usuwać szkodliwe oprogramowanie typu exploit, robaki oraz trojany, należy zainstalować oprogramowanie', '0', NULL, '[\"antymalware\",\"antyspyware\",\"antyspam\",\"adblock\"]'),
(491, 1, 'W systemie Linux informacje o okresie ważności hasła są zapisane w pliku', '3', NULL, '[\"bash\",\"grub\",\"passwd\",\"shadow\"]'),
(492, 1, 'Po wydaniu polecenia: net user w wierszu poleceń systemu Windows, zostanie wyświetlona', '0', NULL, '[\"lista kont użytkowników\",\"pomoc dotycząca polecenia net\",\"nazwa aktualnego użytkownika i jego hasło\",\"informacja o parametrach konta zalogowanego użytkownika\"]'),
(493, 1, 'Które medium transmisyjne wykorzystują myszki bluetooth do komunikacji z komputerem?', '2', NULL, '[\"Promieniowanie podczerwone\",\"Promieniowanie ultrafioletowe\",\"Fale radiowe w paśmie 2,4 GHz\",\"Fale radiowe w paśmie 800/900 MHz\"]'),
(494, 1, 'Diody elektroluminescencyjne RGB są źródłem światła w skanerach', '1', NULL, '[\"bębnowych\",\"płaskich CIS\",\"płaskich CCD\",\"kodów kreskowych\"]'),
(495, 1, 'Użytkownik, który chce drukować dokumenty jednocześnie w oryginale i trzech kopiach na papierze samokopiującym, powinien do tego celu zakupić drukarkę', '3', NULL, '[\"termotransferową\",\"atramentową\",\"laserową\",\"igłową\"]'),
(496, 1, 'W której technologii budowy projektorów wykorzystywany jest system mikroskopijnych luster, z których każde odpowiada 1 pikselowi wyświetlanego obrazu?', '1', NULL, '[\"LCD\",\"DLP\",\"LED\",\"LCOS\"]'),
(497, 1, 'Do zasilacza UPS o mocy rzeczywistej 480 W nie należy podłączać', '1', NULL, '[\"urządzeń sieciowych typu router\",\"drukarki laserowej\",\"modemu ADSL\",\"monitora\"]'),
(498, 1, 'Przedstawiony schemat obrazuje zasadę działania skanera', '3', 'e12/748.jpg', '[\"bębnowego\",\"płaskiego\",\"ręcznego\",\"3D\"]'),
(499, 1, 'Do pomiaru wartości mocy pobieranej przez komputer należy użyć', '0', NULL, '[\"watomierza\",\"woltomierza\",\"amperomierza\",\"testera zasilaczy\"]'),
(500, 1, 'Poprawność działania pamięci operacyjnej RAM można sprawdzić za pomocą programu diagnostycznego', '3', NULL, '[\"CPU-Z\",\"GPU-Z\",\"S.M.A.R.T\",\"Memtest86+\"]'),
(501, 1, 'Komunikat \"BIOS checksum error\" wyświetlany podczas uruchomienia komputera oznacza najczęściej', '3', NULL, '[\"Błąd pamięci operacyjnej\",\"Uszkodzony wentylator procesora\",\"Brak nośnika z systemem operacyjnym\",\"Uszkodzoną lub rozładowaną baterię na płycie głównej\"]'),
(502, 1, 'Informacje o błędach działania systemu operacyjnego Linux można uzyskać za pomocą narzędzia', '2', NULL, '[\"grub\",\"watch\",\"syslog\",\"netstat\"]'),
(503, 1, 'W systemie Linux do monitorowania bieżących procesów służy polecenie', '1', NULL, '[\"df\",\"ps\",\"free\",\"watch\"]'),
(504, 1, 'Użytkownicy dysków SSD w ramach zalecanych czynności konserwacyjnych nie powinni wykonywać', '0', NULL, '[\"Defragmentacji dysku\",\"Systematycznych kopii zapasowych danych\",\"Czyszczenia wnętrza jednostki centralnej z kurzu\",\"Systematycznego sprawdzania dysku programem antywirusowym\"]'),
(505, 1, 'W cenniku usług komputerowych znajdują się przedstawione niżej zapisy. Ile będzie wynosił koszt dojazdu serwisanta do klienta mieszkającego poza miastem, w odległości 15km od siedziby firmy?', '3', 'e12/758.jpg', '[\"30 zł\",\"30 zł + VAT\",\"25 zł + 2 zł za każdy km poza granicami miasta\",\"60 zł + VAT\"]'),
(506, 2, 'Wskaż urządzenie, które należy wykorzystać, aby podłączyć dwa komputery do sieci Internet z dostępem przez sieć lokalną Ethernet, w której mamy do dyspozycji tylko jeden adres IP', '0', NULL, '[\"Router LAN\",\"Spliter ADSL\",\"Modem ISDN\",\"Przełącznik LAN\"]'),
(507, 2, 'W celu uzyskania w sieci lokalnej prędkości przesyłania danych 100 Mbps zastosowano karty sieciowe pracujące w standardzie Fast Ethernet, kabel standardu UTP w odpowiedniej kategorii oraz  przełącznik (switch) pracujący w standardzie Fast Ethernet. Sieć taka jest wykonana w topologii', '3', NULL, '[\"IEEE\",\"BUS\",\"RING\",\"STAR\"]'),
(508, 2, 'Który adres protokołu IP w wersji 4 ma prawidłową strukturę?', '0', NULL, '[\"192.21.140.16\",\"192.10.255.3A\",\"192.309.1.255\",\"192.0.FF.FF\"]'),
(509, 2, 'Przydzielaniem numerów IP w sieci zajmuje się serwer', '0', NULL, '[\"DHCP\",\"DNS\",\"WINS\",\"NMP\"]'),
(510, 2, 'Aby usunąć opisaną usterkę, należy', '1', 'old/120.jpg', '[\"sprawdzić włączenie PROXY i ewentualnie włączyć\",\"zmienić konfiguracje adresów IP i/lub masek podsieci im odpowiadających w taki sposób, aby oba komputery znalazły się w tej samej podsieci\",\"wyłączyć system NetBIOS NWLink we właściwościach połączeń LAN komputerów\",\"wyłączyć system NetBIOS przez TCP/IP w  zaawansowanych ustawieniach TCP/IP kart sieciowych\"]'),
(511, 2, 'Usługa Windows XP Professional \"Mostek sieciowy\" pozwala na łączenie ze sobą', '0', NULL, '[\"segmentów sieci LAN\",\"dwóch komputerów\",\"roboczych stacji bezdyskowych\",\"klienta z serwerem\"]'),
(512, 2, 'Polecenie tracert to narzędzie diagnostyczne, które ustala', '0', 'old/176.jpg', '[\"ścieżkę do lokalizacji docelowej\",\"sprawność połączenia przy użyciu protokołu IPX/SPX\",\"poprawność konfiguracji protokołu TCP/IP\",\"możliwość diagnozowania infrastruktury systemu DNS\"]'),
(513, 2, 'Włączenie usługi Udostępnienie połączenia internetowego w systemie Windows uruchamia automatyczne nadawanie adresów IP dla komputerów (hostów) z niej korzystających. W tym celu wykorzystywana jest usługa', '2', NULL, '[\"WINS\",\"NFS\",\"DHCP\",\"DNS\"]'),
(514, 2, 'Aby użytkownicy sieci lokalnej mogli przeglądać strony WWW protokołami HTTP i HTTPS, brama internetowa musi przepuszczać ruch na portach', '1', NULL, '[\"80 i 434\",\"80 i 443\",\"90 i 434\",\"90 i 443\"]'),
(515, 2, 'Na zdjęciu przedstawiono', '0', 'old/212.jpg', '[\"terminator BNC\",\"zastępczy wtyk RJ-45\",\"zaślepkę gniazda RJ-45\",\"zaślepkę kabla światłowodowego\"]'),
(516, 2, 'Urządzenie ADSL służy do uzyskania połączenia', '3', NULL, '[\"radiowego\",\"satelitarnego\",\"cyfrowego symetrycznego\",\"cyfrowego asymetrycznego\"]'),
(517, 2, 'Jednostką opisującą szybkość transmisji danych w sieciach komputerowych jest', '2', NULL, '[\"dpi\",\"ips\",\"bps\",\"mips\"]'),
(518, 2, 'W systemie Windows XP na komputerze klienckim, plik \"hosts\" jest plikiem tekstowym, który służy do mapowania', '1', NULL, '[\"dysków twardych\",\"nazw hostów na adresy IP\",\"nazw hostów na adresy MAC\",\"nazw hostów przez serwery DNS\"]'),
(519, 2, 'Do połączenia kilku komputerów w sieć lokalną można użyć', '1', NULL, '[\"most\",\"router\",\"RAMDAC\",\"modem\"]'),
(520, 2, 'Serwer DNS jest serwerem', '3', NULL, '[\"usług terminalowych\",\"zdalnego i szyfrowanego dostępu\",\"dynamicznie przydzielającym adresy IP\",\"dzięki któremu nazwy mnemoniczne (opisowe) mogą zostać zamienione na odpowiadające im adresy IP\"]'),
(521, 2, 'Numer IP zapisuje się w postaci czterech, oddzielonych od siebie kropkami', '0', NULL, '[\"oktetów\",\"dekad\",\"helów\",\"bitów\"]'),
(522, 2, 'Komputer ma dostęp do Internetu poprzez sieć lokalną. Wpisując w przeglądarce internetowej adres www.wp.pl użytkownik nie ma dostępu do strony WWW, natomiast wpisanie adresu IP np. 212.77.100.101 pozwala otworzyć tę stronę. Co może być tego przyczyną?', '0', NULL, '[\"Brak serwera DNS\",\"Brak adresu bramy\",\"Brak serwera WINS\",\"Brak serwera PROXY\"]'),
(523, 2, 'Który z wymienionych adresów IP v.4 jest adresem klasy C?', '1', NULL, '[\"10.0.2.0\",\"223.0.10.1\",\"191.11.0.10\",\"126.110.10.0\"]'),
(524, 2, 'Adres IP v.4 ma długość', '2', NULL, '[\"2 bajty\",\"16 bitów\",\"32 bitów\",\"10 bajtów\"]'),
(525, 2, 'W systemie Windows moduł odpowiedzialny za internetowe usługi informacyjne to', '0', NULL, '[\"IIS\",\"ISA\",\"IIU\",\"OSI\"]'),
(526, 2, 'Który z wtyków należy zamontować na przewodzie UTP Cat 5e, by podłączyć komputer do sieci?', '2', NULL, '[\"BNC\",\"RJ11\",\"RJ45\",\"MT-RJ\"]'),
(527, 2, 'Maska podsieci /23 oznacza, że na pierwszych 23 bitach 32-cyfrowej liczby binarnej znajdują się jedynki, a na pozostałych zera. Jak będzie zapisana ta maska w systemie dziesiętnym, jeżeli każdym kolejnym 8 bitom odpowiada jedna liczba dziesiętna?', '1', NULL, '[\"255.255.0.0\",\"255.255.254.0\",\"255.255.255.0\",\"255.255.255.128\"]'),
(528, 2, 'Przedstawiono wynik uzyskany po uruchomieniu w systemie Windows polecenia IPCONFIG /ALL. Jak zostały skonfigurowane właściwości protokołu  TCP/IP dla karty sieciowej?', '1', 'old/316.jpg', '[\"Karta sieciowa nie ma ustawionego adresu bramy\",\"Karta sieciowa uzyskała adres IP automatycznie\",\"Karta sieciowa ma przydzielony statyczny adres IP\",\"Karta sieciowa nie ma ustawionego adresu serwera DNS\"]'),
(529, 2, 'Jaki protokół służy do translacji pomiędzy publicznymi i prywatnymi adresami IP?', '1', NULL, '[\"ARP\",\"NAT\",\"RARP\",\"SNMP\"]'),
(530, 2, 'Stacja robocza ma należeć do tej samej podsieci co serwer o adresie IP 192.168.10.150 i masce 255.255.255.192. Który z adresów IP należy ustawić we właściwościach protokołu TCP/IP karty sieciowej stacji roboczej?', '2', NULL, '[\"192.168.10.1\",\"192.168.11.130\",\"192.168.10.190\",\"192.168.10.220\"]'),
(531, 2, 'Urządzenie ADSL służy do uzyskania połączenia', '3', NULL, '[\"radiowego\",\"satelitarnego\",\"cyfrowego symetrycznego\",\"cyfrowego asymetrycznego\"]'),
(532, 2, 'Komputer ma dostęp do Internetu poprzez sieć lokalną. Wpisując w przeglądarce internetowej adres www.wp.pl użytkownik nie ma dostępu do strony WWW, natomiast wpisanie adresu IP np. 212.77.100.101 pozwala otworzyć tę stronę. Co może być tego przyczyną?', '0', NULL, '[\"Brak serwera DNS\",\"Brak adresu bramy\",\"Brak serwera WINS\",\"Brak serwera PROXY\"]'),
(533, 2, 'Jaką liczbę adresów urządzeń sieciowych zapewnia do dyspozycji stosowanie klasy adresowej C w sieciach opartych na rodzinie protokołów TCP/IP?', '2', NULL, '[\"100\",\"200\",\"254\",\"256\"]'),
(534, 2, 'Adres IP urządzenia umożliwiającego innym komputerom w sieci lokalnej dostęp do Internetu, to adres', '3', NULL, '[\"DNS\",\"WINS\",\"proxy\",\"bramy (routera)\"]'),
(535, 2, 'Architektura fizyczna sieci, zwana inaczej topologią fizyczną sieci komputerowych określa', '0', NULL, '[\"sposób połączenia ze sobą komputerów\",\"standardy komunikacyjne sieci komputerowych\",\"wzajemną komunikację komputerów pomiędzy sobą\",\"przekaz informacji pomiędzy protokołami sieciowymi modelu OSI\"]'),
(536, 2, 'W sieci lokalnej zainstalowano serwer, który ma za zadanie przydzielanie dynamicznego adresu IP. Jaka usługa musi być uruchomiona na tym serwerze?', '3', NULL, '[\"ISA\",\"DNS\",\"DCHP\",\"DHCP\"]'),
(537, 2, 'Użytkownik sieci lokalnej musi mieć możliwość korzystania z plików znajdujących się na serwerze sieciowym. W tym celu powinien', '0', NULL, '[\"zalogować się do domeny serwera i posiadać odpowiednie uprawnienia do plików znajdujących się na serwerze\",\"podłączyć komputer do tego samego przełącznika, do którego podłączony jest serwer\",\"mieć założone konto użytkownika bez praw administracyjnych na tym serwerze\",\"być członkiem grupy administratorzy na tym serwerze\"]'),
(538, 2, 'W budynku biurowym należy podłączyć komputer do routera ADSL przy użyciu przewodu UTP Cat 5e. Maksymalna odległość pomiędzy komputerem, a routerem powinna wynosić', '1', NULL, '[\"50 m\",\"100 m\",\"185 m\",\"500 m\"]'),
(539, 2, 'Przedstawiony stan ekranu terminala uzyskano w wyniku testu przeprowadzonego w systemie Windows. Pracownik serwisu uzyskał w ten sposób informację o:', '0', 'old/590.jpg', '[\"ścieżce do lokalizacji docelowej\",\"sprawności połączenia przy użyciu protokołu IPX/SPX\",\"poprawności konfiguracji protokołu TCP/IP\",\"możliwości diagnozowania infrastruktury systemu DNS\"]'),
(540, 2, 'Bezprzewodowy dostęp komputera do sieci Internet poprzez tzw hotspot będzie możliwy po zainstalowaniu w nim karty sieciowej wyposażonej w', '0', NULL, '[\"moduł WiFi\",\"złącze USB\",\"gniazdo RJ-45\",\"interfejs RS-232C\"]'),
(541, 2, 'Adres IP 158.75.60.16 należy do adresów', '2', NULL, '[\"klasy D\",\"klasy C\",\"klasy B\",\"klasy A\"]'),
(542, 2, 'W jakiej fizycznej topologii uszkodzenie jednej stacji roboczej zatrzyma działanie całej sieci?', '3', NULL, '[\"Siatki\",\"Drzewa\",\"Magistrali\",\"Pierścienia\"]'),
(543, 2, 'Przesyłanie ruchu sieciowego poprzez router, które wiąże się ze zmianą źródłowych lub docelowych adresów IP, oznacza się skrótem', '1', NULL, '[\"IIS\",\"NAT\",\"FTP\",\"IANA\"]'),
(544, 2, 'Który protokół wykorzystują komputery do powiadomienia rutera o chęci przyłączenia się lub odejścia z określonej grupy rozgłoszeniowej?', '1', NULL, '[\"TCP/IP\",\"IGMP\",\"DHCP\",\"UDP\"]'),
(545, 2, 'Protokołem dostępu do sieci pakietowej z szybkością nie przekraczającą 2 Mbit/s jest protokół', '3', NULL, '[\"Frame Relay\",\"ATM\",\"VDSL\",\"X . 25\"]'),
(546, 2, 'Który protokół wykorzystują komputery do powiadomienia rutera o członkostwie w danej grupie rozgłoszeniowej?', '2', NULL, '[\"RIP\",\"UDP\",\"IGMP\",\"OSPF\"]'),
(547, 2, 'W okablowaniu strukturalnym opartym na skrętce UTP kat. 6, należy stosować gniazda sieciowe typu', '1', NULL, '[\"F\",\"8P8C\",\"RJ-11\",\"BNC\"]'),
(548, 2, 'Grupa, w której uprawnienia członków można przypisywać tylko w obrębie tej samej domeny, co domena nadrzędnej grupy lokalnej domeny, to grupa', '0', NULL, '[\"lokalna domeny\",\"uniwersalna\",\"lokalna komputera\",\"globalna\"]'),
(549, 2, 'Który protokół komunikacyjny służy do transferu plików w układzie klient-serwer oraz może działać w dwóch trybach: aktywnym i pasywnym?', '2', NULL, '[\"DNS\",\"IP\",\"FTP\",\"EI-SI\"]'),
(550, 2, 'Jaki jest maksymalny rozmiar pojedynczego datagramu IPv4, którego wielkość liczona jest wraz z jego nagłówkiem?', '0', NULL, '[\"64 kB\",\"32 kB\",\"128 kB\",\"256 kB\"]'),
(551, 2, 'Który protokół zapewnia szyfrowanie połączenia?', '3', NULL, '[\"DHCP\",\"DNS\",\"TELNET\",\"SSH\"]'),
(552, 2, 'W adresie IP należącym do klasy A, wartość pierwszego bajtu jest zawarta w przedziale', '3', NULL, '[\"192 - 223\",\"128 - 191\",\"224 - 240\",\"0 - 127\"]'),
(553, 2, 'Które polecenie w systemie Windows przeznaczonym dla stacji roboczej, służy do ustawienia wymagań dotyczących logowania dla wszystkich kont użytkowników tej stacji roboczej', '1', NULL, '[\"Net file\",\"Net accounts\",\"Net session\",\"Net computer\"]'),
(554, 2, 'Do prawidłowego działania telefonu VoIP konieczne jest skonfigurowanie adresu', '3', NULL, '[\"rozgłoszeniowego\",\"MAR/MAV\",\"centrali ISDN\",\"IP\"]'),
(555, 2, 'Które szyfrowanie stosowane w sieciach bezprzewodowych, jest najmniej odporne na łamanie haseł?', '1', NULL, '[\"WPA TKIP\",\"WEP\",\"WPA2\",\"WPA AES\"]'),
(556, 2, 'Na rysunku przedstawiono urządzenie do', '1', 'e13/85.jpg', '[\"zaciskania złącz BNC\",\"zdejmowania izolacji z kabli\",\"zaciskania złącz RJ-45\",\"montażu okablowania w gnieździe sieciowym\"]'),
(557, 2, 'Którą konfigurację sieciową może mieć komputer należący do tej samej sieci LAN, co komputer o adresie 192.168.1.10/24?', '0', NULL, '[\"192.168.1.11 i 255.255.255.0\",\"192.168.0.11 i 255.255.0.0\",\"192.168.0.11 i 255.255.255.0\",\"192.168.1.11 i 255.255.0.0\"]'),
(558, 2, 'W wyniku polecenia ipconfig została wyświetlona konfiguracja przedstawiona na rysunku. Adres IP testowanej stacji roboczej ma postać', '3', 'e13/95.jpg', '[\"62.21.99.95\",\"192.168.0.1\",\"255.255.255.0\",\"192.168.0.11\"]'),
(559, 2, 'Narzędzie administracyjne wiersza polecenia umożliwiające testowanie i rozwiązywanie problemów z serwerami DNS to:', '1', NULL, '[\"CHKDSK\",\"NSLOOKUP\",\"CMD\",\"DHCP\"]'),
(560, 2, 'Który protokół jest używany przez usługę VPN, w celu zhermetyzowania pakietów IP w sieci publicznej?', '1', NULL, '[\"SNMP\",\"PPTP\",\"HTTP\",\"SMTP\"]'),
(561, 2, 'Maska dla adresu IP 192.168.1.10/8 ma postać', '1', NULL, '[\"255.255.255.0\",\"255.0.0.0\",\"255.255.0.0\",\"255.0.255.0\"]'),
(562, 2, 'Które oznaczenie określa normę dotyczącą okablowania strukturalnego?', '1', NULL, '[\"ISO 11801\",\"EIA/TIA 568A\",\"PN-EN 50173-1:2004\",\"EN 50173\"]'),
(563, 2, 'Na rysunku przedstawiono', '1', 'e13/106.jpg', '[\"kartę sieciową\",\"patch panel\",\"przełącznik\",\"koncentrator\"]'),
(564, 2, 'Na rysunku przedstawiono symbol graficzny', '0', 'e13/108.jpg', '[\"rutera\",\"mostu\",\"regeneratora\",\"koncentratora\"]'),
(565, 2, 'Najwyższy poziom bezpieczeństwa sieci bezprzewodowej zapewni szyfrowanie', '2', NULL, '[\"WPA\",\"WEP\",\"WPA2\",\"ROT13\"]'),
(566, 2, 'Jaki protokół odpowiada za zamianę adresów IP na adresy kontroli dostępu do nośnika (MAC)?', '2', NULL, '[\"RARP\",\"SNMP\",\"ARP\",\"SMTP\"]'),
(567, 2, 'Do śledzenia trasy datagramu IP do punktu docelowego służy polecenie', '3', NULL, '[\"nslookup\",\"ping\",\"route\",\"tracert\"]'),
(568, 2, 'Ile maksymalnie kanałów, z dostępnego spectrum kanałów standardu 802.11b, można wykorzystywać na terenie Polski?', '3', NULL, '[\"10 kanałów\",\"9 kanałów\",\"11 kanałów\",\"13 kanałów\"]'),
(569, 2, 'W technologii Ethernet 100BaseTX wymagane jest stosowanie skrętki', '3', NULL, '[\"kategorii 1\",\"kategorii 3\",\"kategorii 2\",\"kategorii 5\"]'),
(570, 2, 'Przekazywanie żetonu (ang. token), występuje w sieci o strukturze fizycznej', '3', NULL, '[\"magistrali\",\"siatki\",\"gwiazdy\",\"pierścienia\"]'),
(571, 2, 'System operacyjny nie zajmuje się', '1', NULL, '[\"planowaniem oraz przydziałem czasu procesora poszczególnym zadaniom\",\"tworzeniem źródeł aplikacji systemowych\",\"kontrolą i przydziałem pamięci operacyjnej dla uruchomionych zadań\",\"dostarczaniem mechanizmów do synchronizacji zadań i komunikacji pomiędzy zadaniami\"]'),
(572, 2, 'Do cech pojedynczego konta użytkownika pracującego w systemie Windows Serwer należy', '2', NULL, '[\"maksymalna wielkość profilu użytkownika\",\"maksymalna wielkość pulpitu użytkownika\",\"numer telefonu, pod który ma oddzwonić serwer w przypadku nawiązania połączenia telefonicznego przez tego użytkownika\",\"maksymalna wielkość pojedynczego pliku jaką użytkownik może zapisać na dysku serwera\"]'),
(573, 2, 'Który z protokołów jest protokołem synchronizacji czasu?', '3', NULL, '[\"NNTP\",\"FTP\",\"HTTP\",\"NTP\"]'),
(574, 2, 'Wskaż domyślny port do przekazywania poleceń (command) serwera usługi FTP', '3', NULL, '[\"25\",\"110\",\"20\",\"21\"]'),
(575, 2, 'Jakie narzędzie należy wybrać, aby podłączyć żyły kablowe skrętki do gniazda Ethernet?', '3', NULL, '[\"Zaciskarkę RJ-45\",\"Zaciskarkę BNC\",\"Zaciskarkę RJ-11\",\"Wciskacz LSA\"]'),
(576, 2, 'W standardzie IEEE 802.3af dostarczanie energii elektrycznej do różnych urządzeń sieciowych opisuje technologia', '0', NULL, '[\"Power over Ethernet\",\"Power over Classifications\",\"Power under Control\",\"Power over Internet\"]'),
(577, 2, 'W firmowej sieci bezprzewodowej została uruchomiona usługa polegająca na tłumaczeniu nazw mnemonicznych. Jest to usługa', '0', NULL, '[\"DNS\",\"RDS\",\"DHCP\",\"RADIUS\"]'),
(578, 2, 'Sieć Ethernet pracuje w logicznej topologii', '1', NULL, '[\"siatkowej\",\"rozgłaszania\",\"siatki i gwiazdy\",\"pierścieniowej i liniowej\"]'),
(579, 2, 'Translacją nazw domenowych na adresy sieciowe zajmuje się usługa', '3', NULL, '[\"SMTP\",\"DHCP\",\"SNMP\",\"DNS\"]'),
(580, 2, 'Podstawową funkcją serwera FTP jest', '2', NULL, '[\"synchronizacja czasu\",\"zarządzanie kontami poczty\",\"udostępnianie plików\",\"monitoring sieci\"]'),
(581, 2, 'Wskaż poprawną postać maski', '0', NULL, '[\"255.255.255.192\",\"255.255.255.228\",\"255.255.255.96\",\"255.255.255.64\"]'),
(582, 2, 'Który z protokołów jest protokołem wykorzystywanym do zarządzania urządzeniami sieciowymi?', '2', NULL, '[\"DNS\",\"SFTP\",\"SNMP\",\"SMTP\"]'),
(583, 2, 'Jaki protokół jest wykorzystywany podczas inicjacji sesji VoIP?', '0', NULL, '[\"SIP\",\"MCGP\",\"MIME\",\"SDP\"]'),
(584, 2, 'Który z protokołów jest szyfrowanym protokołem terminalowym?', '2', NULL, '[\"POP3\",\"telnet\",\"SSH\",\"TFTP\"]'),
(585, 2, 'Najszybszą możliwą transmisję danych w sieci bezprzewodowej umożliwia standard', '0', NULL, '[\"802.11n\",\"802.11b\",\"802.11a\",\"802.11g\"]'),
(586, 2, 'Na rysunku przedstawiono sieć o topologii', '3', 'e13/149.jpg', '[\"siatki\",\"drzewa\",\"gwiazdy\",\"magistrali\"]'),
(587, 2, 'Jaka przepływność definiuje standard sieci Ethernet IEEE 802.3z', '0', NULL, '[\"1 Gb/s\",\"10 Mb/s\",\"100 Mb/s\",\"100 Gb/s\"]'),
(588, 2, 'Standard transmisji Gigabit Ethernet opisuje norma', '3', NULL, '[\"IEEE 802.3i\",\"IEEE 802.3u\",\"IEEE 802.3x\",\"IEEE 802.3ab\"]'),
(589, 2, 'Fast Ethernet to standard sieci przewodowej, umożliwiający transmisję danych z maksymalną prędkością', '1', NULL, '[\"54 Mbps\",\"100 Mbps\",\"108 Mbps\",\"1000 Mbps\"]'),
(590, 2, 'Ile par przewodów jest przeznaczonych w standardzie 100Base-TX do transmisji danych w obu kierunkach?', '1', NULL, '[\"1\",\"2\",\"4\",\"8\"]'),
(591, 2, 'Protokołem pakietów użytkownika wykonującym usługę bezpołączeniowego dostarczania datagramów jest', '3', NULL, '[\"IP\",\"TCP\",\"ARP\",\"UDP\"]'),
(592, 2, 'Symbol graficzny przedstawiony na rysunku oznacza', '2', 'e13/159.jpg', '[\"most\",\"bramę\",\"przełącznik\",\"koncentrator\"]'),
(593, 2, 'Sieci lokalne typu klient-serwer charakteryzują się tym, że', '1', NULL, '[\"każdy komputer w sieci jest równoprawny z pozostałymi\",\"istnieje jeden wydzielony komputer udostępniający swoje zasoby w sieci \",\"żaden z komputerów nie pełni roli nadrzędnej w stosunku do pozostałych\",\"wszystkie komputery klienckie mają dostęp do zasobów pozostałych komputerów\"]'),
(594, 2, 'Do której warstwy modelu ISO/OSI należy segmentowanie danych, komunikacja  w trybie połączeniowym z wykorzystaniem protokołu TCP oraz komunikacja w trybie bezpołączeniowym z wykorzystaniem protokołu UDP?', '3', NULL, '[\"Fizycznej\",\"Sieciowej\",\"Łącza danych\",\"Transportowej\"]'),
(595, 2, 'Wyznaczanie optymalnej trasy dla połączenia sieciowego to', '0', NULL, '[\"routing\",\"sniffing\",\"tracking\",\"conntrack\"]'),
(596, 2, 'Które urządzenie służy do połączenia sieci lokalnej z siecią rozległą?', '1', NULL, '[\"Most\",\"Router\",\"Przełącznik\",\"Koncentrator\"]'),
(597, 2, 'Administrator zauważył, że w sieci LAN występuje duża liczba kolizji. Które urządzenie powinien zainstalować, aby podzielić sieć lokalną na mniejszy domeny kolizji?', '2', NULL, '[\"Router\",\"Modem\",\"Przełącznik\",\"Koncentrator\"]'),
(598, 2, 'Oblicz koszt brutto kabla UTP Cat 6 użytego do połączenia 5 punktów abonenckich z punktem dystrybucyjnym, wiedząc, że średnia długość pomiędzy punktem abonenckim a punktem dystrybucyjnym wynosi 8 m oraz że cena brutto 1 m kabla wynosi 1 zł. Przy obliczeniach należy uwzględnić zapas 2m kabla na każdy punkt abonencki.', '3', NULL, '[\"32 zł\",\"40 zł\",\"45 zł\",\"50 zł\"]'),
(599, 2, 'Który typ kabla należy zastosować do podłączenia komputera w pomieszczeniu z zakłóceniami elektromagnetycznymi?', '3', NULL, '[\"UTP Cat 5\",\"UTP Cat 6\",\"UTP Cat 5e\",\"UTP Cat 5c\"]'),
(600, 2, 'Ile maksymalnie hostów można zaadresować w sieci lokalnej, mając do dyspozycji jedną klasę C adresów protokołu IPv4?', '0', NULL, '[\"254\",\"255\",\"510\",\"512\"]'),
(601, 2, 'Który z adresów IP należy do klasy B?', '2', NULL, '[\"96.15.2.4\",\"100.10.10.2\",\"134.192.16.1\",\"198.15.110.112\"]'),
(602, 2, 'Sieć o adresie IP 192.168.2.0/24 podzielono na cztery podsieci. Jaką maskę posiadają nowe podsieci?', '1', NULL, '[\"255.255.255.128\",\"255.255.255.192\",\"255.255.255.224\",\"225.225.225.240\"]'),
(603, 2, 'W ilu podsieciach pracują komputery o adresach: 192.168.5.12/25, 192.168.5.200/25 i 192.158.5.250/25?', '2', NULL, '[\"1\",\"2\",\"3\",\"4\"]'),
(604, 2, 'Instalowanie w systemie operacyjnym Windows Server usługi Active Directory wymaga wcześniejszego zainstalowania i skonfigurowania serwera', '1', NULL, '[\"FTP\",\"DNS\",\"WWW\",\"DHCP\"]'),
(605, 2, 'Jeżeli na danej przestrzeni będą działały równocześnie dwie sieci WLAN standardy 802.11g, to aby wyeliminować możliwość wzajemnych zakłóceń należy im przydzielić kanały o numerach różniących się o', '3', NULL, '[\"2\",\"3\",\"4\",\"5\"]'),
(606, 2, 'Program wykorzystywany do przechwytywania analizy ruchu sieciowego, to', '1', NULL, '[\"viewer\",\"sniffer\",\"spywer\",\"keylogger\"]'),
(607, 2, 'Które polecenie w systemie Windows należy zastosować do monitorowania listy aktywnych połączeń karty sieciowej w komputerze?', '2', NULL, '[\"Ping\",\"Telnet\",\"Netstat\",\"Ipconfig\"]'),
(608, 2, 'Która usługa serwerowa zapewnia automatyczną konfigurację parametrów sieciowych stacji roboczych?', '2', NULL, '[\"NAT\",\"DNS\",\"DHCP\",\"WINS\"]'),
(609, 2, 'Jaką funkcję pełni ISA Server w systemie operacyjnym Windows?', '0', NULL, '[\"Pełni funkcję firewalla\",\"Rozwiązuje nazwy domenowe\",\"Jest systemem wymiany plików\",\"Jest serwerem stron internetowych\"]'),
(610, 2, 'Która z grup w systemie Windows Serwer posiada najmniejsze uprawnienia?', '0', NULL, '[\"Wszyscy\",\"Użytkownicy\",\"Administratorzy\",\"Operatorzy kont\"]'),
(611, 2, 'Które zdanie opisuje protokół SSH (Secure Shell)?', '0', NULL, '[\"Bezpieczny protokół terminalu sieciowego udostępniający usługi szyfrowania połączenia\",\"Protokół do zdalnej pracy na odległym komputerze nie zapewnia kodowania transmisji\",\"Sesje SSH powodują wysyłanie zwykłego tekstu, niezaszyfrowanych danych\",\"Sesje SSH nie pozwalają określić, czy punkty końcowe są autentyczne\"]'),
(612, 2, 'Który port jest wykorzystywany przez protokół FTP (File transfer Protocol)', '0', NULL, '[\"20\",\"25\",\"53\",\"69\"]'),
(613, 2, 'ARP (Adress Resolution Protocol) jest protokołem realizującym odwzrowanie adresu IP na', '3', NULL, '[\"adres poczty e-mail\",\"nazwę domenową\",\"nazwę komputera\",\"adres sprzętowy.\"]'),
(614, 2, 'Jaką nazwę nosi złącze stosowane w sieciach komputerowych przedstawione na zdjęciu?', '1', 'e13/190.jpg', '[\"FC\",\"BNC\",\"ST\",\"LC\"]'),
(615, 2, 'Z ilu bitów składa się adres fizyczny MAC karty sieciowej?', '2', NULL, '[\"16\",\"32\",\"48\",\"64\"]'),
(616, 2, 'Standard o nazwie IEEE 802.11 stosowany w lokalnych sieciach komputerowych opisuje sieć:', '1', NULL, '[\"Ethernet\",\"Wireless LAN\",\"Token Ring\",\"Fiber Optic FDDI\"]'),
(617, 2, 'Rodzina adapterów wykonanych w technologii Powerline umożliwiająca wykorzystanie sieci energetycznej w obrębie jednego domu/mieszkania do przesyłania sygnału sieciowego nosi nazwę:', '0', NULL, '[\"HomePlug\",\"InternetOutlet\",\"HomeOutlet\",\"InternetPlug\"]'),
(618, 2, 'FDDI (ang. Fiber Distributed Data Interface) to standard transmisji danych oparty na technologii światłowodowej. Jaką topologię stosujemy w sieciach wykonanych wg tej technologii?', '3', NULL, '[\"gwiazdy\",\"rozszerzonej gwiazdy\",\"pierścienia\",\"podwójnego pierścienia\"]'),
(619, 2, 'Translacja adresów źródłowych w ramach usługi NAT routera umożliwiająca komputerom w sieci prywatnej dostęp do internetu nosi nazwę:', '2', NULL, '[\"DNAT\",\"LNAT\",\"SNAT\",\"WNAT\"]'),
(620, 2, 'Usługą katalogową nie jest:', '3', NULL, '[\"Active Directory\",\"OpenLDAP\",\"Novell eDirectory\",\"Oracle baseDirectory\"]'),
(621, 2, 'Który z podanych adresów IP nie jest adresem prywatnym?', '1', NULL, '[\"10.0.105.12\",\"127.231.5.67\",\"172.16.45.123\",\"192.168.199.223\"]'),
(622, 2, 'W topologii fizycznej gwiazdy, wszystkie urządzenia pracujące w sieci, są', '0', NULL, '[\"podłączone do węzła sieci\",\"podłączone do jednej magistrali\",\"połączone z dwoma sąsiadującymi komputerami\",\"połączone między sobą odcinkami kabla tworząc zamknięty pierścień\"]'),
(623, 2, 'Który standard sieci LAN definiuje dostęp do medium na podstawie tokenu (żetonu)?', '3', NULL, '[\"IEEE 802.1\",\"IEEE 802.2\",\"IEEE 802.3\",\"IEEE 802.5\"]'),
(624, 2, 'Którym symbolem oznaczona jest skrętka nieekranowana?', '2', NULL, '[\"U/FTP\",\"S/FTP\",\"U/UTP\",\"F/UTP\"]'),
(625, 2, 'Okablowanie strukturalne należy zaliczyć do infrastruktury ', '1', NULL, '[\"aktywnej\",\"pasywnej\",\"terytorialnej\",\"dalekosiężnej\"]'),
(626, 2, 'Ile warstw definiuje model ISO/OSI', '2', NULL, '[\"3\",\"5\",\"7\",\"9\"]'),
(628, 2, 'Przyrząd przedstawiony na rysunku jest stosowany do zaciskania wtyków', '2', 'e13/208.jpg', '[\"SC\",\"BNC\",\"RJ 45\",\"E 2000\"]'),
(629, 2, 'Adres IP (ang. Internet Protocol Address) jest', '3', NULL, '[\"unikatowym numerem fabrycznym urządzenia\",\"unikatową nazwą symboliczną urządzenia\",\"adresem fizycznym komputera\",\"adresem logicznym komputera\"]'),
(630, 2, 'Który skrócony zapis odpowiada następującej masce podsieci: 255.255.248.0?', '0', NULL, '[\"/21\",\"/22\",\"/23\",\"/24\"]'),
(631, 2, 'Który z wymienionych adresów protokołu IPv4 jest adresem klasy D?', '3', NULL, '[\"10.0.3.5\",\"128.1.0.8\",\"191.12.0.18\",\"239.255.203.1\"]'),
(632, 2, 'W Windows 7 konfigurację interfejsu sieciowego można wykonać, stosując rozwinięcie polecenia', '0', NULL, '[\"netsh\",\"telnet\",\"tracert\",\"nslookup\"]'),
(633, 2, 'Wykonanie polecenia net use Z:192.168.20.2data /delete, spowoduje', '0', NULL, '[\"odłączenie katalogu data od dysku Z:\",\"przyłączenie katalogu data do dysku Z:\",\"odłączenie zasobów hosta 192.168.20.2 od dysku Z:\",\"przyłączenie zasobów hosta 192.168.20.2 do dysku Z:\"]'),
(634, 2, 'Które z zadań realizuje usługa katalogowa Active Directory w systemach Windows Server?', '1', NULL, '[\"obsługuje żądania protokołu komunikacyjnego\",\"przechowuje informacje o obiektach znajdujacych się w sieci\",\"umożliwia wymianę plików z odległymi komputerami za pomocą protokołu komunikacyjnego\",\"centralnie zarządza adresami IP i powiązanymi informacjami, a także udostepnia je automatycznie klientom\"]'),
(635, 2, 'Dynamiczne konfigurowanie parametrów TCP/IP hosta na podstawie adresu MAC karty sieciowej jest zadaniem protokołu', '3', NULL, '[\"FTP\",\"DNS\",\"HTTP\",\"DHCP\"]'),
(636, 2, 'Mechanizm limitów dyskowych, pozwalający zarządzać wykorzystaniem przez użytkowników zasobów dyskowych, jest określany jako', '1', NULL, '[\"spool\",\"quota\",\"release\",\"management\"]'),
(637, 2, 'Mapowanie dysków jest', '3', NULL, '[\"konfiguracja interfejsów sieciowych\",\"definiowaniem użytkowników i grup użytkowników\",\"nadaniem uprawnieńdo folderu użytkownikom sieci WAN\",\"przyporządkowaniem oznaczenia dysku wybranemu katalogowi sieciowemu\"]'),
(638, 2, 'W celu promowania serwera do roli kontrolera domeny w systemach Windows Server należy zastosować polecenie', '0', NULL, '[\"dcpromo\",\"dcgpofix\",\"regsvr32\",\"winnt32\"]'),
(639, 2, 'Adres 2001:0012:0000:0000:0AAA:0000:0000:000B protokołu IPv6 po kompresji przyjmuje postać', '2', NULL, '[\"2001:0012::000B\",\"2001:12::0E98::B\",\"2001:12::AAA:0:0:B\",\"2001::AAA:0000::000B\"]'),
(640, 2, 'Usługa o nazwie: \"Pulpit zdalny\" domyślnie działa na porcie', '2', NULL, '[\"3369\",\"3379\",\"3389\",\"3390\"]'),
(641, 2, 'Zbiór usług internetowych dla systemów rodziny Microsoft Windows jest oznaczony skrótem', '0', NULL, '[\"IIS\",\"FTPS\",\"HTTP\",\"HTTPS\"]'),
(642, 2, 'W systemach operacyjnych Windows konto użytkownika, o największych uprawnieniach domyslnych, należy do grupy', '1', NULL, '[\"goście\",\"administratorzy\",\"uzytkownicy zaawansowani\",\"operatorzy kopii zapasowych\"]'),
(643, 2, 'Protokołem połączeniowym zapewniającym niezawodne dostarczenie danych jest protokół', '2', NULL, '[\"ARP\",\"UDP\",\"TCP\",\"IPX\"]'),
(644, 2, 'Zasady filtracji ruchu sieciowego firewall są definiowane w postaci', '0', NULL, '[\"reguł\",\"serwisów\",\"plików CLI\",\"kontroli pasma zajętości\"]'),
(645, 2, 'Które polecenie w systemach operacyjnych Windows, jest stosowane do wyświetlania konfiguracji interfejsów sieciowych?', '3', NULL, '[\"hold\",\"tracert\",\"ifconfig\",\"ipconfig\"]'),
(646, 2, 'Który protokół zapewnia szyfrowane połączenia?', '0', NULL, '[\"SSH\",\"DNS\",\"DHCP\",\"TELNET\"]'),
(647, 2, 'Skrót MAN oznacza sieć', '1', NULL, '[\"lokalną\",\"miejską\",\"rozległą\",\"kampusową\"]'),
(648, 2, 'Na rysunku przedstawiono kabel', '3', 'e13/242.jpg', '[\"U/UTP\",\"F/STP\",\"U/FTP\",\"S/FTP\"]'),
(649, 2, 'Który protokół komunikacyjny wykorzystuje port 53?', '1', NULL, '[\"FTP\",\"DNS\",\"HTTP\",\"SMTP\"]'),
(650, 2, 'Ile domen kolizyjnych występuje w sieci pokazanej na rysunku?', '0', 'e13/246.jpg', '[\"1\",\"4\",\"5\",\"6\"]'),
(651, 2, 'Medium transmisyjne odporne na zakłócenia elektromagnetyczne i atmosferyczne to', '0', NULL, '[\"światłowód\",\"skrętka typu UTP\",\"gruby kabel koncentryczny\",\"cienki kabel koncentryczny\"]'),
(652, 2, 'Na rysunku przedstawiono patchpanel - nieekranowany panel krosowy kategorii 5e, wyposażony w złącza szczelinowe typu LSA. Do montażu (zaszywania) kabli w złącza szczelinowe należy użyć', '2', 'e13/252.jpg', '[\"narzędzia zaciskowego 8P8C\",\"narzędzia zaciskowego BNC\",\"narzędzia uderzeniowego\",\"narzędzia JackRapid\"]'),
(653, 2, 'Odległość toru nieekranowanego kabla sieciowego od oświetleniowej instalacji elektrycznej powinna wynosić minimum ', '1', NULL, '[\"20 cm\",\"30 cm\",\"40 cm\",\"50 cm\"]'),
(654, 2, 'Dopuszczalny promień zgięcia podczas instalacji kabla U/UTP kat.5E wynosi', '3', NULL, '[\"dwie średnice kabla \",\"cztery średnice kabla\",\"sześć średnic kabla \",\"osiem średnic kabla \"]'),
(655, 2, 'W sieci o adresie 192.168.20.0 zastosowano maskę podsieci 255.255.255.248. Ile adresów IP będzie dostępnych dla urządzeń?', '3', NULL, '[\"1022\",\"510\",\"14\",\"6\"]'),
(656, 2, 'Który z adresów IP należy do klasy A?', '0', NULL, '[\"119.0.0.1\",\"192.0.2.1\",\"134.16.0.1\",\"169.255.2.1\"]'),
(657, 2, 'Adres planowanej sieci należy do klasy C. Sieć została podzielona na 4 podsieci po 62 urządzenia w każdej podsieci. Która z poniższych masek jest odpowiednia do planowanego zadania?', '1', NULL, '[\"255.255.255.128\",\"255.255.255.192\",\"255.255.255.224\",\"255.255.255.240\"]'),
(658, 2, 'Do pomiaru tłumienia łącza światłowodowego w dwóch oknach transmisyjnych 1310 nm i 1550 nm należy użyć', '0', NULL, '[\"miernika mocy optycznej\",\"rejestratora cyfrowego\",\"reflektometru TDR\",\"testera UTP\"]'),
(659, 2, 'Który typ routingu najlepiej zastosować w rozbudowanych, szybko zmieniających się sieciach?', '3', NULL, '[\"Lokalny\",\"Statyczny\",\"Zewnętrzny\",\"Dynamiczny\"]'),
(660, 2, 'Najczęściej stosowany kodek mowy podczas konfiguracji bramki VoIP to', '2', NULL, '[\"AC3\",\"GSM\",\"G.711\",\"A.512\"]'),
(661, 2, 'Polecenie za pomocą którego można uzyskać informacje o aktualnych połączeniach TCP oraz informacje o źródłowych i docelowych portach, to', '1', NULL, '[\"ping\",\"netstat\",\"lookup\",\"ipconfig\"]'),
(662, 2, 'Polecenie umożliwiające poznanie adresów fizycznych dla kart sieciowych w systemie to', '1', NULL, '[\"pathping\",\"getmac\",\"arp -a\",\"ping\"]'),
(663, 2, 'Do utworzenia woluminu RAID 5 w serwerze potrzeba minimum', '1', NULL, '[\"2 dyski\",\"3 dyski\",\"4 dyski\",\"5 dysków\"]'),
(664, 2, 'Aby przeprowadzić ręczną konfigurację interfejsu sieciowego w systemie LINUX należy się posłużyć poleceniem', '1', NULL, '[\"eth0\",\"ifconfig\",\"ipconfig\",\"route add\"]'),
(665, 2, 'W systemie Windows Serwer utworzenie ukrytego, udostępnionego katalogu wymaga dopisania na końcu nazwy katalogu symbolu', '3', NULL, '[\"@\",\"%\",\"&\",\"$\"]'),
(666, 2, 'Konfiguracja usług na serwerze realizowana jest poprzez', '0', NULL, '[\"role i funkcje\",\"panel sterowania\",\"kontroler domeny\",\"Active Directory\"]'),
(667, 2, 'Zgodnie z modelem TCP/IP protokoły DNS, FTP oraz SMTP, należą do warstwy', '3', NULL, '[\"dostępu do sieci\",\"transportowej\",\"internetowej\",\"aplikacji\"]'),
(668, 2, 'Wpisując w przeglądarce internetowej adres www.egzamin.pl użytkownik nie ma dostępu do strony WWW, natomiast wpisanie adresu 211.0.12.41 pozwala otworzyć tę stronę. Przyczyną tego problemu jest brak skonfigurowanego serwera', '3', NULL, '[\"WWW\",\"DHCP\",\"SQL\",\"DNS\"]'),
(669, 2, 'Aby chronić komputery w sieci lokalnej przed nieautoryzowanym dostępem oraz atakami typu DoS należy zainstalować i skonfigurować', '0', NULL, '[\"zaporę ogniową\",\"filtr antyspamowy\",\"program antywirusowy\",\"blokadę okienek pop-up\"]'),
(670, 2, 'Przechowywanie kopii często odwiedzanych stron oraz zwiększenie bezpieczeństwa dzięki odfiltrowywaniu określonych zawartości stron sieci Web można uzyskać poprzez', '2', NULL, '[\"instalację programu antywirusowego i najnowszą bazę wirusów\",\"korzystanie z systemu z uprawnień administratora\",\"konfigurację serwera pośredniczącego proxy\",\"automatyczne wyłączenie plików cookies\"]'),
(671, 2, 'Która z topologii fizycznych sieci komputerowej jest przedstawiona na rysunku?', '0', 'e13/281.jpg', '[\"Siatki\",\"Gwiazdy\",\"Magistrali\",\"Pierścienia\"]'),
(672, 2, 'Zgodnie ze standardem 802.3u sieci FastEthernet 100Base-FX wykorzystuje', '2', NULL, '[\"przewód UTP kat. 5\",\"przewód UTP kat. 6\",\"światłowód wielomodowy\",\"światłowód jednomodowy\"]'),
(673, 2, 'Bezpołączeniowy protokół warstwy transportowej to', '1', NULL, '[\"ARP\",\"UDP\",\"TCP\",\"SSH\"]'),
(674, 2, 'Które urządzenie przedstawia rysunek?', '2', 'e13/288.jpg', '[\"Hub\",\"Switch\",\"Access Point\",\"Bramka VoIP\"]'),
(675, 2, 'Które urządzenie sieciowe działa w warstwie fizycznej modelu ISO/OSI, przesyłając sygnał z jednego portu na wszystkie pozostałe porty?', '2', NULL, '[\"Modem\",\"Przełącznik\",\"Koncentrator\",\"Karta sieciowa\"]'),
(676, 2, 'Które medium transmisyjne zapewnia separację galwaniczną pomiędzy systemami transmisji danych?', '0', NULL, '[\"Światłowód\",\"Skrętka ekranowana\",\"Skrętka nieekranowana\",\"Przewód koncentryczny\"]'),
(677, 2, 'Urządzenie przedstawione na rysunku to', '2', 'e13/295.jpg', '[\"Zaciskarka wtyków RJ45\",\"Tester długości okablowania\",\"Tester diodowy przewodu UTP\",\"Narzędzie uderzeniowe typu krone\"]'),
(678, 2, 'Do której klasy adresów IP należy adres 130.140.0.0?', '1', NULL, '[\"Do klasy A\",\"Do klasy B\",\"Do klasy C\",\"Do klasy D\"]'),
(679, 2, 'Ile hostów można zaadresować w podsieci o adresie 192.168.10.0/25?', '2', NULL, '[\"62\",\"64\",\"126\",\"128\"]'),
(680, 2, 'Rysunek przedstawia konfigurację urządzenia WiFi. Wskaż, które stwierdzenie dotyczące konfiguracji jest prawdziwe:', '1', 'e13/299.jpg', '[\"Urządzenia w sieci mają adresy klasy A\",\"Filtrowanie adresów MAC jest wyłączone\",\"W tym momencie w sieci WiFi pracuje 7 urządzeń\",\"Dostęp do sieci bezprzewodowej jest dozwolony wyłącznie dla siedmiu urządzeń\"]'),
(681, 2, 'Aby sprawdzić adres fizyczny karty sieciowej, w wierszu poleceń systemu operacyjnego Microsoft Windows należy wpisać polecenie', '3', NULL, '[\"get mac\",\"ifconfig -a\",\"show mac\",\"ipconfig /all\"]'),
(682, 2, 'W wierszu poleceń w systemie operacyjnym zostało wydane polecenie nslookup. Jaka informację uzyskano?', '2', 'e13/303.jpg', '[\"Adres IP hosta\",\"Domyślną bramę\",\"Adres serwera DNS\",\"Adres serwera DHCP\"]'),
(683, 2, 'Które polecenie w systemie Linux umożliwia sprawdzenie adresu IP przypisanego do interfejsu sieciowego?', '0', NULL, '[\"ifconfig\",\"ipconfig\",\"msconfig\",\"tcpconfig\"]'),
(684, 2, 'Które polecenie wiersza poleceń systemu operacyjnego Microsoft Windows Wyświetla informacje  dotyczące wszystkich zasobów udostępnionych na komputerze lokalnym?', '2', NULL, '[\"net file\",\"net print\",\"net share\",\"net session\"]'),
(685, 2, 'Która usługa musi byc uruchomiona na serwerze by stacja robocza pobierała automatycznie adres IP?', '2', NULL, '[\"DNS\",\"WINS\",\"DHCP\",\"PROXY\"]'),
(686, 2, 'Wskaż nieprawidłowe stwierdzenie dotyczące Active Directory:', '3', NULL, '[\"W Active Directory informacje grupowane są hierarchiczne.\",\"Domeny zorganizowane hierarchicznie mogą tworzyć strukturę drzewa\",\"Active Directory to usługa katalogowa w sieciowych systemach operacyjnych firmy Microsoft\",\"Active Directory to usługa służąca do monitorowania użycia limitów dyskowych aktywnych katalogów\"]'),
(687, 2, 'Którym poleceniem w systemie Linux można założyć uzytkowników?', '2', NULL, '[\"usersadd\",\"usermod\",\"useradd\",\"net user\"]'),
(688, 2, 'Które polecenie w systemie operacyjnym Linux umożliwia przypisanie istniejącego konta użytkownika nowak do grupy technikum?', '2', NULL, '[\"groups -g technikum nowak\",\"useradd -g technikum nowak\",\"usermod -g technikum nowak\",\"usergroup -g technikum nowak\"]'),
(689, 2, 'Który z protokołów jest protokołem warstwy aplikacji w modelu ISO/OSI?', '0', NULL, '[\"FTP\",\"ARP\",\"UDP\",\"ICMP\"]'),
(690, 2, 'W systemie Linux ustawiono prawa dostepu do folderu określone w postaci ciągu znaków rwx--x--x. Jakiej wartości numerycznej odpowiadają te prawa?', '1', NULL, '[\"777\",\"711\",\"621\",\"543\"]'),
(691, 2, 'Hosty A i B nie komunikują się z hostem C. Między hostami A i B komunikacja jest prawidłowa. Co jest przyczyną braku komunikacji między hostami A i C oraz B i C?', '0', 'e13/318.jpg', '[\"Adresy IP należą do różnych podsieci\",\"Host C ma źle ustawioną bramę domyślną\",\"Adres IP hosta C jest adresem rozgłoszeniowym\",\"Switch, do którego są podpięte hosty, jest wyłączony\"]'),
(692, 2, 'Która czynność zabezpieczy dane przesyłane w sieci przed działaniem sniffera?', '2', NULL, '[\"korzystanie z antydialera\",\"zmiana hasła użytkownika\",\"szyfrowanie danych w sieci\",\"skanowanie programem antywirusowym\"]'),
(693, 2, 'Narzędzie iptables w systemie Linux służy do', '1', NULL, '[\"konfiguracji karty sieciowej\",\"konfiguracji zapory sieciowej\",\"konfiguracji serwera pocztowego\",\"konfiguracji zdalnego dostępu do serwera\"]'),
(694, 2, 'Norma dotycząca okablowania strukturalnego to', '3', NULL, '[\"ISO 9001\",\"IEEE 1394\",\"IEC 60364\",\"TIA/EIA-568-B\"]'),
(695, 2, 'Protokołem odpowiedzialnym za wykrywanie i eliminowanie kolizji w sieciach Ethernet jest', '3', NULL, '[\"WINS\",\"IPX/SPX\",\"NetBEUI\",\"CSMA/CD\"]'),
(696, 2, 'Urządzenie sieciowe pracujące w trzeciej warstwie modelu ISO/OSI, operującej na adresach IP, to', '1', NULL, '[\"hub\",\"router\",\"bridge\",\"repeater\"]'),
(697, 2, 'Która z cech charakteryzuje przełącznik sieciowy?', '1', NULL, '[\"Używa protokołu EIGRP\",\"Z otrzymanych ramek odczytuje adresy MAC\",\"Operuje na porcjach danych zwanych segmentami\",\"Z przesyłanych pakietów odczytuje docelowe adresy IP\"]'),
(698, 2, 'Wymiana koncentratorów na przełączniki w sieci Ethernet spowoduje', '1', NULL, '[\"zmianę topologii sieci\",\"zmniejszenie ilości kolizji\",\"konieczność zmiany adresów IP\",\"zwiększenie domeny rozgłoszeniowej\"]'),
(699, 2, 'Które urządzenie sieciowe pozwala połączyć sieć LAN z WAN?', '1', NULL, '[\"Hub\",\"Router\",\"Switch\",\"Repeater\"]'),
(700, 2, 'Aby w budowanej sieci komputerowej zapewnić najmniejszy wpływ zakłóceń elektromagnetycznych na przesyłany sygnał należy zastosować', '0', NULL, '[\"światłowód\",\"ekranowaną skrętkę\",\"gruby przewód koncentryczny\",\"cienki przewód koncentryczny\"]'),
(701, 2, 'Które medium transmisyjne należy zastosować, aby połączyć dwa punkty dystrybucyjne odległe od siebie o 600m?', '0', NULL, '[\"światłowód\",\"skrętkę STP\",\"skrętke UTP\",\"przewód koncentryczny\"]'),
(702, 2, 'W sieci Ethernet 100Base-TX do transmisji danych wykorzystywane są żyły kabla UTP dołączone do pinów', '3', NULL, '[\"4,5,6,7\",\"1,2,5,6\",\"1,2,3,4\",\"1,2,3,6\"]'),
(703, 2, 'Komputer ma adres IP 192.168.0.1, maska podsieci to 255.255.255.0. Który adres jest adresem rozgłoszeniowym podsieci, do której należy ten komputer?', '3', NULL, '[\"192.168.0.31\",\"192.168.0.63\",\"192.168.0.127\",\"192.168.0.255\"]'),
(704, 2, 'Router na interfejsie LAN ma przypisany adres IP 192.168.50.1. Został on tak skonfigurowany, że komputerom przydziela się wszystkie dostępne adresy IP w sieci 192.168.50.0 z maską 255.255.255.0. Ile maksymalnie komputerów może pracować w takiej sieci?', '1', NULL, '[\"254\",\"253\",\"256\",\"255\"]'),
(705, 2, 'Na rysunku podano podstawową informację o konfiguracji karty sieciowej. Do której klasy adresów IP należy adres przypisany tej karcie?', '2', 'e13/337.jpg', '[\"Klasy A\",\"Klasy B\",\"Klasy C\",\"Klasy D\"]'),
(706, 2, 'Którą maskę należy zastosować, aby sieć o adresie 192.168.1.0 podzielić na 4 podsieci?', '2', NULL, '[\"255.255.255.0\",\"255.255.255.128\",\"255.255.255.192\",\"255.255.255.224\"]');
INSERT INTO `questions` (`id`, `exam`, `q`, `ans`, `i`, `at`) VALUES
(707, 2, 'Które polecenie jest stosowane do monitorowania lokalnych połączeń?', '3', NULL, '[\"dir\",\"host\",\"route\",\"netstat\"]'),
(708, 2, 'Rezultat wykonania którego polecenia z systemu Windows przedstawia rysunek?', '1', 'e13/345.jpg', '[\"ping www.onet.pl\",\"tracert www.onet.pl\",\"netstat www.onet.pl\",\"traceroute www.onet.pl\"]'),
(709, 2, 'Który z sieciowych systemów operacyjnych jest udostępniany na licencji GNU?', '1', NULL, '[\"Unix\",\"Linux\",\"OS X Server\",\"Windows Server 2012\"]'),
(710, 2, 'Serwerem poczty e-mail jest', '0', NULL, '[\"Postfix\",\"MySQL\",\"Firebird\",\"PostgreSQL\"]'),
(711, 2, 'Podstawowy mechanizm ochrony danych w sieci komputerowej przed nieuprawnionym dostępem to', '3', NULL, '[\"wykonywanie kopii danych\",\"stosowanie macierzy dyskowych\",\"generowanie sum kontrolnych plików\",\"autoryzacja dostępu do zasobów serwera\"]'),
(712, 2, 'Na rysunku przedstawiono zrzut ekranu z konfiguracji strefy DMZ na routerze. Włączenie opcji \"Enable DMZ\" spowoduje, że komputer o adresie IP 192.168.0.106', '3', 'e13/355.jpg', '[\"utraci dostęp do internetu\",\"będzie chroniony firewallem\",\"zostanie ukryty w sieci lokalnej\",\"będzie publicznie widoczny w Internecie\"]'),
(713, 2, 'Poniżej przedstawiono fragment pliku konfiguracyjnego usługi serwerowej w systemie Linux. Jest to usługa', '3', 'e13/356.jpg', '[\"TFTP\",\"SSH2\",\"DDNS\",\"DHCP\"]'),
(714, 2, 'Użytkownik komputera testujący połączenia sieciowe poleceniem ping otrzymał wynik jak na rysunku. Co jest przyczyną braku odpowiedzi serwera przy pierwszej probie, przy założeniu, że domena wp.pl ma adres 212.77.100.101?', '2', 'e13/359.jpg', '[\"Błędny adres IP przepisany karcie sieciowej.\",\"Brak przypisanego karcie sieciowej serwera DHCP.\",\"Brak adresów serwera DNS w konfiguracji karty sieciowej.\",\"Brak adresu domyślnej bramy w konfiguracji karty sieciowej.\"]'),
(715, 2, 'Który rodzaj macierzy dyskowych oferuje tzw. mirroring dysków?', '1', NULL, '[\"RAID-0\",\"RAID-1\",\"RAID-3\",\"RAID-5\"]'),
(716, 2, 'W sieci lokalnej protokołem dynamicznej konfiguracji adresów IP jest ', '2', NULL, '[\"FTP\",\"DNS\",\"DHCP\",\"TCP/IP\"]'),
(717, 2, 'Jeśli wydanie komendy ping 127.0.0.1 skutkuje brakiem odpowiedzi, to', '3', NULL, '[\"w sieci nie działa serwer DHCP.\",\"w sieci nie działa system DNS lub podano jego błędny adres.\",\"komputer o adresie 127.0.0.1 z sieci lokalnej, aktualnie jest wyłączony.\",\"karta sieciowa komputera, z którego ping został wysłany nie działa i wystąpił błąd w konfiguracji stosu TCP/IP\"]'),
(718, 2, 'Administrator nadający adresy prywatne w klasie C, z maską 24 bitową dla komputerów w sieci lokalnej, wybierze zakres', '3', NULL, '[\"172.16.0.1 - 172.16.255.254\",\"172.168.0.1 - 172.168.255.254\",\"192.168.0.1 - 192.168.10.254\",\"192.168.0.1 - 192.168.0.254\"]'),
(719, 2, 'Najlepszym zabezpieczeniem sieci bezprzewodowej jest', '3', NULL, '[\"protokół SSH\",\"protokół WPA\",\"protokół WEP\",\"protokół WPA2\"]'),
(720, 2, 'Aby podłączyć do Internetu sieć lokalną, działającą w oparciu o adresy prywatne, należy zastosować', '3', NULL, '[\"koncentrator\",\"regenerator\",\"przełącznik\",\"router\"]'),
(721, 2, 'W architekturze sieci lokalnych typu klient-serwer', '3', NULL, '[\"żaden z komputerów nie pełni roli nadrzędnej w stosunku do pozostałych\",\"wszystkie komputery klienckie mają dostęp do zasobów komputerowych\",\"każdy komputer zarówno udostępnia jak i korzysta z zasobów innych komputerów\",\"wyróżnione komputery pełnią rolę serwerów udostępniających zasoby, a pozostałe komputery z tych zasobów korzystają\"]'),
(722, 2, 'Kontrolę poprawności przesyłania danych w sieciach Ethernet zapewnia protokół', '1', NULL, '[\"IP\",\"TCP\",\"UDP\",\"HTTP\"]'),
(723, 2, 'Urządzenie przedstawione na rysunku to', '2', 'e13/373.jpg', '[\"ruter\",\"wtórnik\",\"koncentrator\",\"bramka VoIP\"]'),
(724, 2, 'Zastosowanie którego urządzenia może być przyczyną zwiększenia liczby kolizji pakietów w sieci?', '3', NULL, '[\"Mostu\",\"Rutera\",\"Przełącznika\",\"Koncentratora\"]'),
(725, 2, 'Rysunek przedstawia symbol graficzny', '2', 'e13/375.jpg', '[\"rutera\",\"mostu\",\"przełącznika\",\"punktu dostępowego\"]'),
(726, 2, 'Które urządzenie należy zastosować do podziału domeny rozgłoszeniowej?', '1', NULL, '[\"Most\",\"Ruter\",\"Przełącznik\",\"Koncentrator\"]'),
(727, 2, 'Jaki będzie łączny koszt materiałów służących do wykonania 20 kabli połączeniowych typu patchcord o długości 1,5m każdy, jeśli 1 metr bieżącego kabla kosztuje 1zł, a wtyk 50 gr?', '2', NULL, '[\"30 zł\",\"40 zł\",\"50 zł\",\"60 zł\"]'),
(728, 2, 'Kabel typu skrętka, posiadający każdą parę przewodów w osobnym ekranie z folii, przy czym wszystkie przewody znajdują się w ekranie z folii, jest oznaczony symbolem', '3', NULL, '[\"S/UTP\",\"F/UTP\",\"S/FTP\",\"F/FTP\"]'),
(729, 2, 'Który standard sieci Ethernet należy zastosować przy połączeniu bezpośrednim urządzeń sieciowych oddalonych od siebie o 1 km?', '3', NULL, '[\"10GBase-T\",\"10GBase-SR\",\"1000Base-SX\",\"1000Base-LX\"]'),
(730, 2, 'Do zarobienia końcówek kabla UTP jest stosowany wtyk', '2', NULL, '[\"DVI\",\"BNC\",\"8P8C\",\"RS232\"]'),
(731, 2, 'Jaki jest adres sieci, w której pracuje host o adresie IP 10.10.10.6 klasy A?', '0', NULL, '[\"10.0.0.0\",\"10.10.0.0\",\"10.10.10.255\",\"10.255.255.255\"]'),
(732, 2, 'Maska w postaci pełnej podsieci o prefiksie /25 to', '0', NULL, '[\"255.255.255.128\",\"255.255.255.192\",\"255.255.255.224\",\"255.255.255.240\"]'),
(733, 2, 'Aby zwiększyć bezpieczeństwo zasobów sieciowych administrator sieci komputerowej w firmie otrzymał polecenie podzielenia istniejącej lokalnej sieci komputerowej na 16 podsieci. Dotychczasowa sieć miała adres IP 192.168.20.0 z maską 255.255.255.0. Którą maskę sieci powinien zastosować administrator?', '2', NULL, '[\"255.255.255.192\",\"255.255.255.224\",\"255.255.255.240\",\"255.255.255.248\"]'),
(734, 2, 'Tester okablowania strukturalnego pozwala sprawdzić', '3', NULL, '[\"liczbę przełączników w sieci\",\"liczbę komputerów w sieci\",\"obciążenie ruchu sieciowego\",\"mapę połączeń\"]'),
(735, 2, 'Które polecenie w systemie operacyjnym Linux jest stosowane do wyświetlania konfiguracji interfejsów sieciowych?', '2', NULL, '[\"ping\",\"tracert\",\"ifconfig\",\"ipconfig\"]'),
(736, 2, 'Najskuteczniejszą metodą zabezpieczenia domowej sieci Wi-Fi jest', '3', NULL, '[\"zmiana adresu MAC rutera\",\"zmiana identyfikatora SSID\",\"stosowanie szyfrowania WEP\",\"stosowanie szyfrowania WPA-PSK\"]'),
(737, 2, 'Serwer obsługujący żądania protokołu komunikacyjnego HTTP to serwer', '3', NULL, '[\"DNS\",\"DHCP\",\"FTP\",\"WWW\"]'),
(738, 2, 'Który z wymienionych protokołów jest protokołem działającym w warstwie aplikacji?', '0', NULL, '[\"FTP\",\"UDP\",\"ARP\",\"TCP\"]'),
(739, 2, 'Protokół umożliwiający bezpieczną, zdalną pracę na serwerze to', '0', NULL, '[\"SSH\",\"POP3\",\"SMTP\",\"TELNET\"]'),
(740, 2, 'Liczba 22 użyta w adresie http://www.adres_serwera.pl:22 oznacza numer', '0', NULL, '[\"portu, inny od standardowego numeru dla danej usługi\",\"aplikacji, do której kierowane jest zapytanie\",\"sekwencyjny pakietu przekazującego dane\",\"PID procesu uruchomionego na serwerze\"]'),
(741, 2, 'Który program należy zainstalować na serwerze internetowym z systemem Linux, aby można było korzystać z baz danych?', '3', NULL, '[\"sshd\",\"httpd\",\"vxftpd\",\"MySqld\"]'),
(742, 2, 'Atak DDoS (ang. Disributed Denial of Service) na serwer spowoduje', '3', NULL, '[\"przechwycenie pakietów sieciowych\",\"podmianę pakietów przesyłanych przez sieć\",\"zbieranie informacji na temat atakowanej sieci\",\"przeciążenie aplikacji serwującej określono dane\"]'),
(743, 2, 'Podstawową metodą zabezpieczenia sieci komputerowej przed atakiem z zewnątrz jest stosowanie', '1', NULL, '[\"serwera Proxy\",\"zapory sieciowej\",\"blokady portu 80\",\"programu antywirusowego\"]'),
(744, 2, 'Do monitorowania transmisji danych w sieci komputerowej należy zastosować program typu', '0', NULL, '[\"sniffer\",\"firmware\",\"debugger\",\"kompilator\"]'),
(745, 2, 'Rysunek przedstawia fizyczną topologię', '2', 'e13/410.jpg', '[\"Szyny\",\"Drzewa\",\"Gwiazdy\",\"Magistrali\"]'),
(746, 2, 'Ile domen kolizyjnych i rozgłoszeniowych jest widocznych na schemacie?', '1', 'e13/411.jpg', '[\"9 domen kolizyjnych i 1 domena rozgłoszeniowa\",\"9 domen kolizyjnych i 4 domeny rozgłoszeniowe\",\"1 domena kolizyjna i 9 domen rozgłoszeniowych\",\"4 domeny kolizyjne i 9 domen rozgłoszeniowych\"]'),
(747, 2, 'Który rodzaj standardu zakończenia przewodu okablowania strukturalnego przedstawia rysunek?', '0', 'e13/412.jpg', '[\"T568A\",\"T568B\",\"EIA/TIA 569\",\"EIA/TIA 607\"]'),
(748, 2, 'Symbol którego urządzenia wskazuje na rysunek strzałka?', '3', 'e13/415.jpg', '[\"Koncentratora\",\"Przełącznika\",\"Serwera\",\"Routera\"]'),
(749, 2, 'Zdjęcie przedstawia', '2', 'e13/416.jpg', '[\"Router\",\"Most\",\"Przełącznik\",\"Punkt dostępowy\"]'),
(750, 2, 'Które stwierdzenie dotyczy sieci P2P - peer to peer?', '3', NULL, '[\"Jest siecią hierarchiczną \",\"Udostępnia wyłącznie zasoby dyskowe\",\"Wymaga centralnego serwera z dedykowanym oprogramowaniem\",\"Komputer w sieci może równocześnie pełnić rolę serwera i klienta\"]'),
(751, 2, 'Aby była możliwa komunikacja między sieciami VLAN, stosuje się', '0', NULL, '[\"Router\",\"Modem\",\"Koncentrator\",\"Punkt dostępowy\"]'),
(752, 2, 'Narzędzie na zdjęciu służy do', '3', 'e13/419.jpg', '[\"Ściągania izolacji\",\"Zaciskania wtyków RJ45\",\"Montażu modułu Krone w gniazdach\",\"Wykonania zakończeń kablowych w złączach LSA\"]'),
(753, 2, 'Który przyrząd należy wybrać do pomiarów mapy połączeń okablowania strukturalnego sieci lokalnej?', '2', NULL, '[\"Monitor sieciowy\",\"Reflektometr OTDR\",\"Analizator sieci LAN\",\"Analizator protokołów\"]'),
(754, 2, 'Ile hostów maksymalnie można zaadresować w sieci o adresie IP klasy B?', '2', NULL, '[\"254\",\"1022\",\"65534\",\"16777214\"]'),
(755, 2, 'Serwer DHCP przydziela adresy z sieci o adresie 192.168.0.0. Którą maskę należy przypisać sieci, aby serwer mógł nadać 510 urządzeniom pracującym w sieci po jednym adresie IP?', '2', NULL, '[\"255.255.255.192\",\"255.255.255.128\",\"255.255.254.0\",\"255.255.252.0\"]'),
(756, 2, 'Który adres IP jest adresem urządzenia pracującego w sieci 10.0.0.0/17?', '1', NULL, '[\"10.0.128.127\",\"10.0.127.128\",\"10.0.128.254\",\"10.0.254.128\"]'),
(757, 2, 'Który rodzaj rozbudowy serwera wymaga instalacji dodatkowych sterowników?', '3', NULL, '[\"Dodanie pamięci RAM\",\"Dodanie dysków fizycznych\",\"Montaż kolejnego procesora\",\"Montaż kolejnej karty sieciowej\"]'),
(758, 2, 'Która funkcja punktu dostępowego pozwala zabezpieczyć sieć bezprzewodową tak, aby tylko urządzenia o określonych adresach fizycznych mogły się do niej podłączyć?', '2', NULL, '[\"Nadanie SSID\",\"Uwierzytelnianie\",\"Filtrowanie adresów MAC\",\"Radius (Remote Authentication Dial In User Service)\"]'),
(759, 2, 'Który parametr w konfiguracji punktu dostępowego pełni rolę loginu wykorzystywanego podczas próby nawiązywania połączenia z punktem dostępowym sieci bezprzewodowej?', '3', 'e13/427.jpg', '[\"Channel Width\",\"Wireless Channel\",\"Transmission Rate\",\"Wireless Network Name\"]'),
(760, 2, 'Na podstawie analizy ruchu sieciowego, wskaż adres IP i numer portu, z którego host otrzymuje odpowiedź', '0', 'e13/428.jpg', '[\"46.28.247.123:80\",\"46.28.247.123:51383\",\"192.168.0.13:80\",\"192.168.0.13:51383\"]'),
(761, 2, 'Aby zagwarantować użytkownikom Active Directory możliwość logowania się i dostęp do zasobów tej usługi w przypadku awarii kontrolera domeny, należy', '0', NULL, '[\"zainstalować drugi kontroler domeny\",\"dodać wszystkich użytkowników do grupy administratorzy\",\"udostępnić wszystkim użytkownikom numer do Help Desk\",\"przekopiować wszystkie zasoby sieci na każdy komputer w domenie\"]'),
(762, 2, 'Rozgłaszaniem drukarek w sieci, kolejkowaniem zadań wydruku oraz przydzielaniem praw dostępu do drukarek zajmuje się serwer', '3', NULL, '[\"FTP\",\"DHCP\",\"plików \",\"wydruku\"]'),
(763, 2, 'Który zakres grupy domyślnie jest ustawiony dla nowo utworzonej grupy w kontrolerze domeny systemu Windows Serwer?', '0', NULL, '[\"Globalny \",\"Uniwersalny\",\"Dystrybucyjny\",\"Lokalny w domenie\"]'),
(764, 2, 'Które polecenie w systemie Linux umożliwia przydzielanie praw do plików i katalogów?', '2', NULL, '[\"gedit\",\"mkdir\",\"chmod\",\"adduser\"]'),
(765, 2, 'Do zdalnego zarządzania stacjami roboczymi nie jest stosowany', '1', NULL, '[\"pulpit zdalny\",\"program Wireshark\",\"program UltraVNC\",\"program TeamViewer\"]'),
(766, 2, 'Internetowy protokół pocztowy, który pozwala na zarządzanie wieloma folderami pocztowymi oraz pobieranie i operowanie na listach znajdujących się na zdalnym serwerze, to', '2', NULL, '[\"TCP\",\"POP3\",\"IMAP\",\"SMTP\"]'),
(767, 2, 'Które urządzenie w sieci lokalnej NIE DZIELI obszaru sieci komputerowej na domeny kolizyjne?', '3', NULL, '[\"Router\",\"Most\",\"Przełącznik\",\"Koncentrator\"]'),
(768, 2, 'Który z typów rekordów DNS w rodzinie systemów Windows Server definiuje alias (alternatywną nazwę) rekordu A dla kanonicznej (rzeczywistej) nazwy hosta?', '3', NULL, '[\"NS\",\"PTR\",\"AAAA\",\"CNAME\"]'),
(769, 2, 'Menedżer usług IIS (Internet Information Services) systemu Windows jest interfejsem graficznym służącym do konfigurowania serwera', '1', NULL, '[\"DNS\",\"WWW\",\"wydruku\",\"terminali\"]'),
(770, 2, 'W systemach Windows w celu ustalenia, gdzie w sieci zatrzymał się pakiet używa się komendy', '1', NULL, '[\"ping\",\"tracert\",\"ipconfig\",\"nslookup\"]'),
(771, 2, 'Co nie powinno być miejscem przechowywania kopii bezpieczeństwa danych znajdujących się na dysku twardym komputera?', '3', NULL, '[\"Pamięć USB\",\"Płyta CD/DVD\",\"Dysk zewnętrzny\",\"Inna partycja dysku tego komputera\"]'),
(772, 2, 'Którą fizyczną topologię sieci przedstawia rysunek?', '0', 'e13/449.jpg', '[\"Gwiazdy\",\"Magistrali\",\"Pełnej siatki\",\"Podwójnego pierścienia\"]'),
(773, 2, 'ARP (Adress Resolution Protocol) jest protokołem realizującym odwzorowanie adresu IP na', '1', NULL, '[\"adres IPv6\",\"adres sprzętowy\",\"nazwę komputera\",\"nazwę domenową\"]'),
(774, 2, 'Które urządzenie należy wybrać do pomiarów mapy połączeń okablowania strukturalnego sieci lokalnej?', '3', NULL, '[\"Monitor sieciowy\",\"Reflektometr OTDR\",\"Analizator protokołów\",\"Analizator sieci LAN\"]'),
(775, 2, 'Które urządzenie należy zastosować w sieci Ethernet, aby ograniczyć liczbę kolizji pakietów?', '0', NULL, '[\"Przełącznik\",\"Regenerator\",\"Koncentrator\",\"Bramkę VoIP\"]'),
(776, 2, 'Które polecenie systemu operacyjnego Linux pozwala sprawdzić aktualną konfigurację interfejsu sieciowego komputera?', '2', NULL, '[\"ping\",\"tracert\",\"ifconfig\",\"ipconfig\"]'),
(777, 2, 'Do wykonania sieci komputerowej w pomieszczeniu wykorzystano 25 metrów skrętki UTP, 5 gniazd typu RJ45 oraz odpowiednią liczbę wtyków RJ45 niezbędnych do zarobienia 5 kabli połączeniowych typu patchcord. Jaki jest koszt wykorzystanych materiałów do wykonania sieci? Ceny jednostkowe wykorzystanych materiałów są podane w tabeli.', '2', 'e13/461.jpg', '[\"50 zł\",\"75 zł\",\"80 zł\",\"90 zł\"]'),
(778, 2, 'Jaka jest maksymalna prędkość transmisji danych w sieci przy zastosowaniu skrętki kategorii 5e?', '0', NULL, '[\"1 Gb/s\",\"10 Gb/s\",\"10 Mb/s\",\"100 Mb/s\"]'),
(779, 2, 'Jaka jest kolejność przewodów we wtyku RJ45 zgodnie z sekwencją połączeń T568A?', '3', 'e13/463.jpg', '[\"A\",\"B\",\"C\",\"D\"]'),
(780, 2, 'Ile par przewodów w standardzie 100Base-TX jest przeznaczonych do transmisji danych w obu kierunkach?', '1', NULL, '[\"1 para\",\"2 pary\",\"3 pary\",\"4 pary\"]'),
(781, 2, 'Który zapis jest prawidłowym adresem IPv6?', '1', NULL, '[\"2001:DB8::BAF::FE94\",\"2001:DB8::BAF:FE94\",\"2001-DB8-BAF-FE94\",\"2001.DB8.BAF.FE94\"]'),
(782, 2, 'Który zapis jest postacią pełną maski o prefiksie 25?', '2', NULL, '[\"255.255.0.0\",\"255.255.255.0\",\"255.255.255.128\",\"255.255.200.192\"]'),
(783, 2, 'Administrator musi podzielić sieć o adresie 193.115.95.0 z maską 255.255.255.0 na 8 podsieci o takiej samej liczbie adresów. Którą maskę sieci powinien zastosować administrator?', '1', NULL, '[\"255.255.255.192\",\"255.255.255.224\",\"255.255.255.240\",\"255.255.255.248\"]'),
(784, 2, 'Który przyrząd jest stosowany do pomiarów długości i tłumienności przewodów miedzianych?', '3', NULL, '[\"Omomierz\",\"Woltomierz\",\"Miernik mocy\",\"Reflektometr TDR\"]'),
(785, 2, 'Urządzenia standardu 802.11g mogą pracować z maksymalną prędkością przesyłania danych do ', '1', NULL, '[\"11 Mb/s\",\"54 Mb/s\",\"108 Mb/s\",\"150 Mb/s\"]'),
(786, 2, 'Który z wymienionych mechanizmów zapewni najwyższy poziom bezpieczeństwa sieci bezprzewodowych standardu 802.11n?', '3', NULL, '[\"WPS (Wi-Fi Protected Setup)\",\"WEP (Wired Equivalent Privacy)\",\"WPA (Wi-Fi Protected Access)\",\"WPA2 (Wi-Fi Protected Access II)\"]'),
(787, 2, 'Co można zaobserwować przy pomocy programu Wireshark?', '3', NULL, '[\"Zwarcie przewodów\",\"Przerwy w okablowaniu\",\"Połączenia par przewodów\",\"Ruch pakietów sieciowych\"]'),
(788, 2, 'Administrator sieci komputerowej chce sprawdzić na komputerze z systemem operacyjnym Windows, które połączenia są obecnie zestawiane oraz porty, na których komputer nasłuchuje. W tym celu powinien zastosować polecenie ', '3', NULL, '[\"arp\",\"ping\",\"tracert\",\"netstat\"]'),
(789, 2, 'Którym poleceniem systemu Linux poprawnie skonfigurowano kartę sieciową, podając adres IP i maskę sieci dla interfejsu eth1?', '1', NULL, '[\"ifconfig eth1 192.168.1.0 netmask 255.255.255.0\",\"ifconfig eth1 192.168.1.1 netmask 255.255.255.0\",\"ifconfig eth1 192.168.1.0 netmask 0.255.255.255\",\"ifconfig eth1 192.168.1.255 netmask 255.255.255.0\"]'),
(790, 2, 'Który protokół jest stosowany do pobierania wiadomości e-mail z serwera poczty na komputer użytkownika', '1', NULL, '[\"FTP\",\"POP3\",\"SMTP\",\"HTTP\"]'),
(791, 2, 'Która usługa, stworzona przez firmę Microsoft, umożliwia tłumaczenie nazw komputerów na adresy internetowe?', '3', NULL, '[\"ARP\",\"DHCP\",\"IMAP\",\"WINS\"]'),
(792, 2, 'Protokół DNS odpowiada za', '0', NULL, '[\"Odwzorowanie nazw domenowych na adresy IP\",\"Odwzorowanie adresów fizycznych MAC na adresy IP\",\"Statyczne przydzielanie adresacji urządzeniom sieciowym\",\"Automatyczne przydzielanie adresacji urządzeniom sieciowym\"]'),
(793, 2, 'Protokołem połączeniowym warstwy transportowej modelu ISO/OSI jest', '0', NULL, '[\"TCP\",\"UDP\",\"ICMP\",\"SMTP\"]'),
(794, 2, 'Który z profili użytkownika ulega zmianie i jest przechowywany na serwerze dla klienta pracującego w sieci Windows?', '1', NULL, '[\"Lokalny\",\"Mobilny\",\"Tymczasowy\",\"Obowiązkowy\"]'),
(795, 2, 'Który protokół jest protokołem warstwy aplikacji modelu ISO/OSI?', '0', NULL, '[\"FTP\",\"TCP\",\"ARP\",\"ICMP\"]'),
(796, 2, 'Aby zainstalować serwer proxy w systemie Linux, należy zainstalować program', '0', NULL, '[\"Squid\",\"Samba\",\"Postfix\",\"Webmin\"]'),
(797, 2, 'Atak typu hijacking na serwer sieciowy charakteryzuje się', '3', NULL, '[\"przeciążeniem aplikacji udostępniającej określone dane\",\"łamaniem zabezpieczeń przed niedozwolonym użytkowaniem programów\",\"zbieraniem informacji na temat atakowanej sieci i szukaniem luk w sieci\",\"przejęciem kontroli nad połączeniem między komunikującymi się komputerami\"]'),
(798, 2, 'Co służy do zabezpieczenia komputera przed niepożądanym oprogramowaniem pochodzącym z Internetu?', '3', NULL, '[\"Protokół SSL\",\"Program sniffer\",\"Protokół HTTPS\",\"Program antywirusowy\"]'),
(799, 2, 'W której topologii fizycznej sieci każde urządzenie sieciowe ma dokładnie dwa połączenia, po jednym dla swoich najbliższych sąsiadów, a dane są przesyłane od jednego komputera do następnego w pętli?', '3', NULL, '[\"Siatki\",\"Drzewa\",\"Gwiazdy\",\"Pierścienia\"]'),
(800, 2, 'Który z protokołów jest bezpołączeniowym protokołem warstwy transportowej?', '3', NULL, '[\"FTP\",\"ARP\",\"TCP\",\"UDP\"]'),
(801, 2, 'IMAP jest protokołem', '0', NULL, '[\"odbioru poczty elektronicznej\",\"wysyłania poczty elektronicznej\",\"synchronizacji czasu z serwerami\",\"monitorowania urządzeń sieciowych\"]'),
(802, 2, 'Kabel typu skrętka, posiadający każdą parę przewodów w osobnym ekranie z folii, przy czym wszystkie przewody znajdują się w ekranie z folii, jest oznaczony symbolem', '3', NULL, '[\"S/UTP\",\"F/UTP\",\"S/FTP\",\"F/FTP\"]'),
(803, 2, 'W modelu hierarchicznym sieci, komputery użytkowników są elementami warstwy', '1', NULL, '[\"rdzenia\",\"dostępu\",\"dystrybucji\",\"szkieletowej\"]'),
(804, 2, 'Aby umożliwić wymianę danych pomiędzy siecią w pracowni, a siecią ogólnoszkolną o innej adresacji IP, należy wykorzystać', '0', NULL, '[\"ruter\",\"przełącznik\",\"koncentrator\",\"punkt dostępowy\"]'),
(805, 2, 'Jaki będzie koszt zakupu kabla UTP kat.5e przeznaczonego do budowy sieci komputerowej złożonej z 6 stanowisk komputerowych, w której średnia odległość stanowiska od przełącznika wynosi 9 m? Dla każdej linii kablowej należy uwzględnić 1 m zapasu kabla, a cena 1 metra kabla wynosi 1,50 zł.', '1', NULL, '[\"60,00 zł\",\"90,00 zł\",\"120,00 zł\",\"150,00 zł\"]'),
(806, 2, 'Przy budowie sieci przewodowej o maksymalnej szybkości transmisji 1 Gb/s, w której maksymalna odległość pomiędzy punktami sieci nie przekracza 100m, należy wykorzystać jako medium transmisyjne', '0', NULL, '[\"kabel UTP kategorii 5e\",\"fale radiowe o częstotliwości 5 GHz\",\"fale radiowe o częstotliwości 2,4 GHz\",\"kabel koncentryczny o średnicy 1/4 cala\"]'),
(807, 2, 'Zestaw narzędzi do montażu okablowania miedzianego typu \"skrętka\" w sieci lokalnej powinien zawierać', '3', NULL, '[\"komplet wkrętaków, narzędzie uderzeniowe, tester okablowania, lutownicę\",\"narzędzie uderzeniowe, nóż monterski, spawarkę światłowodową, tester okablowania\",\"ściągacz izolacji, zaciskarkę złączy modularnych, nóż monterski, miernik uniwersalny\",\"zaciskarkę złączy modularnych, ściągacz izolacji, narzędzie uderzeniowe, tester okablowania\"]'),
(808, 2, 'Przedstawiony na rysunku wtyk (złącze męskie modularne) jest zakończeniem kabla', '2', 'e13/504.jpg', '[\"światłowodowego\",\"koncentrycznego\",\"F/UTP\",\"U/UTP\"]'),
(809, 2, 'Parametrem określającym o ile zmniejszy się moc sygnału w danej parze przewodów po przejściu przez cały tor kablowy, jest', '1', NULL, '[\"długość\",\"tłumienie\",\"przenik zdalny\",\"przenik zbliżny\"]'),
(810, 2, 'Który błąd okablowania jest widoczny na wyświetlaczu testera pokazującego mapę połączeń żył kabla typu skrętka?', '1', 'e13/506.jpg', '[\"Zwarcie\",\"Rozwarcie\",\"Pary odwrócone\",\"Pary skrzyżowane\"]'),
(811, 2, 'Wskaż domyślną maskę dla adresu IP klasy B', '2', NULL, '[\"255.255.255.255\",\"255.255.255.0\",\"255.255.0.0\",\"255.0.0.0\"]'),
(812, 2, 'Który z podanych adresów jest adresem klasy C?', '3', NULL, '[\"125.9.3.234\",\"154.0.12.50\",\"176.18.5.26\",\"196.74.6.29\"]'),
(813, 2, 'Do ilu sieci należą komputery o podanych w tabeli adresach IP i standardowej masce sieci?', '2', 'e13/509.jpg', '[\"Jednej\",\"Dwóch\",\"Czterech\",\"Sześciu\"]'),
(814, 2, 'Ile maksymalnie komputerów może być zaadresowanych w podsieci o adresie 192.168.1.0/25?', '1', NULL, '[\"62\",\"126\",\"254\",\"510\"]'),
(815, 2, 'Polecenie systemu Windows stosowane do sprawdzenia trasy, po której są przesyłane pakiety w sieci, to ', '1', NULL, '[\"route\",\"tracert\",\"netstat\",\"ipconfig\"]'),
(816, 2, 'Którą z opcji menu przełącznika należy wybrać, by przywrócić mu ustawienia fabryczne?', '0', 'e13/513.jpg', '[\"Reset System\",\"Reboot Device\",\"Firmware Upgrade\",\"Save Configuration\"]'),
(817, 2, 'Zarządzanie pasmem (ang. bandwidth control) w przełączniku to usługa', '1', NULL, '[\"umożliwiająca zdalny dostęp do urządzenia\",\"pozwalająca ograniczyć przepustowość na wybranym porcie\",\"umożliwiająca łączenie przełączników równocześnie kilkoma łączami\",\"pozwalająca na przesyłanie danych z wybranego portu równocześnie do innego portu\"]'),
(818, 2, 'Które porty należy odblokować w zaporze sieciowej komputera, aby można było korzystać z zainstalowanej usługi FTP?', '0', NULL, '[\"20 i 21\",\"25 i 110\",\"53 i 137\",\"80 i 443\"]'),
(819, 2, 'Aby sygnały dwóch routerów w sieci WiFi standardu 802.11g nie zakłócały się wzajemnie, należy ustawić kanały o numerach', '1', NULL, '[\"1 i 5\",\"2 i 7\",\"3 i 6\",\"5 i 7\"]'),
(820, 2, 'Które cyfry należy wprowadzić na klawiaturze telefonu podłączonego do bramki VoIP po uprzednim wpisaniu *** by wprowadzić adres bramy domyślnej sieci?', '3', 'e13/518.jpg', '[\"01\",\"02\",\"03\",\"04\"]'),
(821, 2, 'W jaki sposób skonfigurować w systemie Windows Server 2008 ustawienia protokołu TCP/IP karty sieciowej, by komputer należał równocześnie do dwóch sieci lokalnych o różnych adresach IP?', '2', NULL, '[\"Wpisać dwa adresy serwerów DNS\",\"Zaznaczyć opcję \"Uzyskaj adres IP automatycznie\".\",\"Wpisać dwa adresy IP, korzystając z zakładki \"Zaawansowane\"\",\"Wpisać dwa adresy bramy, korzystając z zakładki \"Zaawansowane\"\"]'),
(822, 2, 'Którą usługę należy zainstalować na serwerze, by było możliwe korzystanie z nazw domenowych?', '1', NULL, '[\"AD\",\"DNS\",\"SNTP\",\"DHCP\"]'),
(823, 2, 'Do której grupy w systemie Windows Server 2008 należy przydzielić użytkownika odpowiedzialnego tylko za archiwizowanie danych przechowywanych na dysku serwera?', '2', NULL, '[\"Użytkownicy domeny\",\"Użytkownicy zaawansowani\",\"Operatorzy kopii zapasowych \",\"Użytkownicy pulpitu zdalnego\"]'),
(824, 2, 'Które polecenie systemu Windows Server 2008 umożliwia promowanie serwera do roli kontrolera domeny?', '2', NULL, '[\"gpedit\",\"gpresult\",\"dcpromo\",\"nslookup\"]'),
(825, 2, 'Zadaniem programu Wireshark jest', '1', NULL, '[\"zabezpieczenie komputera przed wirusami\",\"monitorowanie działania użytkowników sieci \",\"sprawdzanie wydajności elementów komputera\",\"zapobieganie dostępowi do komputera przez sieć\"]'),
(826, 2, 'Administrator chce udostępnić w sieci trzem użytkownikom należącym do grupy Serwisanci tylko folder C:instrukcje. Które z rozwiązań powinien zastosować?', '3', NULL, '[\"Udostępnić grupie Wszyscy dysk C: i ograniczyć liczbę równoczesnych połączeń do 3\",\"Udostępnić grupie Serwisanci dysk C: i nie ograniczać liczby równoczesnych połączeń\",\"Udostępnić grupie Wszyscy folder C:instrukcje i ograniczyć liczbę równoczesnych połączeń do 3\",\"Udostępnić grupie Serwisanci folder C:instrukcje i nie ograniczać liczby równoczesnych połączeń\"]'),
(827, 2, 'W technologii Ethernet protokół dostępu do nośnika CSMA/CD jest metodą z ', '2', NULL, '[\"unikaniem kolizji \",\"priorytetami żądań\",\"wykrywaniem kolizji\",\"przekazywaniem żetonu\"]'),
(828, 2, 'Które porty należy odblokować w ustawieniach zapory sieciowej na komputerze z zainstalowaną usługą serwera sieci Web?', '1', NULL, '[\"20 i 21\",\"80 i 443\",\"20 i 1024\",\"80 i 1024\"]'),
(829, 2, 'Do którego portu należy podłączyć kabel sieci zewnętrznej, by uzyskać pośredni dostęp do Internetu?', '3', 'e13/528.jpg', '[\"USB\",\"LAN\",\"PWR\",\"WAN\"]'),
(830, 2, 'Który z protokołów wykorzystuje porty 20 i 21?', '0', NULL, '[\"FTP\",\"DHCP\",\"WWW\",\"Telnet\"]'),
(831, 2, 'Jak jest nazywana transmisja dwukierunkowa w sieci Ethernet?', '3', NULL, '[\"Simplex\",\"Duosimplex\",\"Half duplex\",\"Full duplex\"]'),
(832, 2, 'Ile adresów IP jest potrzebnych do zaadresowania 4 komputerów podłączonych do przełącznika tak, aby mogły się komunikować ze sobą?', '2', NULL, '[\"2\",\"3\",\"4\",\"5\"]'),
(833, 2, 'Urządzeniem stosowanym do połączenia 6 komputerów w sieć lokalną jest:', '3', NULL, '[\"most\",\"serwer\",\"transceiver\",\"przełącznik\"]'),
(834, 2, 'Do którego urządzenia należy podłączyć komputery, aby pracowały w różnych domenach rozgłoszeniowych?', '1', NULL, '[\"Mostu\",\"Rutera\",\"Regeneratora\",\"Koncentratora\"]'),
(835, 2, 'Centralny punkt, z którego rozprowadzane jest okablowanie szkieletowe, to punkt', '3', NULL, '[\"pośredni\",\"abonencki\",\"dostępowy\",\"dystrybucyjny\"]'),
(836, 2, 'Ile maksymalnie urządzeń można zaadresować w sieci o adresacji IPv4 klasy C?', '1', NULL, '[\"126\",\"254\",\"2024\",\"65534\"]'),
(837, 2, 'Który adres IPv4 określa urządzenie pracujące w sieci o adresie 14.36.64.0/20?', '2', NULL, '[\"14.36.17.1\",\"14.36.48.1\",\"14.36.65.1\",\"14.36.80.1\"]'),
(838, 2, 'Który z adresów IPv4 wraz z prefiksem jest adresem sieci?', '1', NULL, '[\"46.18.10.19/30\",\"64.77.199.192/26\",\"208.99.255.134/28\",\"127.100.100.67/27\"]'),
(839, 2, 'Odpowiednikiem maski 255.255.252.0 jest prefiks', '0', NULL, '[\"/22\",\"/23\",\"/24\",\"/25\"]'),
(840, 2, 'Zmniejszenie liczby jedynek w masce umożliwi zaadresowanie', '2', NULL, '[\"większej liczby sieci i większej liczby urządzeń\",\"większej liczby sieci i mniejszej liczby urządzeń\",\"mniejszej liczby sieci i większej liczby urządzeń\",\"mniejszej liczby sieci i mniejszej liczby urządzeń\"]'),
(841, 2, 'Na rysunku jest przedstawiona konfiguracja', '0', 'e13/548.jpg', '[\"wirtualnych sieci\",\"sieci bezprzewodowej\",\"przekierowania portów\",\"rezerwacji adresów MAC\"]'),
(842, 2, 'Które określenie dotyczące ruterów jest prawdziwe?', '2', NULL, '[\"Pracują w warstwie łącza danych\",\"Pracują w warstwie transportowej\",\"Podejmują decyzje przesyłania danych na podstawie adresów IP\",\"Podejmują decyzje przesyłania danych na podstawie adresów MAC\"]'),
(843, 2, 'Które kanały najlepiej wybrać dla trzech sieci WLAN 2,4 GHz, aby wyeliminować ich wzajemne zakłócenia?', '1', NULL, '[\"2, 5, 7\",\"1, 6, 11\",\"1, 3, 12\",\"3, 6, 12\"]'),
(844, 2, 'Usługa, która pozwala na pobieranie i przesyłanie plików na serwer, to', '0', NULL, '[\"FTP\",\"DNS\",\"ICMP\",\"CP\"]'),
(845, 2, 'Domyślnie anonimowy dostęp do zasobów serwera FTP umożliwia', '2', NULL, '[\"pełne prawa dostępu\",\"tylko prawo do zapisu\",\"tylko prawo do odczytu\",\"prawa do odczytu i zapisu\"]'),
(846, 2, 'Serwer Windows z zainstalowaną usługą Active Directory nazywa się', '3', NULL, '[\"serwerem DHCP\",\"serwerem WWW\",\"serwerem plików\",\"kontrolerem domeny\"]'),
(847, 2, 'Usługa, za pomocą której można pracować zdalnie na komputerze z systemem Windows z innego komputera z systemem Windows podłączonego do tej samej sieci lub do Internetu, to', '2', NULL, '[\"FTP\",\"DHCP\",\"pulpit zdalny\",\"serwer plików\"]'),
(848, 2, 'Który protokół warstwy aplikacji jest stosowany do zarządzania urządzeniami sieciowymi za pośrednictwem sieci?', '3', NULL, '[\"FTP\",\"NTP\",\"MIME\",\"SNMP\"]'),
(849, 2, 'Który protokół służy do szyfrowanego terminalowego łączenia się ze zdalnym komputerem?', '2', NULL, '[\"SIP\",\"SSL\",\"SSH\",\"Telnet\"]'),
(850, 2, 'W której warstwie modelu ISO/OSI są stosowane adresy logiczne?', '1', NULL, '[\"Fizycznej\",\"Sieciowej\",\"Transportowej\",\"Łącza danych\"]'),
(851, 2, 'Ramka z danymi wysłanymi z komputera PC1 do serwera www znajduje się pomiędzy ruterem R1 a ruterem R2 (punkt A). Które adresy są w niej zawarte?', '0', 'e13/564.jpg', '[\"Źródłowy adres IP komputera PC1, docelowy adres IP serwera, adres źródłowy MAC rutera R1, adres docelowy MAC rutera R2\",\"Źródłowy adres IP komputera PC1, docelowy adres IP serwera, adres źródłowy MAC komputera PC1, adres docelowy MAC serwera\",\"Źródłowy adres IP rutera R1, docelowy adres IP rutera R2, adres źródłowy MAC komputera PC1, adres docelowy MAC serwera\",\"Źródłowy adres IP komputera PC1, docelowy adres rutera R2, adres źródłowy MAC komputera PC1, adres docelowy MAC serwera\"]'),
(852, 2, 'Która usługa pozwala rejestrować i rozpoznawać nazwy NetBIOS jako używane w sieci adresy IP?', '1', NULL, '[\"WAS\",\"WINS\",\"DHCP\",\"HTTPS\"]'),
(853, 2, 'Ataki mające na celu zatrzymanie działania aplikacji i procesów zachodzących w urządzeniu sieciowym to ataki typu', '0', NULL, '[\"DoS\",\"smurf\",\"zero-day\",\"spoofing\"]'),
(854, 2, 'Który zapis jest oznaczeniem adresu strony internetowej i przypisanego go niej portu?', '2', NULL, '[\"100.168.0.1:AH1\",\"100.168.0.1-AH1\",\"100.168.0.1:8080\",\"100.168.0.1-8080\"]'),
(855, 2, 'Rysunek przedstawia konfigurację karty sieciowej dla urządzenia o adresie IP 10.15.89.104/25. Wynika z niego, że', '3', 'e13/568.jpg', '[\"adres IP jest nieprawidłowy\",\"adres maski jest nieprawidłowy\",\"serwer DNS jest w tej samej podsieci co urządzenie\",\"adres domyślnej bramy jest z innej podsieci niż adres hosta\"]'),
(1017, 3, 'Którego polecenia nalezy użyć, aby wyraz TEKST został wyświetleny w kolorze czarnym w oknie przeglądarki internetowej? ', '2', NULL, '[\"<body color=\\\"black\\\">TEKST</font>\",\"<font color=\\\"czarny\\\">TEKST</font>\",\"<font color=\\\"#000000\\\">TEKST</font>\",\"<body bgcolor=\\\"black\\\">TEKST</body>\"]'),
(1018, 3, 'Jakiego znacznika należy użyć, aby przejść do kolejnej linii tekstu, nie tworząc akapitu na stronie interenetowej ?', '2', NULL, '[\"<p>\",\"</b>\",\"<br>\",\"</br>\"]'),
(1019, 3, 'Kaskadowe arkusze stylów tworzy się w celu ', '0', NULL, '[\"ułatwienia formatowania strony\",\"nadpisywania wartości znaczników już ustawionych na stronie\",\"połączenia struktury dokumentu strony z właściwą formą jego prezentacji\",\"blokowania jakichkolwiek zmian w wartościach znaczników już przypisanych w pliku CSS\"]'),
(1020, 3, 'Edytor spełniający założenia WYSIWYG musi umożliwiać ', '3', NULL, '[\"tworzenie podstawowej grafiki wektorowej\",\"publikację strony na serwerze poprzez wbudowanego klienta FTP\",\"obróbkę plików dźwiękowych przed umieszczeniem ich na stronie internetowej\",\"uzyskanie zbliżonego wyniku tworzenej strony do jej obrazu w przegladarce interenetowej\"]'),
(1021, 3, 'Jakiego formatu należy użyć do zapisu obrazu z kompresją stratną?', '3', NULL, '[\"GIF\",\"PNG\",\"PCX\",\"JPEG\"]'),
(1022, 3, 'Najprostszy sposób zamiany obiektu oznaczonego cyfrą 1 na obiekt oznaczony cyfrą 2 polega na', '3', 'e14/13.jpg', '[\"animowaniu obiektu\",\"zmianie warstwy obiektu\",\"narysowaniu docelowego obiektu\",\"geometrycznym transformowaniu obiektu\"]'),
(1023, 3, 'Jak posortowana będzie lista, utworzona ze wszystkich kolumn tabeli uczniowie i zawierająca uczniów ze średnią większą od 5, która zostanie zwrócona jako wynik przedstawionego zapytania?', '1', 'e14/18.jpg', '[\"Rosnąca według parametru klasa\",\"Malejąco według parametru klasa\",\"Rosnaco według parametru srednia\",\"Malejąco według parametru srednia\"]'),
(1024, 3, 'Który z obiektów relacyjnej bazy danych, będący kodem języka SQL, może być wywoływany w zapytaniach modyfikujących kolumny danych widoczne jako tabela, bez względu na to czy jest tworzony programowo, czy dynamicznie? ', '3', NULL, '[\"Reguła\",\"Wyzwalacz\",\"Procedura składowa\",\"Funkcja zdefiniowana\"]'),
(1025, 3, 'Jak nazywa się element bazy danych, za pomocą którego można jedynie odczytać dane z bazy, prezentując je w postaci tekstu lub wykresu?', '1', NULL, '[\"Tabela\",\"Raport\",\"Zapytanie \",\"Formularz\"]'),
(1026, 3, 'W programie Microsoft Access formą zabezpieczeń dostępu do danych związaną z tabelą i kwerendą jest ', '1', NULL, '[\"stosowanie makr\",\"przypisanie uprawnień\",\"określanie przestrzeni tabel\",\"wprowadzenie limitów przestrzeni dyskowej\"]'),
(1027, 3, 'Które z wymienionych osób odpowiadają za przygotowanie systemu bazy danych do pracy produkcyjnej w sposób ciągły, zarządzanie użytkownikami i instalowanie nowych wersji systemu bazodanowego?', '1', NULL, '[\"Projektanci narzędzi deweloperskich\",\"Administratorzy systemu bazy danych\",\"Administratorzy serwerów i sieci komputerowych\",\"Projektanci i programiści Systemu Zarządzania Bazą Danych.\"]'),
(1028, 3, 'Z jakimi mechanizmami nadawania zabezpieczeń, dającymi możliwości wykonywania operacji na bazie danych, związane są zagadnienia zarządzania kontami, użytkownikami i uprawnieniami?', '3', NULL, '[\"Z regułami \",\"Z atrybutami\",\"Z przywilejami obiektowymi\",\"Z przywilejami systemowymi\"]'),
(1029, 3, 'Metoda udostępniania bazy danych w programie Microsoft Access, dotycząca wszystkich obiektów bazy umieszczonych na dysku sieciowym i używanych jednocześnie przez różne osoby nosi nazwę', '0', NULL, '[\"folderu sieciowego\",\"serwera bazy danych \",\"dzielonej bazy danych\",\"witryny programu SharePoint\"]'),
(1030, 3, 'Jakie należy posiadać uprawnienia, aby wykonać i odtworzyć kopię zapasową bazy danych Microsoft SQL Server 2005 Express?', '3', NULL, '[\"Users\",\"Security users\",\"Użytkownik lokalny\",\"Administrator systemu\"]'),
(1031, 3, 'Typ zmiennej w języku JavaScript', '2', NULL, '[\"nie występuje \",\"jest tylko jeden\",\"następuje poprzez przypisanie wartości\",\"musi być zadeklarowany na początku skryptu\"]'),
(1032, 3, 'Zmienne typu int odnoszą się do liczb', '1', NULL, '[\"naturalnych\",\"całkowitych\",\"w notacji stałoprzecinkowej\",\"w notacji zmiennoprzecinkowej\"]'),
(1033, 3, 'Co definiuje w języku C++ przedstawiony fragment kodu?', '2', 'e14/31.jpg', '[\"Hierarchię zmiennych\",\"Trzy zmienne niepowiązane ze sobą\",\"Typ strukturalny składający się z trzech pól\",\"Kontakt pomiędzy zmiennymi globalnymi i lokalnymi\"]'),
(1034, 3, 'Sposób programowania, w którym ciąg poleceń (sekwencji instrukcji) przekazywanych komputerowi jest postrzegany jako program, nosi nazwę programowania ', '3', NULL, '[\"stanowego\",\"logicznego\",\"funkcyjnego\",\"imperatywnego\"]'),
(1035, 3, 'Jaki program komputerowy przekształca kod źródłowy, napisany w konkretnym języku programowania, na język komputera?', '1', NULL, '[\"Debugger\",\"Kompilator\",\"Edytor kodu źródłowego\",\"Środowisko programistyczne\"]'),
(1036, 3, 'Jak nazywa się program, który wykonuje instrukcje zawarte w kodzie źródłowym tworzonego programu bez uprzedniego generowania programu wynikowego?', '0', NULL, '[\"Interpreter\",\"Kompilator\",\"Konwerter kodu\",\"Konwerter języka\"]'),
(1037, 3, 'Który język skryptowy ogólnego przeznaczenia należy wykorzystać do tworzenia aplikacji WWW, zagnieżdżanych w języku HTML i uruchamianych po stronie serwera?', '2', NULL, '[\"C#\",\"Perl\",\"PHP\",\"JavaScript\"]'),
(1038, 3, 'Jak nazywa się technika umożliwiająca otwarcie połączenia klienta z serwerem i komunikację bez przeładowywania całej strony WWW w sposób asynchroniczny ?', '2', NULL, '[\"PHP\",\"XML\",\"AJAX\",\"VBScript\"]'),
(1039, 3, 'Jak nazywa się element oznaczony znakiem zapytania w strukturze platformy .NET, który umożliwia tworzenie własnych aplikacji z użyciem frameworków i zamianę kompilowanego kodu pośredniego na kod maszynowy procesora zainstalowanego w komputerze?', '3', 'e14/39.jpg', '[\"Infrastruktura językowa (CLI)\",\"Biblioteka klas bazowych (BCL)\",\"Wspólne środowisko programistyczne (CLP)\",\"Wspólne środowisko uruchomieniowe (CLR)\"]'),
(1040, 3, 'Co to jest DBMS?', '1', NULL, '[\"Strukturalny język zapytań kierowanych do bazy danych\",\"System zarządzania bazą danych \",\"Obiektowy język programowania do generowania stron www \",\"Kaskadowy arkusz stylów do opisu wyglądu strony www\"]'),
(1041, 3, 'W znaczniku <head> (w części <meta ... >) strony www NIE umieszcza się informacji dotyczącej', '2', NULL, '[\"autora\",\"kodowania\",\"typu dokumentu\",\"automatycznego odświeżania\"]'),
(1042, 3, 'Wskaż sposób, w jaki należy odwołać się do pliku default.css, jeśli index.html znajduje się bezpośrednio w katalogu Strona?', '0', 'e14/46.jpg', '[\"<link rel=\\\"stylsheet\\\" type=\\\"text/css\\\" href=\\\"./style/default.css\\\" />\",\"<link rel=\\\"stylsheet\\\" type=\\\"text/css\\\" href=\\\"C:/style/default.css\\\" />\",\"<link rel=\\\"stylsheet\\\" type=\\\"text/css\\\" href=\\\"...styledefault.css\\\" />\",\"<link rel=\\\"stylsheet\\\" type=\\\"text/css\\\" href=\\\"c:style/default.css\\\" />\"]'),
(1043, 3, 'Wskaż stwierdzenie, które jest prawdziwe dla następującej definicji stylu:', '1', 'e14/47.jpg', '[\"Jest to styl lokalny\",\"Zdefiniowano dwie klasy\",\"Akapit będzie transponowany na małe litery\",\"Odnośnik będzie pisany czcionką 14 punktów\"]'),
(1044, 3, 'Który z formatów NIE pozwala na zapis plików animowanych?', '1', NULL, '[\"GIF\",\"ACE\",\"SWF\",\"SVG\"]'),
(1045, 3, 'Proces walidacji strony internetowej to', '1', NULL, '[\"zespół działań mających na celu zwiększenie oglądalności\",\"sprawdzenie jej w celu wyeliminowania błędów\",\"publikowanie w sieci\",\"promocja strony\"]'),
(1046, 3, 'Które oprogramowanie NIE JEST systemem zarządzania treścią (CMS)?', '1', NULL, '[\"Joomla\",\"Apache\",\"Mambo\",\"WordPress\"]'),
(1047, 3, 'Wskaż prawidłową kolejność tworzenia bazy danych', '2', NULL, '[\"Określenie celu, utworzenie relacji, stworzenie tabel, normalizacja\",\"Określenie celu, normalizacja, utworzenie relacji, stworzenie tabel\",\"Określenie celu, stworzenie tabel, utworzenie relacji, normalizacja\",\"Określenie celu, normalizacja, stworzenie tabel, utworzenie relacji\"]'),
(1048, 3, 'Wskaż typ relacji pomiędzy tabelami: Tabela1 i Tabela3', '3', 'e14/55.jpg', '[\"Jeden do jednego\",\"Wiele do jednego\",\"Jeden do wielu\",\"Wiele do wielu\"]'),
(1049, 3, 'Którego ze słów kluczowych języka SQL należy użyć, aby wyeliminować duplikaty?', '1', NULL, '[\"LIKE\",\"DISTINCT\",\"ORDER BY\",\"GROUP BY\"]'),
(1050, 3, 'Które ze stwierdzeń prawidłowo charakteryzuje zdefiniowaną tabelę: CREATE TABLE dane (kolumna INTEGER(3));', '1', NULL, '[\"Tabela o nazwie dane posiada trzy kolumny liczb całkowitych\",\"Tabela o nazwie dane posiada jedną kolumnę liczb całkowitych\",\"Tabela posiada jedną kolumnę zawierającą trzy elementowe tablice\",\"Kolumny tabeli dane nazywają się: kolumna1, kolumna2, kolumna3\"]'),
(1051, 3, 'Polecenie w języku SQL GRANT ALL PRIVILEGES ON klienci TO pracownik', '3', NULL, '[\"nadaje uprawnienie grupie klienci do tabeli pracownik\",\"odbiera wszystkie uprawnienia pracownikowi do tabeli klienci\",\"skopiuje uprawnienia z grupy klienci na użytkownika pracownik\",\"nadaje wszystkie uprawnienia do tabeli klienci użytkownikowi pracownik\"]'),
(1052, 3, 'Która z wymienionych funkcji sortowania wykorzystywana w języku PHP sortuje tablicę asocjacyjną według indeksów', '3', NULL, '[\"sort()\",\"rsort()\",\"asort()\",\"ksort()\"]'),
(1053, 3, 'W skrypcie PHP należy utworzyć cookie o nazwie owoce które przyjmie wartość jabłko. Cookie ma być dostępne przez jedną godzinę od jego utworzenia. W tym celu należy w skrypcie PHP użyć funkcji:', '2', NULL, '[\"cookie(\\\"owoce\\\",\\\"jabłko\\\",3600);\",\"cookie(\\\"jabłko\\\",\\\"owoce\\\",3600);\",\"setcookie(\\\"owoce\\\",\\\"jabłko\\\",time()+3600);\",\"setcookie(\\\"jabłko\\\",\\\"owoce\\\",time()+3600);\"]'),
(1054, 3, 'Wskaż słowo kluczowe w języku C++ dodawane przed wbudowanym typem danych, które przesuwa zakres liczby wyłącznie nieujemne', '3', NULL, '[\"long\",\"const\",\"short\",\"unsigned\"]'),
(1055, 3, 'Instrukcja języka PHP tworząca obiekt pkt dla zdefiniowanej w ramce klasy Punkt ma postać', '1', 'e14/68.jpg', '[\"pkt Punkt;\",\"pkt = new Punkt();\",\"pkt Punkt();\",\"Punkt() pkt;\"]'),
(1056, 3, 'Które ze stwierdzeń dotyczących języków programowania NIE jest prawdziwe', '2', NULL, '[\"C++ jest językiem obiektowym\",\"JavaScript jest językiem skryptowym\",\"SQL jest językiem programowania strukturalnego\",\"PHP jest językiem do tworzenia stron w czasie rzeczywistym\"]'),
(1057, 3, 'Jaka wartość zostanie wypisana na standardowym wyjściu dla zamieszczonego w ramce fragmentu programu napisanego w języku C++', '2', 'e14/71.jpg', '[\"0\",\"2\",\"3\",\"32\"]'),
(1058, 3, 'Element zadeklarowany w języku C++ double *x; to', '3', NULL, '[\"Parametr formalny typu rzeczywistego\",\"Zmienna rzeczywista\",\"Zmienna całkowita\",\"Wskaźnik\"]'),
(1059, 3, 'Proces tłumaczenia kodu źródłowego pisanego przez programistę na zrozumiały dla komputera kod maszynowy to', '2', NULL, '[\"debugowanie\",\"uruchamianie\",\"kompilowanie\",\"implementowanie\"]'),
(1060, 3, 'Które ze stwierdzeń, w odniesieniu do zamieszczonej w ramce definicji funkcji, jest poprawne?', '3', 'e14/77.jpg', '[\"Pętla wykona się tylko raz\",\"Funkcja posiada pętlę powtarzającą się 3 razy\",\"Tekst będzie wczytywany do momentu podania liczby większej niż 3\",\"Wczytanie tekstu zakończy się, gdy tekst będzie się składał przynajmniej z 3 znaków\"]'),
(1061, 3, 'Po wykonaniu zamieszczonego w ramce skryptu napisanego w języku JavaScript w przeglądarce zostanie wypisana wartość', '1', 'e14/78.jpg', '[\"12,4\",\"12,5\",\"15,4\",\"15,5\"]'),
(1062, 3, 'Poprzez deklarację var x=\"true\"; w języku JavieScript tworzy się zmienną typu', '2', NULL, '[\"Logicznego\",\"Liczbowego\",\"String (ciąg znaków)\",\"Nieokreślonego (undefined)\"]'),
(1063, 3, 'Platforma wspierająca programowanie w technologii .NET to', '2', NULL, '[\"db2\",\"eclipse\",\"framework\",\"middleware\"]'),
(1064, 3, 'Parametr face znacznika <font> służy do określenia', '1', NULL, '[\"barwy czcionki\",\"nazwy czcionki\",\"efektów czcionki\",\"wielkości czcionki\"]'),
(1065, 3, 'Kodowanie w standardzie ISO-8859-2 stosowane jest w celu poprawnego wyświetlenia', '1', NULL, '[\"symboli matematycznych\",\"polskich liter, takich jak: ś, ć, ń, ó, ą\",\"znaków specjalnych dla języka kodu strony\",\"znaków zarezerwowanych dla języka opisu strony\"]'),
(1066, 3, 'Zamieszczony w ramce kod wyświetla tabelę składajacą się z', '2', 'e14/85.jpg', '[\"dwóch wierszy i dwóch kolumn\",\"dwóch wierszy i jednej kolumny\",\"jednego wiersza i dwóch kolumn\",\"jednego wiersza i jednej kolumny\"]'),
(1067, 3, 'Które polecenie w CSS służy do załączenia zewnętrznego arkusza stylów?', '1', NULL, '[\"open\",\"import\",\"require\",\"include\"]'),
(1068, 3, 'Selektor CSS a:link {color:red} zawarty w kaskadowych arkuszach stylów definiuje', '1', NULL, '[\"klasę\",\"pseudoklasę\",\"identyfikator\",\"pseudoelement\"]'),
(1069, 3, 'Kolor 255 12 12 w modelu RGB na stronie www powinien być zapisany w postaci', '3', NULL, '[\"#2551212\",\"#EE0C0C\",\"#AB1A1D\",\"#FF0C0C\"]'),
(1070, 3, 'CMYK to zestaw czterech podstawowych kolorów farb drukarskich:', '3', NULL, '[\"turkusowego, błękitnego, białego, różowego\",\"turkusowego, purpurowego, białego, czarnego\",\"czerwonego, purpurowego, żółtego, szarego\",\"turkusowego, purpurowego, żółtego, czarnego\"]'),
(1071, 3, 'Cechą formatu PNG jest', '1', NULL, '[\"obsługa animacji\",\"bezstratna kompresja\",\"brak obsługi kanału alfa\",\"reprezentacja grafiki wektorowej\"]'),
(1072, 3, 'Saturacja koloru nazywana jest inaczej', '1', NULL, '[\"jasnością koloru\",\"nasyceniem koloru\",\"dopełnieniem koloru\",\"przezroczystością koloru\"]'),
(1073, 3, 'Wysokość dźwięku zależy od', '3', NULL, '[\"siły wzbudzenia drgania\",\"sposobu pobudzania drgania\",\"czasu drgania źródła dzwięku\",\"częstotliwości drgania fali akustycznej\"]'),
(1074, 3, 'Operator arytmetyczny modulo w języku SQL to', '3', NULL, '[\"/\",\"||\",\"&\",\"%\"]'),
(1075, 3, 'Polecenie w języku SQL ALTER TABLE USA... ma za zadanie', '1', NULL, '[\"usunięcie tabeli USA\",\"modyfikację tabeli USA\",\"nadpisanie starej tabeli USA\",\"utworzenie nowej tabeli USA\"]'),
(1076, 3, 'Aby policzyć wszystkie wiersze tabeli Koty należy użyć polecenia:', '0', NULL, '[\"SELECT COUNT(*) FROM Koty\",\"SELECT ROWNUM() FROM Koty\",\"SELECT COUNT(Koty) AS ROWNUM\",\"SELECT COUNT(ROWNUM) FROM Koty\"]'),
(1077, 3, 'Aby podczas tworzenia tabeli utworzyć klucz obcy na wielu kolumnach, należy użyć polecenia', '2', NULL, '[\"CONSTRAINT(nazwisko,imie) FOREIGN KEY REFERENCES osoby (nazwisko, imie)\",\"CONSTRAINT(nazwisko,imie) FOREIGN REFERENCES KEY osoby (nazwisko, imie)\",\"CONSTRAINT fk_osoba_uczen FOREIGN KEY (nazwisko, imie) REFERENCES osoby (nazwisko,imie)\",\"CONSTRAINT fk_osoba_uczen FOREIGN KEY ON (nazwisko, imie) REFERENCES osoby (nazwisko,imie)\"]'),
(1078, 3, 'Wskaż poprawną kolejność etapów projektowania relacyjnej bazy danych', '3', NULL, '[\"Selekcja, Określenie relacji, Określenie kluczy podstawowych tabel, Określenie zbioru danych\",\"Określenie relacji, Określenie kluczy podstawowych tabel, Selekcja, Określenie zbioru danych\",\"Określenie kluczy podstawowych tabel, Określenie zbioru danych, Selekcja, Określenie relacji\",\"Określenie zbioru danych, Selekcja, Określenie kluczy podstawowych tabel, Określenie relacji\"]'),
(1079, 3, 'Formularze do obsługi baz danych tworzy się w celu', '3', NULL, '[\"raportowania danych\",\"wyszukiwania wierszy spełniających dane kryteria\",\"wprowadzenia powiązań w relacyjnych bazach danych \",\"wygodniejszego wprowadzania, edytowania i usuwania danych\"]'),
(1080, 3, 'Integralność referencyjna w modelu relacyjnych baz danych oznacza, że', '3', NULL, '[\"wartość klucza głównego oraz klucza obcego nie jest pusta\",\"klucz główny lub klucz obcy nie zawierają wartości NULL\",\"każdemu kluczowi głównemu odpowiada dokładnie jeden klucz obcy w tabeli lub tabelach powiązanych\",\"wartość klucza obcego w danej tabeli musi być albo równa wartości klucza głównego w tabeli z nia powiązanej albo równa wartości NULL\"]'),
(1081, 3, 'Odwoływanie funkcji do samej siebie to', '1', NULL, '[\"iteracja\",\"rekurencja\",\"hermetyzacja\",\"dziedziczenie\"]'),
(1082, 3, 'W języku PHP zmienna $_GET jest zmienną ', '0', NULL, '[\"predefiniowaną, używaną do przekazywania danych do skryptów PHP poprzez adres strony\",\"predefiniowaną, używaną do gromadzenia wartości formularza po nagłówkach zlecenia HTTP (danych z formularza nie można zobaczyć w adresie)\",\"zdefiniowaną przez twórcę strony, służącą do przekazywania danych z formularza przez adres strony \",\"zwykłą, zdefiniowaną przez twórcę strony\"]'),
(1083, 3, 'W języku PHP w instrukcji switch musi występować', '1', NULL, '[\"instrukcja default\",\"konstrukcja switch(wyrażenie)\",\"przynajmniej dwie instrukcje case\",\"instrukcja break po każdej instrukcji case\"]'),
(1084, 3, 'Kod zamieszczony w ramce spowoduje wypisanie liczb', '2', 'e14/116.jpg', '[\"2 4 6 8\",\"1 3 5 7 9\",\"2 4 6 8 10\",\"1 2 3 4 5 6 7 8 9 10\"]'),
(1085, 3, 'Który kod jest alternatywny do kodu zamieszczonego w ramce?', '0', 'e14/117.jpg', '[\"A\",\"B\",\"C\",\"D\"]'),
(1086, 3, 'Zamieszczony w ramce fragment skryptu w języku JavaScript', '2', 'e14/118.jpg', '[\"przypisze zmienniej s zmienną t\",\"wyświetli długość napisu ze zmiennej t \",\"przypisze zmiennej s długość napisu ze zmiennej t\",\"przypisze zmiennej s fragment napisu ze zmiennej t, o określonej przez zmienną length długości \"]'),
(1087, 3, 'Zamieszczony w ramce fragment kodu w JavaScript wypisze ', '0', 'e14/119.jpg', '[\"\\\"ze\\\"\",\"\\\"wo\\\"\",\"\\\"owodzeni\\\"\",\"\\\"wodzenia\\\"\"]');
INSERT INTO `questions` (`id`, `exam`, `q`, `ans`, `i`, `at`) VALUES
(1088, 3, 'W kodzie PHP znak \"//\" oznacza', '3', NULL, '[\"początek skryptu\",\"operator alernatywy \",\"operator dzielenia całkowitego\",\"początek komentarza jednoliniowego\"]'),
(1089, 3, 'Zapisując hasło użytkownika serwisu WWW (np. bankowości internetowej), w celu jego zabezpieczenia przed odtajnieniem, zwykle używa się funkcji', '0', NULL, '[\"klucza\",\"cyklometrycznych\",\"abstrakcyjnych\",\"mieszających\"]'),
(1090, 3, 'W celu określenia wysokości obrazka wyświetlonego na stronie WWW należy wykorzystać właściwość CSS o nazwie', '2', NULL, '[\"width\",\"padding\",\"height\",\"margin\"]'),
(1091, 3, 'Funkcja zapisana językiem PHP służy do', '3', 'e14/125.jpg', '[\"połączenia z bazą danych\",\"ustawienia hasła do bazy danych\",\"zabezpieczenia bazy danych\",\"pobrania danych z bazy danych\"]'),
(1092, 3, 'Kwerenda pozwalająca na wprowadzenie zmian w wielu rekordach lub przeniesienie wielu rekordów przy użyciu pojedynczej operacji, nosi nazwę kwerendy', '1', NULL, '[\"krzyżowej\",\"funkcjonalnej\",\"wybierającej\",\"parametrycznej\"]'),
(1093, 3, 'Wskaż rezultat działania fragmentu kodu JavaScript', '1', 'e14/127.jpg', '[\"Usunięcie akapitu ze strony\",\"Dodanie akapitu na koniec strony\",\"Wyświetlenie okna dialogowego z napisem akapit\",\"Dodanie akapitu na początku strony\"]'),
(1094, 3, 'Za pomocą którego protokołu należy wysłać pliki na serwer WWW?', '1', NULL, '[\"DHCP\",\"FTP\",\"POP3\",\"DNS\"]'),
(1095, 3, 'Wynikiem działania zamieszczonej pętli zapisanej językiem PHP jest wypisanie kolejnych liczb', '0', 'e14/130.jpg', '[\"od 10 do 1\",\"od 1 do 10\",\"od 10 do 2\",\"od 2 do 10\"]'),
(1096, 3, 'Które z poleceń naprawi uszkodzoną tabelę w języku SQL?', '1', NULL, '[\"REGENERATE TABLE tbl_name\",\"REPAIR TABLE tblname\",\"OPTIMIZE TABLE tbl_name\",\"ANALYZE TABLE tbl_name\"]'),
(1097, 3, 'Który zapis stylu CSS ustawi tło bloku na kolor niebieski?', '3', NULL, '[\"div {shadow: blue;}\",\"div {border-color: blue;}\",\"div {color: blue;}\",\"div {background-color: blue;}\"]'),
(1098, 3, 'Domyślna nazwa pliku konfiguracyjnego serwera Apache to', '3', NULL, '[\".configuration\",\"configuration.php\",\"htaccess.cnf\",\".htaccess\"]'),
(1099, 3, 'Organizacja zajmująca się ustalaniem standardu dla języka HTML nosi nazwę', '0', NULL, '[\"W3C\",\"ISO\",\"NASK\",\"WYSIWYG\"]'),
(1100, 3, 'Który z wymienionych systemów nie jest systemem CMS?', '1', NULL, '[\"Joomla\",\"Adobe Flash\",\"WordPress\",\"Drupal\"]'),
(1101, 3, 'Która ze zdefiniowanych funkcji w języku PHP jako wynik zwraca połowę kwadratu wartości przekazanej?', '2', NULL, '[\"function licz($a) { echo $a*$a/2; }\",\"function licz($a) { return $a/2; }\",\"function licz($a) { return $a*$a/2; }\",\"function licz($a) { echo $a/2; }\"]'),
(1102, 3, 'W strukturalnych językach programowania w celu przechowania informacji o 50 uczniach (ich imionach, nazwiskach, średniej ocen) należy użyć', '0', NULL, '[\"tablicy 50 elementów o składowych strukturalnych\",\"struktury 50 elementów o składowych typu tablicowego\",\"tablicy 50 elementów o składowych łańcuchowych\",\"klasy 50 elementów typu tablicowego\"]'),
(1103, 3, 'Aby zobaczyć wyniki działania skryptu napisanego w języku PHP, będącego elementem strony WWW, musi być on', '0', NULL, '[\"zinterpretowany po stronie serwera\",\"skompilowany po stronie klienta\",\"skompilowany po stronie serwera\",\"zinterpretowany po stronie klienta\"]'),
(1104, 3, 'Projektowanie logicznego układu witryny polega na', '0', NULL, '[\"rozmieszczeniu elementów w konkretnych miejscach witryny\",\"opracowaniu zestawu grafik dla witryny\",\"zdefiniowaniu treści witryny\",\"ustaleniu adresów URL dla podstron witryny\"]'),
(1105, 3, 'Aby stworzyć tabelę w bazie danych, należy zastosować polecenie SQL', '3', NULL, '[\"ADD TABLE\",\"NEW TABLE\",\"PLUS TABLE\",\"CREATE TABLE\"]'),
(1106, 3, 'W celu stworzenia relacji wiele do wielu łączącej tabele A i B wystarczy, że', '2', NULL, '[\"tabela A będzie zawierała te same pola co tabela B\",\"wiele rekordów z tabeli A zduplikuje się w tabeli B\",\"zdefiniuje się trzecią tabelę z kluczami obcymi do tabel A i B\",\"tabelę A połączy się z tabelą B poprzez zdefiniowanie kluczy obcych\"]'),
(1107, 3, 'W języku skryptowym JavaScript zmienne mogą być deklarowane', '0', NULL, '[\"w momencie pierwszego użycia zmiennej\",\"tylko na początku skryptu\",\"tylko jeśli podamy typ zmiennej i jej nazwę\",\"zawsze z poprzedzającym nazwę znakiem $\"]'),
(1108, 3, 'W językach programowania zmienna typu integer służy do przechowywania', '1', NULL, '[\"znaku\",\"liczby całkowitej\",\"liczby rzeczywistej\",\"wartości logicznej\"]'),
(1109, 3, 'Jeśli rozmiar pliku graficznego jest zbyt duży do publikacji w Internecie, należy', '1', NULL, '[\"dodać kanał alfa\",\"zmniejszyć jego rozdzielczość\",\"zwiększyć jego głębię kolorów\",\"zapisać w formacie BMP\"]'),
(1110, 3, 'Które z poleceń umożliwia dodanie kolumny zadaniekompletne do tabeli zadania?', '0', NULL, '[\"ALTER TABLE zadania ADD COLUMN zadaniekompletne int\",\"ADD COLUMN zadaniekompletne WITH zadania\",\"CREATEINDEX zadania ADD COLUMN zadaniekompletne int\",\"INSERT INTO zadania VALUES zadaniakompletne\"]'),
(1111, 3, 'W bazie danych, w celu uporządkowania listy uczniów według roku urodzenia, należy użyć polecenia', '1', NULL, '[\"SELECT imie,nazwisko,klasa from uczniowie group by rok_urodzenia\",\"SELECT imie,nazwisko,klasa from uczniowie order by rok_urodzenia\",\"SELECT imie,nazwisko,klasa from uczniowie order by nazwisko\",\"SELECT imie,nazwisko,klasa from uczniowie where rok_urodzenia = 1994\"]'),
(1112, 3, 'Wskaż dwa sposoby zabezpieczenia bazy danych Microsoft Access', '0', NULL, '[\"Ustalanie hasła do otwarcia bazy danych oraz zabezpieczeń na poziomie użytkownika\",\"Zaszyfrowanie pliku bazy danych oraz SMSy z kodem autoryzującym\",\"Funkcje anonimowe oraz ustalenie hasła otwarcia bazy danych\",\"Ustalenie zabezpieczeń na poziomie użytkownika oraz sesji\"]'),
(1113, 3, 'Certyfikat SSL jest stosowany do', '1', NULL, '[\"zapisania danych o sesjach tworzonych w witrynie\",\"zidentyfikowania właściciela domeny\",\"deszyfracji transmitowanych danych\",\"blokowania szkodliwego oprogramowania w witrynie\"]'),
(1114, 3, 'W języku SQL przywilej SELECT polecenia GRANT pozwala użytkownikowi baz danych na ', '0', NULL, '[\"odczyt danych z tabeli\",\"tworzenie tabeli\",\"usunięcie danych z tabeli\",\"modyfikowanie danych w tabeli\"]'),
(1115, 3, 'Warunek zapisany językiem PHP wypisze liczbę, gdy', '0', 'e14/159.jpg', '[\"jest ona parzysta\",\"jest ona liczbą pierwszą\",\"wynik dzielenia liczby przez 2 jest równy 0\",\"jest ona dodatnia\"]'),
(1116, 3, 'Analizując przedstawiony kod zapisany w języku HTML, można stwierdzić, że w przeglądarce', '1', 'e14/160.jpg', '[\"zostanie ustawiony dolny margines dla bloku B\",\"blok B będzie oddalony od bloku A o 20 px\",\"blok A będzie przesunięty w lewo o 20 px\",\"bloki A i B będą nachodzić na siebie.\"]'),
(1117, 3, 'Baza danych zawiera tabelę o nazwie pracownicy o polach: nazwisko, imie, pensja, wiek. Jak wygląda składnia polecenia wyznaczającego średnią pensję pracowników?', '2', NULL, '[\"select AVG (nazwisko) into pensja\",\"select VAR (pracownicy) into pensja\",\"select AVG (pensja) from pracownicy\",\"select VAR (pensja) from nazwisko\"]'),
(1118, 3, 'Do reprezentacji liczb zmiennoprzecinkowych w języku C stosowany jest typ', '3', NULL, '[\"int\",\"bool\",\"char\",\"double\"]'),
(1119, 3, 'Polecenie SQL o treści: UPDATE artykuly SET cena = cena * 0.7 WHERE kod = 2; oznacza', '1', NULL, '[\"w tabeli artykuly obniża wartość każdego pola cena o 30% dla wszystkich artykułów\",\"w tabeli artykuly obniża wartość każdego pola cena dla którego pole kod jest równe 2\",\"wprowadzenie w tabeli artykuly nowych pól cena i kod\",\"wprowadzenie w tabeli artykuly pola o nazwie cena ze znacznikiem kod\"]'),
(1120, 3, 'Do edycji grafiki wektorowej stosuje się program', '3', NULL, '[\"Paint\",\"Audacity\",\"Wordpad\",\"Corel Draw\"]'),
(1121, 3, 'W języku CSS, w celu zdefiniowania wewnętrznego górnego marginesu, czyli odstepu między elementem a otaczającym go obramowaniem, należy użyć polecenia', '0', NULL, '[\"padding-top\",\"outline-top\",\"border-top\",\"local-top\"]'),
(1122, 3, 'Funkcja drzewo kontekstowe edytor WYSIWYG Adobe Dreamweaver służy do', '0', NULL, '[\"wyświetlania interaktywnego drzewa struktury HTML dla zawartości statycznej i dynamicznej\",\"definiowania kaskadowych arkuszy stylów dołączonych do witryny\",\"formatowanie tekstu przy pomocy dostępnych znaczników\",\"tworzenia szablonu strony internetowej\"]'),
(1123, 3, 'Aby witryna internetowa prawidłowo skalowała się w urządzeniach mobilnych, należy wielkość czcionki zdefiniować', '1', NULL, '[\"w pikselach\",\"w procentach\",\"w milimetrach\",\"tylko znacznikami big i small\"]'),
(1124, 3, 'Prawidłowy, zgodny ze standardem języka XHTML, zapis samozamykającego się znacznika odpowiadającego za łamanie linii ma postać', '1', NULL, '[\"</ br>\",\"<br />\",\"</br/>\",\"<br> </br>\"]'),
(1125, 3, 'Najprostszą  i najmniej pracochłonną metodą przetestowania działania witryny internetowej w wielu przeglądarkach i ich różnych wersjach jest', '1', NULL, '[\"skorzystanie z walidatora języka HTML\",\"skorzystanie z emulatora przeglądarek internetowych np. Browser Sandbox\",\"zainstalowanie na kilku komputerach różnych przeglądarek i testowanie witryny\",\"testowanie witryny w programie Internet Explorer, zakładając kompatybilność innych przeglądarek\"]'),
(1126, 3, 'Aby przenieść witrynę na serwer, można skorzystać z oprogramowania', '2', NULL, '[\"Bugzilla\",\"Go!Zilla\",\"FileZilla\",\"CloneZilla\"]'),
(1127, 3, 'Baza danych zawiera tabelę uczniowie z polami: imie, nazwisko, klasa. Aby odnaleźć imiona i nazwiska tych uczniów, których nazwiska rozpoczynają się literą M, należy zastosować polecenie SQL', '1', NULL, '[\"SELECT nazwisko, imie FROM uczniowie WHERE nazwisko IN \\\"M%\\\";\",\"SELECT nazwisko, imie FROM uczniowie WHERE nazwisko LIKE \\\"M%\\\";\",\"SELECT nazwisko, imie FROM uczniowie ORDER BY nazwisko = \\\"M%\\\";\",\"SELECT nazwisko, imie FROM uczniowie ORDER BY nazwisko IN \\\"M%\\\";\"]'),
(1128, 3, 'Wartość pola tabeli pełniącego rolę klucza podstawowego', '0', NULL, '[\"musi być unikalna\",\"jest zawsze typu numerycznego\",\"służy do szyfrowania zawartości tabeli\",\"może przyjmować wartość pustą (NULL)\"]'),
(1129, 3, 'Aby utworzyć relację jeden do wielu, w tabeli po stronie wiele, należy zdefiniować', '2', NULL, '[\"klucz obcy wskazujący na klucz obcy tabeli po stronie jeden\",\"klucz sztuczny odnoszący się do kluczy podstawowych obu tabel\",\"klucz obcy wskazujący na klucz podstawowy tabeli po stronie jeden\",\"klucz podstawowy wskazujący na klucz podstawowy tabeli po stronie jeden\"]'),
(1130, 3, 'Uprawnienia obiektowe, nadawane użytkownikom serwera bazy danych, mogą pozwalać lub zabraniać', '3', NULL, '[\"dziedziczyć uprawnienia\",\"modyfikować role i konta użytkowników\",\"wykonywać instrukcje, takie jak tworzenie kopii zapasowej\",\"wykonywać operacje na bazie, takie jak wstawanie lub modyfikowanie danych\"]'),
(1131, 3, 'Przed wykonaniem kopii bezpieczeństwa bazy danych, tak aby kopia ta była poprawna i możliwa do późniejszego odtworzenia, należy sprawdzić', '3', NULL, '[\"możliwość udostępnienia bazy danych\",\"prawa dostępu do serwera bazy danych\",\"poprawność składni zapytań\",\"spójność bazy danych\"]'),
(1132, 3, 'W MS SQL Server polecenie RESTORE DATABASE służy do', '0', NULL, '[\"odtworzenia bazy danych z kopii bezpieczeństwa\",\"odświeżenia bazy danych z kontrolą więzów integralności\",\"przebudowania bazy danych w oparciu o buforowane dane\",\"usunięcia bazy danych z serwera centralnego subskrybenta\"]'),
(1133, 3, 'W języku PHP zmienna typu float przyjmuje wartości', '3', NULL, '[\"logiczne\",\"nieliczbowe\",\"tylko całkowite\",\"zmiennoprzecinkowe\"]'),
(1134, 3, 'Dany jest fragment kodu PHP z zdeklarowaną zmienną typu tablicowego. W wyniku wykonania kodu zostanie wpisane imię', '2', 'e14/191.jpg', '[\"Anna\",\"Tomasz\",\"Krzysztof\",\"Aleksandra\"]'),
(1135, 3, 'Kod strony WWW napisanej w języku PHP', '1', NULL, '[\"jest wykonywany po stronie klienta\",\"jest wykonywany po stronie serwera\",\"może być uruchomiony bez obsługi serwera WWW\",\"jest przetwarzany na tych samych zasadach co JavaScript\"]'),
(1136, 3, 'Aby zamieścić aplikację PHP w internecie, należy jej pliki źródłowe skopiować na serwer za pomocą protokołu', '0', NULL, '[\"FTP\",\"HTTP\",\"SMTP\",\"NNTP\"]'),
(1137, 3, 'Personalizowanie wyglądu strony dla danego użytkownika i jego identyfikacja w serwisie są możliwe dzięki mechanizmowi', '3', NULL, '[\"obiektów DOM\",\"łączenia z bazą\",\"formularzy\",\"cookie\"]'),
(1138, 3, 'Do grupowania obszarów na poziomie bloków, które będą formatowane za pośrednictwem znaczników, należy użyć', '1', NULL, '[\"<p>\",\"<div>\",\"<span>\",\"<param>\"]'),
(1139, 3, 'Znacznik <i> języka HTML służy do', '2', NULL, '[\"umieszczenia obrazka\",\"zdefiniowania formularza\",\"zmiany kroju pisma na pochylony\",\"zdefiniowania nagłówka w tekście\"]'),
(1140, 3, 'Poniżej przedstawiono fragment kodu języka HTML. Jest on definicją listy:', '2', 'e14/208.jpg', '[\"A\",\"B\",\"C\",\"D\"]'),
(1141, 3, 'Chcąc zdefiniować formatowanie tabeli w języku CSS w taki sposób, aby wiersz, który jest aktualnie wskazywany kursorem myszy, został wyróżniony np. innym kolorem, należy zastosować', '1', NULL, '[\"pseudoklasę :visited\",\"pseudoklasę :hover\",\"pseudoelement :first-line\",\"nowy selektor klasy dla wiersza tabeli\"]'),
(1142, 3, 'Aby uzyskać efekt rozstrzelenia liter w selektorze CSS, należy użyć właściwości', '2', NULL, '[\"letter-transform\",\"text-decoration\",\"letter-spacing\",\"text-space\"]'),
(1143, 3, 'Blok deklaracji postaci background-attachment: scroll powoduje, że', '1', NULL, '[\"grafika tła będzie powtarzana (kafelki)\",\"tło strony będzie przewijane razem z tekstem\",\"tło strony będzie stałe, ateks będzie się przewijał\",\"grafika tła będzie wyświetlona w prawym górnym rogu strony\"]'),
(1144, 3, 'Która z reguł walidacji strony internetowej jest błędna?', '0', NULL, '[\"Jeżeli w instrukcji używa się kilku atrybutów, ich kolejność powinna być zgodna z alfabetem, np. <img alt=\\\"....\\\" src=\\\"....\\\" />\",\"Wyłączanie znaczników musi następować w odwrotnej kolejności, niż były one włączane, np. <p>....<big>...</big></p>\",\"Znaczniki, oprócz samozamykających się, działają do momentu ich wyłączenia znakiem \\\"/\\\", np. <p>...</p>\",\"W znacznikach nie są rozróżniane wielkie i małe litery, np. <p> i <P> to ten sam znacznik\"]'),
(1145, 3, 'W języku SQL polecenie INSERT INTO', '2', NULL, '[\"dodaje tabelę\",\"dodaje pola do tabeli\",\"wprowadza dane do tabeli\",\"aktualizuje rekordy określoną wartością\"]'),
(1146, 3, 'W języku SQL klauzula DISTINCT instrukcji SELECT sprawi, że zwrócone dane ', '1', NULL, '[\"zostaną posortowane\",\"nie będą zawierały powtórzeń\",\"będą spełniały określony warunek\",\"będą pogrupowane według określonego pola\"]'),
(1147, 3, 'Zdefiniowano bazę danych z tabelą sklepy o polach: nazwa, ulica, miasto, branza. Aby wyszukać wszystkie nazwy sklepów spożywczych zlokalizowanych wyłącznie we Wrocławiu, należy posłużyć się kwerendą:', '3', NULL, '[\"SELECT sklepy FROM nazwa WHERE branza=\\\"spożywczy\\\" BETWEEN miasto=\\\"Wrocław\\\";\",\"SELECT sklepy FROM branza=\\\"spożywczy\\\" WHERE miasto=\\\"Wrocław\\\";\",\"SELECT nazwa FROM sklepy WHERE branza=\\\"spozywczy\\\" OR miasto=\\\"Wrocław\\\";\",\"SELECT nazwa FROM sklepy WHERE branza=\\\"spozywczy\\\" AND miasto=\\\"Wrocław\\\";\"]'),
(1148, 3, 'W celu przyspieszenia operacji na bazie danych należy do pól często wyszukiwanych lub sortowanych', '0', NULL, '[\"utworzyć indeks\",\"dodać klucz obcy\",\"dodać więzy integralności \",\"stworzyć osobną tabelę przechowującą tylko te pola\"]'),
(1149, 3, 'W MS SQL Server predefiniowana rola o nazwie dbcreator pozwala użytkownikowi na', '2', NULL, '[\"zarządzanie plikami na dysku\",\"zarządzanie bezpieczeństwem systemu\",\"tworzenie, modyfikowanie, usuwanie i odzyskiwanie bazy danych\",\"wykonywanie każdej operacji na serwerze i posiadanie prawa własności każdej bazy\"]'),
(1150, 3, 'Aby odebrać prawa dostępu do serwera MySQL, należy posłużyć się instrukcją', '3', NULL, '[\"USAGE\",\"GRANT\",\"DELETE\",\"REVOKE\"]'),
(1151, 3, 'Polecenie DBCC CHECKDB(\"sklepAGD\", Repair_fast) w MS SQL Server', '1', NULL, '[\"sprawdzi spójność określonej tabeli\",\"sprawdzi spójność bazy danych i naprawi uszkodzone indeksy\",\"sprawdzi spójność bazy danych i wykona kopię bezpieczeństwa\",\"sprawdzi spójność określonej tabeli i naprawi uszkodzone rekordy\"]'),
(1152, 3, 'Aby naprawić bazę danych w MySQL, należy użyć polecenia', '1', NULL, '[\"FIX\",\"REPAIR\",\"UPDATE\",\"CHANGE\"]'),
(1153, 3, 'Interpreter PHP wygeneruje błąd i nie wykona kodu, jeżeli programista:', '1', NULL, '[\"będzie pisał kod bez wcięć\",\"nie postawi średnika po wyrażeniu w instrukcji if, jeśli po nim nastąpiła sekcja else\",\"będzie deklarował zmienne wewnątrz warunku\",\"pobierze wartość z formularza, w którym pole input nie było wypełnione\"]'),
(1154, 3, 'Warunek zapisany w JavaScript jest prawdziwy, gdy zmienna x przechowuje', '3', 'e14/238.jpg', '[\"pusty napis\",\"wartość nie liczbową\",\"dowolną całkowitą wartość liczbową\",\"dowolną dodatnią wartość liczbową\"]'),
(1155, 3, 'W języku PHP pobrano z bazy danych wyniki działania kwerendy za pomocą polecenia mysql_query(). Aby otrzymać ze zwróconej kwerendy wierszy danych, należy zastosować polecenie:', '2', NULL, '[\"mysql_field_len()\",\"mysql_list_fields()\",\"mysql_fetch_row()\",\"mysql_fetch_lengths()\"]'),
(1156, 3, 'Który z wymienionych znaczników należy do części <head> dokumentu HTML?', '1', NULL, '[\"<img>\",\"<title>\",\"<span>\",\"<section>\"]'),
(1157, 3, 'W języku CSS, aby formatować tekst poprzez przekreślenie, podkreślenie dolne lub górne, należy zastosować', '3', NULL, '[\"text-align\",\"text-indent\",\"text-transform\",\"text-decoration\"]'),
(1158, 3, 'W języku CSS poniższy zapis użyty na stronie, na której jest kilka paragrafów, a każdy z nich ma po kilka linii sprawi, że', '1', 'e14/253.jpg', '[\"pierwsza linia każdego paragrafu będzie miała mniejszą czcionkę niż następne linie\",\"pierwsza linia każdego paragrafu będzie miała większą czcionkę niż następne linie\",\"pierwszy paragraf na stronie będzie w całości miał powiększoną czcionkę\",\"całość tekstu paragrafu będzie powiększona o 150%\"]'),
(1159, 3, 'Który znacznik lub grupa znaczników nie są stosowane do definiowania struktury strony HTML?', '1', NULL, '[\"<header>, <footer>\",\"<i>, <b>, <u>\",\"<section>\",\"<div>\"]'),
(1160, 3, 'Który z przedstawionych kodów HTML sformatuje tekst według wzoru? (uwaga: słowo \"stacji\" jest zapisane większą czcionką niż reszta słów w tej linii) ', '1', 'e14/255.jpg', '[\"A\",\"B\",\"C\",\"D\"]'),
(1161, 3, 'Kolor zapisany w postaci szesnastkowej o wartości #11FE07 w kodzie RGB ma postać ', '3', NULL, '[\"rgb(17,FE,7)\",\"rgb(11,127,7)\",\"rgb(17,255,7)\",\"rgb(17,254,7)\"]'),
(1162, 3, 'Które ze zdań jest prawdziwe w stosunku do grafiki rastrowej?', '3', NULL, '[\"Podczas przekształcania polegającego na skalowaniu, skalowany obraz nie zmienia jakości\",\"Zapisywany obraz jest opisywany za pośrednictwem figur geometrycznych umieszczonych w układzie współrzędnych\",\"Grafika rastrowa nie jest zapisana w formacie WMF (ang. Windows Metafile Format - format metaplików w Windows) \",\"Jest to prezentacja obrazu za pomocą pionowo-poziomej siatki odpowiednio kolorowanych pikseli na monitorze komputera, drukarce lub innym urządzeniu wyjściowym\"]'),
(1163, 3, 'Aby obraz zmieniał się płynnie w filmie, liczba klatek (nieprzenikających się wzajemnie) na sekundę musi znajdować się przynajmniej w zakresie', '2', NULL, '[\"16-19 fps\",\"20-23 fps\",\"24-30 fps\",\"31-36 fps\"]'),
(1164, 3, 'Na rysunku została przedstawiona relacja jeden do wielu. Łączy ona', '2', 'e14/263.jpg', '[\"klucz obcy rezyserzy_id tabeli filmy z kluczem obcym id tabeli rezyserzy\",\"klucz podstawowy id tabeli filmy z kluczem podstawowym id tabeli rezyserzy\",\"klucz obcy rezyserzy_id tabeli filmy z kluczem podstawowym id tabeli rezyserzy\",\"klucz podstawowy id tabeli z kluczem obcym rezyserzy_id tabeli rezyserzy\"]'),
(1165, 3, 'Wskaż polecenie SQL dodające pole miesiacSiewu do istniejącej tabeli rosliny', '2', NULL, '[\"UPDATE rosliny ADD miesiacSiewu int\",\"CREATE TABLE rosliny {miesiacSiewu int}\",\"ALTER TABLE rosliny ADD miesiacSiewu int\",\"INSERT INTO rosliny VALUES (miesiacSiewu int)\"]'),
(1166, 3, 'Polecenie serwera MySQL przedstawione poniżej sprawi, że użytkownikowi tkowal zostaną', '1', 'e14/266.jpg', '[\"przydzielone prawa do usuwania i aktualizowania danych w tabeli pracownicy\",\"odebrane prawa usuwania i modyfikowania danych w tabeli pracownicy\",\"odebrane prawa usuwanie i dodawania rekordów w tabeli pracownicy\",\"przydzielone prawa wszelkiej zmiany struktury tabeli pracownicy\"]'),
(1167, 3, 'W serwerze MySQL nadanie roli o nazwie DBManager przyznaje użytkownikowi prawa umożliwiające', '1', NULL, '[\"monitorowanie serwera\",\"wszelkie operacje na bazach danych serwera\",\"tworzenie użytkowników serwera i ustawianie im haseł\",\"wszystkie operacje na bazach danych i użytkownikach serwera\"]'),
(1168, 3, 'W bazie danych wykonano następujące polecenie dotyczące praw użytkownika adam. Po wykonaniu poleceń użytkownik adam będzie miał prawa do', '0', 'e14/268.jpg', '[\"usunięcia tabeli lub jej rekordów\",\"aktualizowania danych i przeglądania tabeli klienci\",\"tworzenia tabeli klienci i aktualizowania w niej danych\",\"przeglądania tabeli klienci i wstawiania do niej sektorów\"]'),
(1169, 3, 'Wskaż poprawną zasadę dotyczącą spójności danych w bazie danych', '1', NULL, '[\"pole klucza obcego nie może być puste\",\"pole klucza podstawowego nie może być puste\",\"pole klucza podstawowego musi posiadać utworzony indeks\",\"w relacji 1..n pole klucza obcego jest połączone z polem klucza obcego innej tabeli\"]'),
(1170, 3, 'Aby naprawić uszkodzoną tabelę w MySQL, należy wydać polecenie', '2', NULL, '[\"FIX TABLE\",\"CHECK TABLE\",\"REPAIR TABLE\",\"RESOLVE TABLE\"]'),
(1171, 3, 'W formularzu dane z pola input o typie number zostały zapisane do zmiennej a, a następnie przetworzone w skrypcie JavaScript w następujący sposób. Zmienna z będzie typu', '2', 'e14/271.jpg', '[\"NaN\",\"napisowego\",\"zmiennoprzecinkowego\",\"liczbowego, całkowitego\"]'),
(1172, 3, 'Aby w pliku z rozszerzeniem php umieścić kod w języku PHP należy użyć znaczników', '1', NULL, '[\"<php .......... />\",\"<?php .......... ?>\",\"<php> ......... </php>\",\"<?php> ........ <php?>\"]'),
(1173, 3, 'W JavaScript wynik operacji jest równy wartości NaN, jeśli skrypt próbował wykonać', '1', NULL, '[\"funkcję parseFloat zamiast parseInt na zmiennej liczbowej\",\"działanie arytmetyczne, a zawartość zmiennej była napisem\",\"działanie arytmetyczne na dwóch zmiennych liczbowych dodatnich\",\"funkcję sprawdzającą długość napisu, a zawartość zmiennej była liczbą\"]'),
(1174, 3, 'W instrukcji warunkowej języka JavaScript należy sprawdzić przypadek, gdy wartość zmiennej a jest z przedziału (0, 100), natomiast wartość zmiennej b jest większa od zera. Warunek taki jest prawidłowo zapisany w nastepujący sposób', '1', NULL, '[\"if (a>0 || a<100 || b<0)\",\"if (a>0 && a<100 && b>0)\",\"if ((a>0 || a<100) && b>0)\",\"if ((a>0 && a<100) || b<0)\"]'),
(1175, 3, 'Dla dowolnego a z przedziału (0,99) zadaniem funkcji zapisanej w języku Java Script jest:', '3', 'e14/276.jpg', '[\"zwrócenie liczb z przedziału a..99\",\"wypisanie liczb z przedziału a..99 i zwrócenie wartości 100\",\"wypisanie wartości zmiennej a oraz zwrócenie wartości zmiennej n\",\"wypisanie liczb z przedziału a...100 i zwrócenie wartości zmiennej n\"]'),
(1176, 3, 'Aby wykonać kod zapisany językiem PHP wystarczy, że w systemie zainstalowano', '1', NULL, '[\"przeglądarkę internetową\",\"serwer WWW z interpreterem PHP\",\"serwer WWW z serwerem MySQL\",\"serwer WWW, parser PHP oraz serwer MySQL\"]'),
(1177, 3, 'Jaka treść komunikatu powinna być wstawiona w przedstawionym kodzie PHP zamiast znaków zapytania?', '1', 'e14/282.jpg', '[\"Wybrana baza nie istnieje\",\"Błąd połączenia z serwerem SQL\",\"Pomyślnie dodano rekord do bazy\",\"Błąd przetwarzania zapytania SQL\"]'),
(1178, 3, 'Testy aplikacji internetowej mające za zadanie sprawdzenie skalowalności aplikacji i bazy danych oraz architektury serwera i konfiguracji noszą nazwę testów', '0', NULL, '[\"kompatybilności\",\"bezpieczeństwa\",\"funkcjonalnych\",\"użyteczności\"]'),
(1179, 3, 'Aby prawidłowo udokumentować linię kodu języka Java Script, należy po znakach // wpisać komentarz', '3', 'e14/284.jpg', '[\"nieprawidłowe dane\",\"wybór losowej wartości ze zmiennych a, b i c\",\"w zmiennej x minimalna wartość ze zmiennych a, b, c\",\"w zmiennej x maksymalna wartość ze zmiennych a, b, c\"]'),
(1180, 3, 'Zapis znacznika HTML w postaci', '3', 'e14/287.jpg', '[\"jest niepoprawny, w atrybucie href należy podać adres URL\",\"jest niepoprawny, zastosowano błędnie znak # w atrybucie href\",\"jest poprawny, po wybraniu odnośnika otworzy się strona internetowa o adresie \\\"hobby\\\"\",\"jest poprawny, po wybraniu odnośnika aktualna strona zostanie przewinięta do elementu o nazwie \\\"hobby\\\"\"]'),
(1181, 3, 'Przeglądarka internetowa wyświetliła stronę w następujący sposób. Wskaż kod HTML, który poprawnie definiuje przedstawioną hierarchiczną strukturę tekstu:', '3', 'e14/289.jpg', '[\"<h1>Rozdział 1<p>tekst <h2>Podrozdział 1.1<p>tekst <h2>Podrozdział 1.2\",\"<ul><li>Rozdział 1<li>tekst<li>Podrozdział 1.1<li>tekst<li>Podrozdział 1.2</ul>\",\"<big>Rozdział 1</big>tekst<big>Podrozdział 1.1</big>tekst<big>Podrozdział 1.2</big>\",\"<h1>Rozdział 1</h1> <p>tekst</p> <h2>Podrozdział 1.1</h2> <p>tekst</p> <h2>Podrozdział 1.2</h2>\"]'),
(1182, 3, 'W języku CSS zdefiniowano następujące formatowanie. Oznacza to, że kolorem niebieskim zostanie zapisany', '1', 'e14/292.jpg', '[\"cały tekst paragrafu niezależnie od jego formatowania\",\"pochylony tekst paragrafu\",\"cały tekst nagłówków niezależnie od ich formatowania\",\"pogrubiony tekst paragrafu\"]'),
(1183, 3, 'W języku HTML informacje dotyczące autora, streszczenia i słów kluczowych strony należy umieścić', '0', NULL, '[\"pomiędzy znacznikami <head> i </head>, w znaczniku <meta>\",\"pomiędzy znacznikami <head> i </head>, w znaczniku <style>\",\"pomiędzy znacznikami <body> i </body>, w znaczniku <meta>\",\"pomiędzy znacznikami <body> i </body>, w znaczniku <html>\"]'),
(1184, 3, 'Który z przedstawionych kodów XHTML sformatuje tekst według podanego wzoru?', '3', 'e14/295.jpg', '[\"A\",\"B\",\"C\",\"D\"]'),
(1185, 3, 'W instrukcji CREATE TABLE użycie klauzuli PRIMARY KEY przy deklaracji pola tabeli spowoduje, że pole to stanie się', '3', NULL, '[\"kluczem obcym\",\"indeksem klucza\",\"indeksem unikalnym\",\"kluczem podstawowym\"]'),
(1186, 3, 'Baza danych księgarni zawiera tabelę ksiazki z polami: id, idAutor, tytul, ileSprzedanych oraz tabelę autorzy z polami: id, imie, nazwisko. Aby stworzyć raport sprzedanych książek z tytułami i nazwiskami autorów, należy', '1', NULL, '[\"stworzyć kwerendę wyszukującą tytuły książek\",\"Zdefiniować relację 1..n dla tabel ksiazki i autorzy, a następnie stworzyć kwerendę łączącą obie tabele\",\"Zdefiniować relację 1..1 dla tabel ksiazki i autorzy, a następnie stworzyć kwerendę łączącą obie tabele\",\"stworzyć dwie osobne kwerendy: pierwszą wyszukującą tytuły książek, drugą wyszukującą nazwiska autorów\"]'),
(1187, 3, 'Istnieje tabela pracownicy z polami: id, imie, nazwisko, pensja. W nowym roku postawiono podnieść pensję wszystkim pracownikom o 100 zł. Aktualizacja ta w bazie danych będzie miała postać', '0', NULL, '[\"UPDATE pracownicy SET pensja = pensja + 100;\",\"UPDATE pracownicy SET pensja = 100;\",\"UPDATE pensja SET +100;\",\"UPDATE pensja SET 100;\"]'),
(1188, 3, 'Aby przywrócić bazę danych MS SQL z kopii bezpieczeństwa, należy zastosować polecenie', '2', NULL, '[\"DBCC CHECKDB\",\"SAVE DATABASE\",\"RESTORE DATABASE\",\"REBACKUP DATABASE\"]'),
(1189, 3, 'W formularzu, dane z pola input o typie number zostały zapisane do zmiennej a, a następnie przetworzone w skrypcie JavaScript w następujący sposób. Zmienna x będzie typu', '3', 'e14/310.jpg', '[\"NaN\",\"napisowego\",\"zmiennoprzecinkowego\",\"liczbowego, całkowitego\"]'),
(1190, 3, 'Wstawki kodu JavaScript w dokumencie HTML mogą się znaleźć', '3', NULL, '[\"tylko w cześci <head>, w znaczniku <script>\",\"tylko w cześci <body>, w znaczniku <java>\",\"zarówno w cześci <head>, jak i <body>, w znaczniku <java>\",\"zarówno w cześci <head>, jak i <body>, w znaczniku <script>\"]'),
(1191, 3, 'W przedstawonym kodzie JavaScript dla ułatwienia ponumerowano linie. W kodzie znajduje się błąd, gdyż po uruchomieniu żaden komunikat nie zostaje wyświetlony. Aby wyeliminować błąd, należy', '1', 'e14/312.jpg', '[\"wstawić znaki $ przed nazwami zmiennych.\",\"wstawić nawiasy klamrowe do sekcji if oraz else\",\"w liniach 2 i 5 zmienne a i b wstawić w cudzysłów\",\"w liniach 3 i 6 zamienić znaki cudzysłowu na apostrof, np. ’jest mniejsze’\"]'),
(1192, 3, 'Ile iteracji będzie miała przedstawiona pętla zapisana w języku PHP, zakładając, że zmienna sterująca nie jest modyfikowana we wnętrzu pętli?', '2', 'e14/313.jpg', '[\"0\",\"10\",\"11\",\"Nieskończenie wiele\"]'),
(1193, 3, 'W instrukcji warunkowej JavaScript należy sprawdzić przypadek, gdy zmienne a oraz b są dodatnie, z czego zmienna b jest mniejsza od 100. Warunek taki powinien być zapisany w następujący sposób:', '3', NULL, '[\"if ( a > 0 || b > 0 || b > 100)\",\"if ( a > 0 && b > 0 || b > 100)\",\"if ( a > 0 || (b > 0 && b < 100))\",\"if ( a > 0 && b > 0 && b < 100)\"]'),
(1194, 3, 'Zadaniem przedstawionej funkcji zapisanej w języku JavaScript jest', '1', 'e14/316.jpg', '[\"zwrócenie wartości parzystych liczb od a do b\",\"wypisanie liczb parzystych z przedziału od a do b\",\"wypisanie wszystkich liczb z przedziału od a do b\",\"sprawdzenie, czy liczba a jest nieparzysta; jeśli tak, wypisanie jej\"]'),
(1195, 3, 'Przedstawiony kod został zapisany w języku JavaScript. W podanej definicji obiektu metodą jest element o nazwie', '1', 'e14/317.jpg', '[\"obj1\",\"oblicz\",\"czescCalkowita\",\"czescUlamkowa\"]'),
(1196, 3, 'Aby uzyskać informacje o środowisku pracy serwera obsługującego PHP, należy skorzystać z funkcji ', '1', NULL, '[\"php()\",\"phpinfo()\",\"phpgetinfo()\",\"phpinformation()\"]'),
(1197, 3, 'Do uruchomienia skryptu JavaScript wymagane jest oprogramowanie', '3', NULL, '[\"serwera WWW\",\"serwera MySQL\",\"debugera JavaScript\",\"przeglądarki internetowej\"]'),
(1198, 3, 'Testy wydajnościowe mają na celu sprawdzenie', '2', NULL, '[\"zdolności oprogramowania do działania w warunkach wadliwej pracy sprzętu\",\"zdolności oprogramowania do działania w warunkach wadliwej pracy systemu\",\"stopnia spełnienia wymagań wydajnościowych przez system lub moduł\",\"ciągu zdarzeń, w którym prawdopodobieństwo każdego zdarzenia zależy jedynie od wyniku poprzedniego\"]'),
(1199, 3, 'Aby prawidłowo udokumentować przedstawioną linię kodu języka JavaScript, należy po znakach // wpisać komentarz ', '3', 'e14/324.jpg', '[\"nieprawidłowe dane\",\"zmiana stylu atrybutu innerHTML\",\"wyświetlenie tekstu \\\"Date()\\\" w znaczniku o id = napis\",\"wyświetlenie daty i czasu w znaczniku o id = napis\"]'),
(1200, 3, 'W języku HTML aby zdefiniować słowa kluczowe strony, należy użyć zapisu', '2', NULL, '[\"<meta keywords=\\\"psy, koty, gryzonie\\\">\",\"<meta name=\\\"keywords\\\" =\\\"psy, koty, gryzonie\\\">\",\"<meta name=\\\"keywords\\\" content=\\\"psy, koty, gryzonie\\\">\",\"<meta name=\\\"description\\\" content=\\\"psy, koty, gryzonie\\\">\"]'),
(1201, 3, 'Zapisano kod HTML wstawiający grafikę na stronę internetową. Jeżeli rysunek.png nie zostanie odnaleziony, przeglądarka', '1', 'e14/329.jpg', '[\"nie wyświetli strony internetowej\",\"w miejscu grafiki wypisze tekst \\\"pejzaż\\\"\",\"w miejscu grafiki wypisze tekst \\\"rysunek.png\\\"\",\"w miejscu grafiki wypisze błąd wyświetlania strony\"]'),
(1202, 3, 'Aby w języku HTML uzyskać takie formatowanie paragrafu dla tekstu należy zastosować kod', '2', 'e14/330.jpg', '[\"<p>Tekst może być <mark>zaznaczony</mark> albo <em>istotny dla autora</p>\",\"<p>Tekst może być <mark>zaznaczony albo <i>istotny</i> dla autora</mark></p>\",\"<p>Tekst może być <mark>zaznaczony</mark> albo <em>istotny</em> dla autora</p>\",\"<p>Tekst może być <mark>zaznaczony albo <em>istotny</em> dla autora</mark></p>\"]'),
(1203, 3, 'Zapis CSS w takiej postaci sprawi, że na stronie internetowej', '0', 'e14/335.jpg', '[\"punktorem listy nienumerowanej będzie rys.gif\",\"rys.gif będzie stanowił ramkę dla listy nienumerowanej\",\"wyświetli się rys.gif jako tło listy nienumerowanej\",\"każdy z punktów listy będzie miał osobne tło pobrane z grafiki rys.gif\"]'),
(1204, 3, 'W języku CSS aby zdefiniować odmienne formatowanie dla pierwszej litery akapitu, należy zastosować selektor', '3', NULL, '[\"klasy p.first-letter\",\"dziecka p + first-letter\",\"atrybutu p [first-letter]\",\"pseudoelementu p::first-letter\"]'),
(1205, 3, 'W ramce przedstawiono właściwości pliku graficznego. W celu optymalizacji czasu ładowania rysunku na stronę WWW należy', '0', 'e14/338.jpg', '[\"zmniejszyć wymiary rysunku\",\"zwiększyć rozdzielczość\",\"zmienić format grafiki na CDR\",\"zmienić proporcje szerokości do wysokości\"]'),
(1206, 3, 'W programie INKSCAPE / COREL aby uzyskać przedstawiony efekt napisu, należy', '3', 'e14/339.jpg', '[\"skorzystać z funkcji gradientu\",\"zastosować funkcję sumy z kołem\",\"zastosować funkcję wykluczenia z kołem\",\"skorzystać z funkcji wstaw / dopasuj tekst do ścieżki\"]'),
(1207, 3, 'Tabela filmy zawiera klucz główny id oraz klucz obcy rezyserID. Tabela rezyserzy zawiera klucz główny id. Obydwie tabele połączone są relacją jeden po stronie rezyserzy do wielu po stronie filmy. Aby w kwerendzie SELECT połączyć tabele filmy i rezyserzy, należy zapisać', '2', NULL, '[\"... filmy JOIN rezyserzy ON filmy.id = rezyserzy.id ...\",\"... filmy JOIN rezyserzy ON filmy.id = rezyserzy.filmyID ...\",\"... filmy JOIN rezyserzy ON filmy.rezyserID = rezyserzy.id ...\",\"... filmy JOIN rezyserzy ON filmy.rezyserID = rezyserzy.filmyID ...\"]'),
(1208, 3, 'Przedstawione polecenie MySQL ma za zadanie', '3', 'e14/349.jpg', '[\"Usunąć kolumnę tytul z tabeli ksiazki\",\"Dodać do tabeli ksiazki kolumnę tytul\",\"Zmienić nazwę kolumny w tabeli ksiazki\",\"Zmienić typ kolumny w tabeli ksiazki\"]'),
(1209, 3, 'W języku JavaScript, aby sprawdzić warunek czy liczba znajduje się w przedziale (100;200>, należy zapisać:', '2', NULL, '[\"if (liczba > 100 || liczba <= 200)\",\"if (liczba < 100 || liczba >= 200)\",\"if (liczba > 100 && liczba <= 200)\",\"if (liczba < 100 && liczba <= 200)\"]'),
(1210, 3, 'W wyniku działania pętli zapisanej w języku PHP zostanie wypisany ciąg liczb', '0', 'e14/354.jpg', '[\"10 15 20 25 30 35 40 45\",\"10 15 20 25 30 35 40 45 50\",\"0 5 10 15 20 25 30 35 40 45\",\"0 5 10 15 20 25 30 35 40 45 50\"]'),
(1211, 3, 'W języku PHP instrukcja foreach jest instrukcją', '2', NULL, '[\"Wyboru, dla elementów tablicy\",\"Pętli, niezależnie od typu zmiennej\",\"Pętli, wyłącznie dla elementów tablicy\",\"Warunkową, niezależnie od typu zmiennej\"]'),
(1212, 3, 'Funkcją języka PHP tworzącą ciasteczko jest', '3', NULL, '[\"createcookie()\",\"echocookie()\",\"addcookie()\",\"setcookie()\"]'),
(1213, 3, 'W języku PHP funkcja trim ma za zadanie', '3', NULL, '[\"Podawać długość napisu\",\"Porównywać dwa napisy i wypisać część wspólną\",\"Zmniejszać napis o wskazaną w parametrze liczbę znaków\",\"Usuwać białe znaki lub inne znaki podane w parametrze, z obu końców napisu\"]'),
(1214, 3, 'W języku JavaScript zapis w ramce oznacza, że', '2', 'e14/359.jpg', '[\"nazwa jest polem klasy przedmiot\",\"nazwa jest właściwością obiektu przedmiot\",\"zmienna x będzie przechowywać wynik działania metody nazwa\",\"zmienna x będzie przechowywać wynik działania funkcji przedmiot\"]'),
(1215, 3, 'Za pomocą języka PHP nie jest możliwe', '3', NULL, '[\"Przetwarzanie danych formularzy\",\"Generowanie dynamicznej zawartości strony\",\"Przetwarzanie danych zgromadzonych w bazie danych\",\"Zmienianie dynamiczne zawartości strony HTML w przeglądarce\"]'),
(1216, 3, 'W języku JavaScript zapisano fragment kodu. Po wykonaniu skryptu zmienna x', '2', 'e14/363.jpg', '[\"Będzie równa 11 i zostanie wypisana w oknie popup\",\"Będzie równa 10 i zostanie wypisana w dokumencie HTML\",\"Będzie równa 11 i zostanie wypisana w konsoli przeglądarki internetowej\",\"Będzie równa 10 i zostanie wypisana w głównym oknie przeglądarki internetowej\"]'),
(1275, 6, 'Co to za zagadka dwie kulki i armatka?', '2', NULL, '[\"tak\",\"nie\",\"haha beniz\",\"nożyczki\"]'),
(1276, 6, 'Na kamieniu leży kamień i pod kamieniem leży kamień. Ile jest kamieni?', '2', NULL, '[\"1\",\"2\",\"3\",\"4\"]');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `classid` int(11) NOT NULL,
  `teacherid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `classid`, `teacherid`) VALUES
(3, 8, 5),
(5, 12, 5);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `power` enum('0','1') NOT NULL,
  `resetpass` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `username`, `password`, `power`, `resetpass`) VALUES
(1, 'admin', 'd753be6c97ebf25669fa10cb9cf9bb3a', '1', '0'),
(5, 'kowalski', 'd006babc7c4e9b8efea31c578d111b1e', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userCode` varchar(8) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Name` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `LastName` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `classid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userCode`, `Name`, `LastName`, `classid`) VALUES
(93, '1T01', 'Asia', 'Anecka', 3),
(94, '1T02', 'Basia', 'Banecka', 3),
(95, '1T03', 'Casia', 'Canecka', 3),
(96, '1T04', 'Dasia', 'Danecka', 3),
(97, '1T05', 'Easia', 'Eanecka', 3),
(98, '1T06', 'Fasia', 'Fanecka', 3),
(99, '1T07', 'Gasia', 'Ganecka', 3),
(100, '1T08', 'Hasia', 'Hanecka', 3),
(101, '1T09', 'Iasia', 'Ianecka', 3),
(102, '1T10', 'Jasia', 'Janecka', 3),
(103, '1T11', 'Kasia', 'Kanecka', 3),
(104, '1T12', 'Lasia', 'Lanecka', 3),
(116, '2T01', 'Arek', 'Arobu', 4),
(117, '2T02', 'Barek', 'Barobu', 4),
(118, '2T03', 'Carek', 'Carobu', 4),
(119, '2T04', 'Darek', 'Darobu', 4),
(120, '2T05', 'Earek', 'Earobu', 4),
(121, '2T06', 'Farek', 'Farobu', 4),
(122, '2T07', 'Garek', 'Garobu', 4),
(123, '2T08', 'Harek', 'Harobu', 4),
(124, '2T09', 'Iarek', 'Iarobu', 4),
(125, '2T10', 'Jarek', 'Jarobu', 4),
(126, '2T11', 'Karek', 'Karobu', 4),
(127, '2T12', 'Larek', 'Larobu', 4),
(128, '2T13', 'Marek', 'Marobu', 4),
(105, 'A01', 'Lodówka', 'Amica', 8),
(106, 'A02', 'Czajnik', 'Zelmer', 8),
(107, 'A03', 'Gazówka', 'Mastercook', 8),
(108, 'A04', 'Ekspres do kawy', 'Saeco', 8),
(109, 'A05', 'Telewizor', 'Samsung', 8),
(110, 'A06', 'Głośniki', 'Creative', 8),
(111, 'A07', 'Radio', 'Pioneer', 8),
(112, 'A08', 'Monitor', 'LG', 8),
(113, 'A09', 'Zmywarka', 'Bosch', 8),
(114, 'A10', 'Telefon', 'Xiaomi', 8),
(115, 'A11', 'Samochód', 'Tesla', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allowance`
--
ALTER TABLE `allowance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `examid` (`examid`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `examowners`
--
ALTER TABLE `examowners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `examid` (`examid`),
  ADD KEY `teacherid` (`teacherid`);

--
-- Indexes for table `examtypes`
--
ALTER TABLE `examtypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id` (`Id`),
  ADD KEY `userCode` (`userCode`),
  ADD KEY `ExamID` (`examid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `exam` (`exam`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classid` (`classid`),
  ADD KEY `teacherid` (`teacherid`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`username`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userCode`),
  ADD UNIQUE KEY `userCode` (`userCode`),
  ADD KEY `id` (`id`),
  ADD KEY `userCode_2` (`userCode`),
  ADD KEY `userCode_3` (`userCode`),
  ADD KEY `classid` (`classid`),
  ADD KEY `classid_2` (`classid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allowance`
--
ALTER TABLE `allowance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `examowners`
--
ALTER TABLE `examowners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `examtypes`
--
ALTER TABLE `examtypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1278;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `allowance`
--
ALTER TABLE `allowance`
  ADD CONSTRAINT `allowance_ibfk_1` FOREIGN KEY (`examid`) REFERENCES `examtypes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `allowance_ibfk_2` FOREIGN KEY (`userCode`) REFERENCES `users` (`userCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `examowners`
--
ALTER TABLE `examowners`
  ADD CONSTRAINT `examowners_ibfk_1` FOREIGN KEY (`examid`) REFERENCES `examtypes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `examowners_ibfk_2` FOREIGN KEY (`teacherid`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`ExamID`) REFERENCES `examtypes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`userCode`) REFERENCES `users` (`userCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `history_ibfk_3` FOREIGN KEY (`examid`) REFERENCES `examtypes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`exam`) REFERENCES `examtypes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`classid`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subjects_ibfk_2` FOREIGN KEY (`teacherid`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`classid`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
