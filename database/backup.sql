-- --------------------------------------------------------
-- Хост:                         192.168.10.10
-- Версия сервера:               8.0.23-0ubuntu0.20.04.1 - (Ubuntu)
-- Операционная система:         Linux
-- HeidiSQL Версия:              11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Дамп структуры базы данных geek_agile
DROP DATABASE IF EXISTS `geek_agile`;
CREATE DATABASE IF NOT EXISTS `geek_agile` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `geek_agile`;

-- Дамп структуры для таблица geek_agile.action
DROP TABLE IF EXISTS `action`;
CREATE TABLE IF NOT EXISTS `action` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы geek_agile.action: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
REPLACE INTO `action` (`id`, `name`, `info`, `created_at`, `updated_at`) VALUES
	(1, 'Полив', 'Полив осуществляется лейкой с водой', NULL, NULL),
	(2, 'Удобрение', 'Удобрение при помощие специальных средств', NULL, NULL),
	(3, 'Обработка', 'Обработка от вредителей и насекомых', NULL, NULL);
/*!40000 ALTER TABLE `action` ENABLE KEYS */;

-- Дамп структуры для таблица geek_agile.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы geek_agile.failed_jobs: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Дамп структуры для таблица geek_agile.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы geek_agile.migrations: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2021_05_24_195249_create_plant', 1),
	(5, '2021_05_26_184604_create__favor', 1),
	(6, '2021_05_26_192318_plant_add__watering_days', 1),
	(7, '2021_05_28_123720_plant_add_manuring', 1),
	(8, '2021_05_31_072824_plant_add_pest_control_days', 1),
	(9, '2021_06_02_134706_add_role_column_to_users_table', 1),
	(10, '2021_06_03_100946_plant_user_done', 1),
	(11, '2021_06_08_083546_add_avatar_field_in_users_table', 1),
	(12, '2021_06_16_141816_add_telegram_user_id_field_in_users_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Дамп структуры для таблица geek_agile.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы geek_agile.password_resets: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Дамп структуры для таблица geek_agile.plant
DROP TABLE IF EXISTS `plant`;
CREATE TABLE IF NOT EXISTS `plant` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_date` date NOT NULL DEFAULT '2021-06-21',
  `short_info` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `full_info` varchar(255) COLLATE utf8mb4_unicode_ci  NOT NULL,
  `photo_small_path` varchar(255) COLLATE utf8mb4_unicode_ci NULL,
  `photo_big_path` varchar(255) COLLATE utf8mb4_unicode_ci NULL,

  `watering_days` int NOT NULL,
  `manuring_days` int NOT NULL,
  `pest_control_days` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы geek_agile.plant: ~20 rows (приблизительно)
/*!40000 ALTER TABLE `plant` DISABLE KEYS */;
REPLACE INTO `plant` (`id`, `created_at`, `updated_at`, `name`, `add_date`, `short_info`, `full_info`, `photo_small_path`, `photo_big_path`, `watering_days`, `manuring_days`, `pest_control_days`) VALUES
	(1, NULL, NULL, 'Стронгилодон', '2021-03-18', 'Лиана, Бобовые', 'Растение стронгилодон (Strongylodon) — лиана из семейства Бобовых. В этот род включается порядка 14 видов. Родиной этого экзотического растения считаются Филиппины, хотя некоторые виды растут в Африке, на острове Мадагаскар и в восточноазиатских странах. Из-за необычного окраса соцветий стронгилодон также известен как «нефритовый цветок», «изумрудная (либо бирюзовая) лоза»', 'strongylodon-rastenie.jpg', 'strongylodon-rastenie.jpg', 5, 9, 17),
	(2, NULL, NULL, 'Эпипремнум', '2021-04-09', 'Травянистая лиана', 'Эпипремнум — это вечнозеленая травянистая лиана, которая ведёт полуэпифидный образ жизни. Они существуют как самостоятельно, так и в качестве паразитов на деревьях. У растения корневая система мочковатая, а также есть множество воздушных корней, которые являются дополнительной корневой системой. Основными корнями растение добывает питание, так же питательные вещества приносят образованные из междоузлий. А вот воздушные корни, появившиеся из узлов, цепляются за опору. Все воздушные корни через время деревенеют. Те, которые цепляются за опору — пробковые, а добывающие питание — древесные, покрытые лентовидными волокнами, которые образуют кору.', 'epipremnum_liana.jpg', 'epipremnum_liana.jpg', 10, 1, 14),
	(3, NULL, NULL, 'Плющ', '2021-04-12', 'Неприхотливая лиана', 'Хедера (Hedera) или комнатный плющ — популярное вечнозелёное растение семейства Аралиевые. Предполагается, что его научное название, «хедера», произошло от кельтского слова «шнур».', 'hedera-plyush.jpg', 'hedera-plyush.jpg', 7, 8, 2),
	(4, NULL, NULL, 'Фикус микрокарпа', '2021-05-02', 'Бонсай фикус', 'Родина фикуса микрокарпа – леса южно-восточной части Азии, юга Китая и северной части Австралии. Название растения основано на внешней характеристике его плода. Он очень мал: едва достигает сантиметра. На греческом языке маленький плод звучит как «mikros» и karpos», отсюда и русское «микрокарпа». Яркой особенностью внешнего вида фикуса микрокарпа является оголение части его корневой системы, поднимающейся над поверхностью почвы и принимающей самые причудливые формы. Листья овально-вытянутые, примерно 5-10 см в длину и 3-5 см в ширину, с заостренной вершиной. Поверхность листьев гладкая, тонко-кожистая, блестящая. На ветках они расположены поочередно, крепясь коротким черешком.', 'fikus_mikrokarpa.jpg', 'fikus_mikrokarpa.jpg', 4, 10, 14),
	(5, NULL, NULL, 'Нидуляриум', '2021-05-26', 'Семейство Бромелиевые', 'Нидуляриум (Nidularium) относится к семейству бромелиевых. Это растение в живой природе растет эпифитным способом, встречается во влажных тропиках Американского континента. Так как соцветие расположено в центре розетки с листьями, отсюда и название, условно переводящееся с латинского как «гнездо». Нидуляриум хорошо растет в местах с рассеянным дневным светом. Растение неоходимо притенять, особенно в полуденное время, когда солнечные лучи могут нанести вред листьям в виде ожогов. Осенью и зимой нидуляриум также нуждается в достаточно хорошем освещении, но притенение уже не требуется. Световой день должен быть не менее 12 часов, поэтому для дополнительного освещения можно установить лампу дневного света или специальную фитолампу.', 'nidulyarium_bromeliya.jpg', 'nidulyarium_bromeliya.jpg', 14, 1, 18),
	(6, NULL, NULL, 'Эхмея', '2021-04-29', 'Эпифит(древесный)', 'Эхмеи могут как расти на земле, так и быть эпифитами, обитающими на деревьях. В отличие от прочих представителей семейства, листовые пластинки эхмеи имеют колючки на краях. Сами листья собраны в розетку. Они могут иметь различную (в том числе пёструю) окраску и быть мягкими или более жёсткими.', 'aechmea-cvetok.jpg', 'aechmea-cvetok.jpg', 7, 5, 23),
	(7, NULL, NULL, 'Сеткреазия пурпурная', '2021-03-22', 'традесканция бледная', 'Сеткреазия пурпурная (Setcreasea purpurea), или традесканция бледная (Tradescantia pallida) представляет собой декоративное растение, и принадлежит роду сеткреазия, который происходит из семейства коммелиновые (Commelinaceae). Распространена в районах Восточной Мексики, а именно – на границе Мексиканского залива.', 'setcreasea-purpurea.jpg', 'setcreasea-purpurea.jpg', 3, 11, 28),
	(8, NULL, NULL, 'Драцена душистая', '2021-01-31', 'травянистое растение', 'Листья драцены прочные, имеют глянцевую поверхность и образуют плотное зеленое кольцо вокруг ствола. Они размещаются на нем по принципу очередности. Окрас может быть всех оттенков зеленого или желтого цвета. Существуют сорта драцены, у которых встречается двойное окрашивание листовой пластины. На них будут отчетливо заметны белые или темно-зеленые прожилки. У старых растений нижний слой листьев практически отсутствует, поэтому ствол выглядит оголенным.', 'dracena_dushistaya.jpg', 'dracena_dushistaya.jpg', 3, 7, 22),
	(9, NULL, NULL, 'Росянка', '2021-03-04', 'хищное растение', 'Внешний вид росянки совсем не напоминает ловушку для насекомых. Отличаются растения разных видов только по форме и размеру листьев, но общее у них – тоненькие мягкие ворсинки с капельками липкой жидкости, очень похожей на обычную росу. Когда насекомое садится на листок, чтобы утолить жажду «росой», то тут же прилипает и становится словно парализованным. При слабых попытках выбраться из липкого плена насекомое создает вибрации, которые дают своеобразный сигнал растению и листок сворачивается вместе с добычей. Росянка – цветущее растение, которое цветет в весенние месяцы розовыми или белыми цветами, которые впоследствии превращаются в коробочки с семенами. Некоторые сорта способны самоопыляться.', 'rosyanka_hishnik.jpg', 'rosyanka_hishnik.jpg', 3, 11, 13),
	(10, NULL, NULL, 'Саррацения', '2021-06-19', 'хищное растение', 'Саррацения (Sarracenia) является не совсем обычным представителем комнатных растений. Это — хищное растение из семейства Саррацениевых, произошедший из влажных торфяных мест Северной и Южной Америк.', 'sarraceniya_hishnik.jpg', 'sarraceniya_hishnik.jpg', 8, 3, 19),
	(11, NULL, NULL, 'Ирезине', '2021-02-22', 'Семейство Амарантовые', 'Ирезине (Iresine) — растение из семейства Амарантовых, которое бывает низкорослым, вьющимся травянистым или же кустарником, полукустарником или деревом. Место их произрастания — ландшафты Северной, Центральной и Южной Америки. Нередко его можно встретить в Австралии, на Малых и Больших Антильских островах.', 'irezine_rastenie.jpg', 'irezine_rastenie.jpg', 1, 14, 8),
	(12, NULL, NULL, 'Эхинокактус', '2021-01-01', 'Популярный кактус', 'Большая часть эхинокактусов имеет шаровидные побеги, по мере развития слегка вытягивающиеся вверх. Взрослые экземпляры могут дорастать до 1,5 м, но некоторые способны вытягиваться на 3 м вверх. Стебли таких кактусов покрыты выступающими рёбрами, усыпанными прямыми или изогнутыми колючками. У молодых экземпляров возрастом до 5 лет рёбра больше напоминают некрупные бугорки. У отдельных взрослых кактусов число рёбер может доходить до полусотни. На них располагаются покрытые пушком ареолы. В период цветения на верхушке стебля распускаются жёлтые, розовые или красные цветочки на короткой трубке, покрытой чешуйками. Иногда цветки располагаются кругами, образуя на кактусе подобие венка.', 'echinocactus-rastenie.jpg', 'echinocactus-rastenie.jpg', 10, 15, 8),
	(13, NULL, NULL, 'Лофофора', '2021-02-11', 'пейотль', 'Лофофора (Lophophora) один из уникальных представителей рода кактус. Второе название, которое упоминается в некоторой научной литературе – пейотль. В роду насчитывается от 1 до 4-х видов кактусов. В природной черте они встречаются на склонах гор поблизости с густыми кустарниками, которые заселяют Мексику и США.', 'lophophora-kaktus.jpg', 'lophophora-kaktus.jpg', 9, 8, 5),
	(14, NULL, NULL, 'Толстянка древовидная', '2021-04-21', 'суккулент ', 'Толстянка древовидная обладает вычурным утолщенным стволом небольшой длины. Зеленая кора имеет гладкую поверхность. После отмирания увядших листьев на коре остаются отпечатки рубцов. Указанное свойство придает ей схожесть с приземистым пышным деревом. Взрослые экземпляры способны вытягиваться до 3-х метров в длину.', 'crassula-arborescens.jpg', 'crassula-arborescens.jpg', 9, 3, 22),
	(15, NULL, NULL, 'Декабрист', '2021-03-08', 'лесной кактус', 'Комнатное растение «Декабрист» или лесной кактус получил свое название за невероятно красивое и пышное цветение, которое в большинстве случаев продолжается в декабре. В зимнее время растение привносит в дом частику весны, поднимает настроение и украшает помещение. Но бывает и так, что комнатный любимец вдруг не зацвел, а причины этого неизвестны. На самом деле, нужно просто соблюдать элементарные правила ухода за комнатным цветком на протяжении всего года. Декабрист считается растением неприхотливым и некапризным. И уж если он не цветет, значит необходимо выяснить, что именно не нравится цветку и срочно принять меры для создания благоприятной атмосферы. Сентябрь – это месяц, когда декабрист находится в периоде покоя. От того, в каких условиях он проведет этот месяц, зависит полноценная закладка бутонов и ближайший период цветения. Температура воздуха должна значительно понизиться, а объемы и частота поливов уменьшится в разы. В это время противопоказаны любые подкормки и опрыскивания.', 'dekabrist_cvetenie.jpg', 'dekabrist_cvetenie.jpg', 4, 11, 26),
	(16, NULL, NULL, 'Жакаранда', '2021-03-25', 'Семейство Бегониевые', 'Жакаранда (Jacaranda) – растение относят к семейству бегониевых. Существует не менее 50 видов жакаранды. Растет она в южной Америке, предпочитая тропический климат. Эту особенность следует учитывать при выращивании. Иногда название пишется как жаккаранда. Она может быть не только деревом или кустарником. Среди них встречаются также травянистые многолетние растения. Жакаранда имеет перистые листья, которые располагаются супротивно. Цветет соцветиями в виде метелки. Оно может располагаться на самой верхушки или произрастать из пазух листьев. Цветки имеют трубчатую форму, окрашены обычно в лиловый или же голубой цвет.', 'jacaranda_rastenie.jpg', 'jacaranda_rastenie.jpg', 2, 15, 9),
	(17, NULL, NULL, 'Литопсы', '2021-05-18', 'Живые камни', 'Растение литопс (Lithops) — суккулент, известный как «живой камень». Это растение принадлежит к семейству Аизовых. В переводе его название действительно означает «подобный камню». Необычный внешний вид литопса связан с местами его обитания — южноафриканскими пустынями. В естественной среде такие «камушки» растут на каменистом сухом грунте, буквально теряясь на его фоне. Литопсы представляют собой бесстебельные маленькие растения, состоящие из срощенных друг с другом толстых листов, по форме и окраске напоминают камни-голыши. Суккулент формирует лишь пару мясистых листьев, размеры которых составляют не более 4-5 см в длину и ширину. На вид они напоминают округлые камушки, окрашенные в оттенки серого, зелёного, голубого или бордового цветов. Оттенок листвы может меняться в зависимости от условий произрастания. Листья образуются напрямую от корня и у основания являются почти сросшимся. Они предназначены для запасания воды на периоды засухи. Литопсы имеют большое сходство с родственными им плейоспилосами и конофитумами, но всё же обладают определёнными отличиями в строении листвы.', 'lithops-opisanie.jpg', 'lithops-opisanie.jpg', 15, 8, 19),
	(18, NULL, NULL, 'Гимнокалициум', '2021-05-29', 'Семейство кактусовые', 'Гимнокалициум (Gymnocalycium) принадлежит к семейству кактусовых и представляет собой кактус шаровидной формы. Происхождение южноамериканское (Боливия, Аргентина, Уругвай, Аргентина и Бразилия). Название он носит латинское: «gymnos» и «calycium», что переводится соответственно как «голый» и «чашечка». А все потому, что трубочки цветков у него голые и покрытые множеством гладких чешуек.', 'gimnokalicium_kaktus.jpg', 'gimnokalicium_kaktus.jpg', 7, 13, 3),
	(19, NULL, NULL, 'Алоэ', '2021-04-07', 'Семейство Асфоделовых', 'Листовые пластинки алоэ часто отходят напрямую от корня. Обычно они длинные и мясистые. Листва некоторых видов имеет шипы, а часть покрыта восковым налётом. Соцветия алоэ напоминают кисти или метёлочки и состоят из ярких жёлтых, оранжевых или красных цветков трубчатой либо колокольчатой формы. Но в домашних условиях цветут лишь немногие представители рода алоэ.', 'aloe-rastenie.jpg', 'aloe-rastenie.jpg', 6, 5, 21),
	(20, NULL, NULL, 'Орхидея Фаленопсис', '2021-05-13', 'эффектные цветы', 'Орхидея фалинопсис (Phalaenopsis) – цветущее растение из семейства Орхидные. В природе эти эффектные цветы обитают в юго-восточных азиатских государствах и на Филлипинах, а также встречаются на австралийском континенте. Основная часть подобных растений является эпифитными и обитает на деревьях, но некоторые виды приспосабливаются и к жизни на камнях. Открытие фаленопсиса принадлежит немецкому путешественнику и ботанику Георгу Румфу. Он встретил представителей этого рода на индонезийских Островах Пряностей. Куст фаленопсиса формирует прикорневую розетку, которую составляют двухрядные длинные и сочные листовые пластинки. В их пазухах располагаются цветочные почки. Пробуждаться они начинают в том же порядке, что и появлялись — первыми цветоносы образуются из наиболее взрослых. Обычно в домашних условиях побег появляется лишь из одной такой почки за один раз. На появившемся из неё цветоносе располагаются кистевидные соцветия, состоящие из крупных цветков, своей формой похожими на бабочек. Окраска их может быть весьма разнообразной, в том числе фиолетовой, белой, красной, розовой, жёлтой и даже зелёной или коричневой. Лепестки могут быть украшены узором, цветочная губа при этом нередко имеет контрастный оттенок и выделяется на их фоне.', 'phalaenopsis-orhidea.jpg', 'phalaenopsis-orhidea.jpg', 5, 12, 29);
/*!40000 ALTER TABLE `plant` ENABLE KEYS */;

-- Дамп структуры для таблица geek_agile.plant_tag
DROP TABLE IF EXISTS `plant_tag`;
CREATE TABLE IF NOT EXISTS `plant_tag` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `plant_id` bigint unsigned NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `plant_tag_plant_id_foreign` (`plant_id`),
  CONSTRAINT `plant_tag_plant_id_foreign` FOREIGN KEY (`plant_id`) REFERENCES `plant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы geek_agile.plant_tag: ~80 rows (приблизительно)
/*!40000 ALTER TABLE `plant_tag` DISABLE KEYS */;
REPLACE INTO `plant_tag` (`id`, `created_at`, `updated_at`, `plant_id`, `tag`) VALUES
	(1, NULL, NULL, 1, 'напольные'),
	(2, NULL, NULL, 1, 'теневыносливые'),
	(3, NULL, NULL, 1, 'травянистые'),
	(4, NULL, NULL, 1, 'фотосинтезируют'),
	(5, NULL, NULL, 2, 'подвесные'),
	(6, NULL, NULL, 2, 'теневыносливые'),
	(7, NULL, NULL, 2, 'цветущие'),
	(8, NULL, NULL, 2, 'неприхотливые'),
	(9, NULL, NULL, 3, 'настольные'),
	(10, NULL, NULL, 3, 'теневыносливые'),
	(11, NULL, NULL, 3, 'цветущие'),
	(12, NULL, NULL, 3, 'фотосинтезируют'),
	(13, NULL, NULL, 4, 'подвесные'),
	(14, NULL, NULL, 4, 'теневыносливые'),
	(15, NULL, NULL, 4, 'цветущие'),
	(16, NULL, NULL, 4, 'фотосинтезируют'),
	(17, NULL, NULL, 5, 'настольные'),
	(18, NULL, NULL, 5, 'светолюбивые'),
	(19, NULL, NULL, 5, 'цветущие'),
	(20, NULL, NULL, 5, 'неприхотливые'),
	(21, NULL, NULL, 6, 'подвесные'),
	(22, NULL, NULL, 6, 'теневыносливые'),
	(23, NULL, NULL, 6, 'цветущие'),
	(24, NULL, NULL, 6, 'фотосинтезируют'),
	(25, NULL, NULL, 7, 'напольные'),
	(26, NULL, NULL, 7, 'светолюбивые'),
	(27, NULL, NULL, 7, 'травянистые'),
	(28, NULL, NULL, 7, 'фотосинтезируют'),
	(29, NULL, NULL, 8, 'подвесные'),
	(30, NULL, NULL, 8, 'светолюбивые'),
	(31, NULL, NULL, 8, 'цветущие'),
	(32, NULL, NULL, 8, 'неприхотливые'),
	(33, NULL, NULL, 9, 'напольные'),
	(34, NULL, NULL, 9, 'светолюбивые'),
	(35, NULL, NULL, 9, 'травянистые'),
	(36, NULL, NULL, 9, 'неприхотливые'),
	(37, NULL, NULL, 10, 'настольные'),
	(38, NULL, NULL, 10, 'светолюбивые'),
	(39, NULL, NULL, 10, 'цветущие'),
	(40, NULL, NULL, 10, 'фотосинтезируют'),
	(41, NULL, NULL, 11, 'подвесные'),
	(42, NULL, NULL, 11, 'теневыносливые'),
	(43, NULL, NULL, 11, 'цветущие'),
	(44, NULL, NULL, 11, 'неприхотливые'),
	(45, NULL, NULL, 12, 'настольные'),
	(46, NULL, NULL, 12, 'теневыносливые'),
	(47, NULL, NULL, 12, 'цветущие'),
	(48, NULL, NULL, 12, 'фотосинтезируют'),
	(49, NULL, NULL, 13, 'напольные'),
	(50, NULL, NULL, 13, 'светолюбивые'),
	(51, NULL, NULL, 13, 'травянистые'),
	(52, NULL, NULL, 13, 'фотосинтезируют'),
	(53, NULL, NULL, 14, 'напольные'),
	(54, NULL, NULL, 14, 'теневыносливые'),
	(55, NULL, NULL, 14, 'цветущие'),
	(56, NULL, NULL, 14, 'неприхотливые'),
	(57, NULL, NULL, 15, 'настольные'),
	(58, NULL, NULL, 15, 'светолюбивые'),
	(59, NULL, NULL, 15, 'цветущие'),
	(60, NULL, NULL, 15, 'неприхотливые'),
	(61, NULL, NULL, 16, 'напольные'),
	(62, NULL, NULL, 16, 'светолюбивые'),
	(63, NULL, NULL, 16, 'цветущие'),
	(64, NULL, NULL, 16, 'неприхотливые'),
	(65, NULL, NULL, 17, 'подвесные'),
	(66, NULL, NULL, 17, 'светолюбивые'),
	(67, NULL, NULL, 17, 'цветущие'),
	(68, NULL, NULL, 17, 'фотосинтезируют'),
	(69, NULL, NULL, 18, 'подвесные'),
	(70, NULL, NULL, 18, 'теневыносливые'),
	(71, NULL, NULL, 18, 'травянистые'),
	(72, NULL, NULL, 18, 'неприхотливые'),
	(73, NULL, NULL, 19, 'настольные'),
	(74, NULL, NULL, 19, 'теневыносливые'),
	(75, NULL, NULL, 19, 'травянистые'),
	(76, NULL, NULL, 19, 'фотосинтезируют'),
	(77, NULL, NULL, 20, 'подвесные'),
	(78, NULL, NULL, 20, 'светолюбивые'),
	(79, NULL, NULL, 20, 'цветущие'),
	(80, NULL, NULL, 20, 'фотосинтезируют');
/*!40000 ALTER TABLE `plant_tag` ENABLE KEYS */;

-- Дамп структуры для таблица geek_agile.plant_user_done
DROP TABLE IF EXISTS `plant_user_done`;
CREATE TABLE IF NOT EXISTS `plant_user_done` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `plant_id` bigint unsigned NOT NULL,
  `date` date NOT NULL,
  `action_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plant_user_done_plant_id_foreign` (`plant_id`),
  KEY `plant_user_done_action_id_foreign` (`action_id`),
  CONSTRAINT `plant_user_done_action_id_foreign` FOREIGN KEY (`action_id`) REFERENCES `action` (`id`),
  CONSTRAINT `plant_user_done_plant_id_foreign` FOREIGN KEY (`plant_id`) REFERENCES `plant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы geek_agile.plant_user_done: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `plant_user_done` DISABLE KEYS */;
REPLACE INTO `plant_user_done` (`id`, `user_id`, `plant_id`, `date`, `action_id`, `created_at`, `updated_at`) VALUES
	(21, 1, 1, '2021-06-11', 2, '2021-06-04 10:14:07', '2021-06-04 10:14:07'),
	(22, 1, 13, '2021-06-12', 1, '2021-06-04 10:14:15', '2021-06-04 10:14:15'),
	(25, 1, 18, '2021-06-02', 2, '2021-06-04 11:01:57', '2021-06-04 11:01:57'),
	(26, 1, 1, '2021-06-02', 1, '2021-06-04 17:39:36', '2021-06-04 17:39:36'),
	(27, 1, 1, '2021-06-04', 1, '2021-06-04 17:39:41', '2021-06-04 17:39:41'),
	(29, 1, 18, '2021-06-04', 2, '2021-06-04 17:39:46', '2021-06-04 17:39:46'),
	(36, 1, 1, '2021-06-03', 1, '2021-06-09 12:41:55', '2021-06-09 12:41:55'),
	(50, 1, 13, '2021-06-04', 1, '2021-06-09 12:46:31', '2021-06-09 12:46:31'),
	(57, 1, 2, '2021-06-04', 1, '2021-06-09 12:49:43', '2021-06-09 12:49:43'),
	(88, 1, 7, '2021-06-06', 2, '2021-06-09 15:09:32', '2021-06-09 15:09:32'),
	(89, 1, 13, '2021-06-06', 2, '2021-06-09 15:11:45', '2021-06-09 15:11:45'),
	(90, 1, 13, '2021-06-06', 1, '2021-06-09 15:11:45', '2021-06-09 15:11:45'),
	(91, 1, 3, '2021-06-06', 3, '2021-06-09 15:11:45', '2021-06-09 15:11:45'),
	(93, 1, 2, '2021-06-02', 1, '2021-06-09 15:11:52', '2021-06-09 15:11:52'),
	(94, 1, 13, '2021-06-02', 1, '2021-06-09 15:11:53', '2021-06-09 15:11:53'),
	(95, 1, 2, '2021-06-10', 1, '2021-06-09 15:11:59', '2021-06-09 15:11:59'),
	(96, 1, 13, '2021-06-10', 1, '2021-06-09 15:12:00', '2021-06-09 15:12:00'),
	(105, 1, 7, '2021-06-20', 3, '2021-06-09 16:37:36', '2021-06-09 16:37:36'),
	(109, 1, 7, '2021-06-04', 1, '2021-06-09 22:17:38', '2021-06-09 22:17:38'),
	(110, 1, 7, '2021-06-04', 2, '2021-06-09 22:17:39', '2021-06-09 22:17:39'),
	(111, 1, 10, '2021-06-04', 3, '2021-06-09 22:17:41', '2021-06-09 22:17:41'),
	(113, 1, 7, '2021-06-02', 2, '2021-06-09 22:17:43', '2021-06-09 22:17:43'),
	(114, 1, 10, '2021-06-02', 1, '2021-06-09 22:17:45', '2021-06-09 22:17:45'),
	(120, 1, 19, '2021-06-08', 2, '2021-06-09 22:17:54', '2021-06-09 22:17:54'),
	(121, 1, 7, '2021-06-08', 1, '2021-06-09 22:17:55', '2021-06-09 22:17:55'),
	(122, 1, 15, '2021-06-10', 1, '2021-06-09 22:17:56', '2021-06-09 22:17:56'),
	(123, 1, 7, '2021-06-10', 2, '2021-06-09 22:17:57', '2021-06-09 22:17:57'),
	(124, 1, 10, '2021-06-12', 1, '2021-06-09 22:17:59', '2021-06-09 22:17:59'),
	(125, 1, 7, '2021-06-12', 1, '2021-06-09 22:18:01', '2021-06-09 22:18:01'),
	(127, 1, 19, '2021-06-16', 2, '2021-06-09 22:18:05', '2021-06-09 22:18:05'),
	(128, 1, 10, '2021-06-16', 1, '2021-06-09 22:18:07', '2021-06-09 22:18:07'),
	(129, 1, 10, '2021-06-24', 1, '2021-06-09 22:18:10', '2021-06-09 22:18:10'),
	(130, 1, 15, '2021-06-24', 2, '2021-06-09 22:18:11', '2021-06-09 22:18:11'),
	(131, 1, 7, '2021-06-12', 2, '2021-06-09 22:18:14', '2021-06-09 22:18:14'),
	(132, 1, 19, '2021-06-10', 1, '2021-06-09 22:18:15', '2021-06-09 22:18:15'),
	(135, 1, 15, '2021-06-06', 2, '2021-06-15 19:11:25', '2021-06-15 19:11:25'),
	(136, 1, 10, '2021-06-06', 1, '2021-06-15 19:11:25', '2021-06-15 19:11:25'),
	(143, 1, 19, '2021-06-24', 2, '2021-06-15 19:11:54', '2021-06-15 19:11:54'),
	(144, 3, 15, '2021-06-03', 1, '2021-06-21 19:26:09', '2021-06-21 19:26:09'),
	(145, 3, 20, '2021-06-05', 1, '2021-06-21 19:26:10', '2021-06-21 19:26:10'),
	(146, 3, 15, '2021-06-06', 1, '2021-06-21 19:26:11', '2021-06-21 19:26:11'),
	(147, 3, 17, '2021-06-08', 2, '2021-06-21 19:26:14', '2021-06-21 19:26:14'),
	(148, 3, 15, '2021-06-09', 1, '2021-06-21 19:26:15', '2021-06-21 19:26:15'),
	(149, 3, 15, '2021-06-11', 2, '2021-06-21 19:26:17', '2021-06-21 19:26:17'),
	(150, 3, 15, '2021-06-12', 1, '2021-06-21 19:26:19', '2021-06-21 19:26:19'),
	(151, 3, 20, '2021-06-15', 1, '2021-06-21 19:26:21', '2021-06-21 19:26:21'),
	(152, 3, 17, '2021-06-15', 1, '2021-06-21 19:26:23', '2021-06-21 19:26:23'),
	(155, 3, 1, '2021-06-15', 1, '2021-06-21 19:26:27', '2021-06-21 19:26:27'),
	(156, 3, 20, '2021-06-20', 1, '2021-06-21 19:26:32', '2021-06-21 19:26:32'),
	(158, 3, 15, '2021-06-04', 1, '2021-06-21 19:30:53', '2021-06-21 19:30:53');
/*!40000 ALTER TABLE `plant_user_done` ENABLE KEYS */;

-- Дамп структуры для таблица geek_agile.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,

  `avatar` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram_user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Дамп данных таблицы geek_agile.users: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`, `telegram_user_id`) VALUES
	(1, 'Oleg', 'admin', 'wodya@wodya.ru', NULL, '$2y$10$ytj5kYDE1nCssqpLaP3H1OVr2sDAh30HbtxBW8TlTqg.TTm.jEmhu', NULL, NULL, NULL, NULL, 513318812),
	(2, 'user', 'user', 'user@user.ru', NULL, '$2y$10$Z45shz1xnUyaTmbImEc1IeRx2quSnRM822krTTlJmVCvuAAKw6leS', NULL, NULL, '2021-06-21 19:25:00', NULL, 513318812),
	(3, 'Misha Cheglok', 'admin', 'Kopytovmikhail@yandex.ru', NULL, '$2y$10$Nd22VsGvsYMnrMq76.qeeO/9WPBXyfJvTJTCbjiPin5ABjceTiKne', NULL, '2021-06-21 19:06:32', '2021-06-21 19:13:16', 'https://sun3-12.userapi.com/s/v1/ig2/C-Lm45kOJGccAtvewrpx3TUFAFO6fwD90i25P4lN93154YzEoSUdGIEVgp6AAItdbsHz58U2oZR6XBQu9Ke3_lqS.jpg?size=200x0&quality=96&crop=106,288,665,665&ava=1', 513318812);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Дамп структуры для таблица geek_agile.user_plant
DROP TABLE IF EXISTS `user_plant`;
CREATE TABLE IF NOT EXISTS `user_plant` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `plant_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы geek_agile.user_plant: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `user_plant` DISABLE KEYS */;
REPLACE INTO `user_plant` (`id`, `created_at`, `updated_at`, `user_id`, `plant_id`) VALUES
	(1, '2021-06-21 19:11:09', '2021-06-21 19:11:09', 3, 15),
	(2, '2021-06-21 19:11:17', '2021-06-21 19:11:17', 3, 17),
	(3, '2021-06-21 19:11:28', '2021-06-21 19:11:28', 3, 20),
	(5, '2021-06-21 19:18:28', '2021-06-21 19:18:28', 3, 1),
	(13, '2021-06-09 17:10:01', '2021-06-09 17:10:01', 2, 7),
	(23, '2021-06-09 22:17:16', '2021-06-09 22:17:16', 2, 19),
	(34, '2021-06-09 22:17:30', '2021-06-09 22:17:30', 2, 15),
	(53, '2021-06-09 17:10:01', '2021-06-09 17:10:01', 1, 7),
	(63, '2021-06-09 22:17:16', '2021-06-09 22:17:16', 1, 19),
	(64, '2021-06-09 22:17:30', '2021-06-09 22:17:30', 1, 15),
	(65, '2021-06-09 22:17:33', '2021-06-09 22:17:33', 1, 10),
	(95, '2021-06-09 22:17:33', '2021-06-09 22:17:33', 2, 10);
/*!40000 ALTER TABLE `user_plant` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;