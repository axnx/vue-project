
-- insert_data.sql
--------------------------------------------------------------------------------
-- userlogin
INSERT INTO userlogin (username, email, password) VALUES
('admin', 'admin@admin', '$2b$10$WoK/btsv82.xxi63kSeqrOqaqPce0Ps86WTHeqmu5DLaycmELsNq.'),
('test', 'test@test.com', '$2b$10$9ndU/t1YjX1i9GZytYR7A.3GpTtuqpYXMcwO6MYWsM4UGsa3n0SBu'),
('max', 'max@max.com', '$2b$10$Hm5nToMtHW2YU2jBZ4XkheHgiHLhLLfC/OY6mTLYsyjKUu83IsiN.');
--('smueller', 'mueller@axms.de', 'test123'),
--('jschmidt', 'schmidt@axms.de', 'hallo123'),
--('mriet', 'riet@axms.de', 'urlaub'),
--------------------------------------------------------------------------------
-- users
INSERT INTO users (vorname, nachname, strasse, plz, ort) VALUES
('Anna', 'Müller', 'Hauptstraße 12', '10115', 'Berlin'),
('Lukas', 'Schmidt', 'Gartenweg 5', '20256', 'Hamburg'),
('Maria', 'Becker', 'Lindenstraße 8', '30159', 'Hannover'),
('Paul', 'Wagner', 'Bachstraße 45', '40479', 'Düsseldorf'),
('Laura', 'Fischer', 'Schulstraße 3', '50667', 'Köln'),
('Max', 'Weber', 'Mühlenweg 19', '80331', 'München'),
('Sophie', 'Hofmann', 'Rosenweg 7', '90402', 'Nürnberg'),
('Tim', 'Schulz', 'Wiesenstraße 21', '48143', 'Münster'),
('Leonie', 'Schneider', 'Feldstraße 11', '28203', 'Bremen'),
('Jonas', 'Braun', 'Ringstraße 30', '50825', 'Köln');
--------------------------------------------------------------------------------
-- version_history
INSERT INTO version_history (version) VALUES
('1.0'),
('1.2');
--------------------------------------------------------------------------------
-- department
INSERT INTO department (name) VALUES
('Technik'),
('Einkauf'),
('Lager'),
('Verkauf'),
('Vertrieb'),
('Geschäftsführung'),
('Personal'),
('Finanzbuchhaltung'),
('Schulung'),
('Marketing');
--------------------------------------------------------------------------------
-- countries
INSERT INTO countries (code, name) VALUES ('AD', 'Andorra');
INSERT INTO countries (code, name) VALUES ('AE', 'United Arab Emirates');
INSERT INTO countries (code, name) VALUES ('AF', 'Afghanistan');
INSERT INTO countries (code, name) VALUES ('AG', 'Antigua and Barbuda');
INSERT INTO countries (code, name) VALUES ('AI', 'Anguilla');
INSERT INTO countries (code, name) VALUES ('AL', 'Albania');
INSERT INTO countries (code, name) VALUES ('AM', 'Armenia');
INSERT INTO countries (code, name) VALUES ('AO', 'Angola');
INSERT INTO countries (code, name) VALUES ('AQ', 'Antarctica');
INSERT INTO countries (code, name) VALUES ('AR', 'Argentina');
INSERT INTO countries (code, name) VALUES ('AS', 'American Samoa');
INSERT INTO countries (code, name) VALUES ('AT', 'Austria');
INSERT INTO countries (code, name) VALUES ('AU', 'Australia');
INSERT INTO countries (code, name) VALUES ('AW', 'Aruba');
INSERT INTO countries (code, name) VALUES ('AX', 'Åland Islands');
INSERT INTO countries (code, name) VALUES ('AZ', 'Azerbaijan');
INSERT INTO countries (code, name) VALUES ('BA', 'Bosnia and Herzegovina');
INSERT INTO countries (code, name) VALUES ('BB', 'Barbados');
INSERT INTO countries (code, name) VALUES ('BD', 'Bangladesh');
INSERT INTO countries (code, name) VALUES ('BE', 'Belgium');
INSERT INTO countries (code, name) VALUES ('BF', 'Burkina Faso');
INSERT INTO countries (code, name) VALUES ('BG', 'Bulgaria');
INSERT INTO countries (code, name) VALUES ('BH', 'Bahrain');
INSERT INTO countries (code, name) VALUES ('BI', 'Burundi');
INSERT INTO countries (code, name) VALUES ('BJ', 'Benin');
INSERT INTO countries (code, name) VALUES ('BL', 'Saint Barthélemy');
INSERT INTO countries (code, name) VALUES ('BM', 'Bermuda');
INSERT INTO countries (code, name) VALUES ('BN', 'Brunei Darussalam');
INSERT INTO countries (code, name) VALUES ('BO', 'Bolivia');
INSERT INTO countries (code, name) VALUES ('BQ', 'Bonaire, Sint Eustatius and Saba');
INSERT INTO countries (code, name) VALUES ('BR', 'Brazil');
INSERT INTO countries (code, name) VALUES ('BS', 'Bahamas');
INSERT INTO countries (code, name) VALUES ('BT', 'Bhutan');
INSERT INTO countries (code, name) VALUES ('BV', 'Bouvet Island');
INSERT INTO countries (code, name) VALUES ('BW', 'Botswana');
INSERT INTO countries (code, name) VALUES ('BY', 'Belarus');
INSERT INTO countries (code, name) VALUES ('BZ', 'Belize');
INSERT INTO countries (code, name) VALUES ('CA', 'Canada');
INSERT INTO countries (code, name) VALUES ('CC', 'Cocos (Keeling) Islands');
INSERT INTO countries (code, name) VALUES ('CD', 'Democratic Republic of the Congo');
INSERT INTO countries (code, name) VALUES ('CF', 'Central African Republic');
INSERT INTO countries (code, name) VALUES ('CG', 'Republic of the Congo');
INSERT INTO countries (code, name) VALUES ('CH', 'Switzerland');
INSERT INTO countries (code, name) VALUES ('CI', 'Ivory Coast');
INSERT INTO countries (code, name) VALUES ('CK', 'Cook Islands');
INSERT INTO countries (code, name) VALUES ('CL', 'Chile');
INSERT INTO countries (code, name) VALUES ('CM', 'Cameroon');
INSERT INTO countries (code, name) VALUES ('CN', 'China');
INSERT INTO countries (code, name) VALUES ('CO', 'Colombia');
INSERT INTO countries (code, name) VALUES ('CR', 'Costa Rica');
INSERT INTO countries (code, name) VALUES ('CU', 'Cuba');
INSERT INTO countries (code, name) VALUES ('CV', 'Cabo Verde');
INSERT INTO countries (code, name) VALUES ('CW', 'Curaçao');
INSERT INTO countries (code, name) VALUES ('CX', 'Christmas Island');
INSERT INTO countries (code, name) VALUES ('CY', 'Cyprus');
INSERT INTO countries (code, name) VALUES ('CZ', 'Czech Republic');
INSERT INTO countries (code, name) VALUES ('DE', 'Germany');
INSERT INTO countries (code, name) VALUES ('DJ', 'Djibouti');
INSERT INTO countries (code, name) VALUES ('DK', 'Denmark');
INSERT INTO countries (code, name) VALUES ('DM', 'Dominica');
INSERT INTO countries (code, name) VALUES ('DO', 'Dominican Republic');
INSERT INTO countries (code, name) VALUES ('DZ', 'Algeria');
INSERT INTO countries (code, name) VALUES ('EC', 'Ecuador');
INSERT INTO countries (code, name) VALUES ('EE', 'Estonia');
INSERT INTO countries (code, name) VALUES ('EG', 'Egypt');
INSERT INTO countries (code, name) VALUES ('EH', 'Western Sahara');
INSERT INTO countries (code, name) VALUES ('ER', 'Eritrea');
INSERT INTO countries (code, name) VALUES ('ES', 'Spain');
INSERT INTO countries (code, name) VALUES ('ET', 'Ethiopia');
INSERT INTO countries (code, name) VALUES ('EU', 'European Union');
INSERT INTO countries (code, name) VALUES ('FI', 'Finland');
INSERT INTO countries (code, name) VALUES ('FJ', 'Fiji');
INSERT INTO countries (code, name) VALUES ('FK', 'Falkland Islands (Malvinas)');
INSERT INTO countries (code, name) VALUES ('FM', 'Micronesia');
INSERT INTO countries (code, name) VALUES ('FO', 'Faroe Islands');
INSERT INTO countries (code, name) VALUES ('FR', 'France');
INSERT INTO countries (code, name) VALUES ('GA', 'Gabon');
INSERT INTO countries (code, name) VALUES ('GB', 'United Kingdom');
INSERT INTO countries (code, name) VALUES ('GD', 'Grenada');
INSERT INTO countries (code, name) VALUES ('GE', 'Georgia');
INSERT INTO countries (code, name) VALUES ('GF', 'French Guiana');
INSERT INTO countries (code, name) VALUES ('GG', 'Guernsey');
INSERT INTO countries (code, name) VALUES ('GH', 'Ghana');
INSERT INTO countries (code, name) VALUES ('GI', 'Gibraltar');
INSERT INTO countries (code, name) VALUES ('GL', 'Greenland');
INSERT INTO countries (code, name) VALUES ('GM', 'Gambia');
INSERT INTO countries (code, name) VALUES ('GN', 'Guinea');
INSERT INTO countries (code, name) VALUES ('GP', 'Guadeloupe');
INSERT INTO countries (code, name) VALUES ('GQ', 'Equatorial Guinea');
INSERT INTO countries (code, name) VALUES ('GR', 'Greece');
INSERT INTO countries (code, name) VALUES ('GS', 'South Georgia and the South Sandwich Islands');
INSERT INTO countries (code, name) VALUES ('GT', 'Guatemala');
INSERT INTO countries (code, name) VALUES ('GU', 'Guam');
INSERT INTO countries (code, name) VALUES ('GW', 'Guinea-Bissau');
INSERT INTO countries (code, name) VALUES ('GY', 'Guyana');
INSERT INTO countries (code, name) VALUES ('HK', 'Hong Kong');
INSERT INTO countries (code, name) VALUES ('HM', 'Heard Island and McDonald Islands');
INSERT INTO countries (code, name) VALUES ('HN', 'Honduras');
INSERT INTO countries (code, name) VALUES ('HR', 'Croatia');
INSERT INTO countries (code, name) VALUES ('HT', 'Haiti');
INSERT INTO countries (code, name) VALUES ('HU', 'Hungary');
INSERT INTO countries (code, name) VALUES ('ID', 'Indonesia');
INSERT INTO countries (code, name) VALUES ('IE', 'Ireland');
INSERT INTO countries (code, name) VALUES ('IK', 'Iceland');
INSERT INTO countries (code, name) VALUES ('IL', 'Israel');
INSERT INTO countries (code, name) VALUES ('IM', 'Isle of Man');
INSERT INTO countries (code, name) VALUES ('IN', 'India');
INSERT INTO countries (code, name) VALUES ('IO', 'British Indian Ocean Territory');
INSERT INTO countries (code, name) VALUES ('IQ', 'Iraq');
INSERT INTO countries (code, name) VALUES ('IR', 'Iran');
INSERT INTO countries (code, name) VALUES ('IS', 'Iceland');
INSERT INTO countries (code, name) VALUES ('IT', 'Italy');
INSERT INTO countries (code, name) VALUES ('JE', 'Jersey');
INSERT INTO countries (code, name) VALUES ('JM', 'Jamaica');
INSERT INTO countries (code, name) VALUES ('JO', 'Jordan');
INSERT INTO countries (code, name) VALUES ('JP', 'Japan');
INSERT INTO countries (code, name) VALUES ('KE', 'Kenya');
INSERT INTO countries (code, name) VALUES ('KG', 'Kyrgyzstan');
INSERT INTO countries (code, name) VALUES ('KH', 'Cambodia');
INSERT INTO countries (code, name) VALUES ('KI', 'Kiribati');
INSERT INTO countries (code, name) VALUES ('KM', 'Comoros');
INSERT INTO countries (code, name) VALUES ('KN', 'Saint Kitts and Nevis');
INSERT INTO countries (code, name) VALUES ('KP', 'North Korea');
INSERT INTO countries (code, name) VALUES ('KR', 'South Korea');
INSERT INTO countries (code, name) VALUES ('KW', 'Kuwait');
INSERT INTO countries (code, name) VALUES ('KY', 'Cayman Islands');
INSERT INTO countries (code, name) VALUES ('KZ', 'Kazakhstan');
INSERT INTO countries (code, name) VALUES ('LA', 'Laos');
INSERT INTO countries (code, name) VALUES ('LB', 'Lebanon');
INSERT INTO countries (code, name) VALUES ('LC', 'Saint Lucia');
INSERT INTO countries (code, name) VALUES ('LI', 'Liechtenstein');
INSERT INTO countries (code, name) VALUES ('LK', 'Sri Lanka');
INSERT INTO countries (code, name) VALUES ('LR', 'Liberia');
INSERT INTO countries (code, name) VALUES ('LS', 'Lesotho');
INSERT INTO countries (code, name) VALUES ('LT', 'Lithuania');
INSERT INTO countries (code, name) VALUES ('LU', 'Luxembourg');
INSERT INTO countries (code, name) VALUES ('LV', 'Latvia');
INSERT INTO countries (code, name) VALUES ('LY', 'Libya');
INSERT INTO countries (code, name) VALUES ('MA', 'Morocco');
INSERT INTO countries (code, name) VALUES ('MC', 'Monaco');
INSERT INTO countries (code, name) VALUES ('MD', 'Moldova');
INSERT INTO countries (code, name) VALUES ('ME', 'Montenegro');
INSERT INTO countries (code, name) VALUES ('MF', 'Saint Martin');
INSERT INTO countries (code, name) VALUES ('MG', 'Madagascar');
INSERT INTO countries (code, name) VALUES ('MH', 'Marshall Islands');
INSERT INTO countries (code, name) VALUES ('MK', 'North Macedonia');
INSERT INTO countries (code, name) VALUES ('ML', 'Mali');
INSERT INTO countries (code, name) VALUES ('MM', 'Myanmar');
INSERT INTO countries (code, name) VALUES ('MN', 'Mongolia');
INSERT INTO countries (code, name) VALUES ('MO', 'Macao');
INSERT INTO countries (code, name) VALUES ('MP', 'Northern Mariana Islands');
INSERT INTO countries (code, name) VALUES ('MQ', 'Martinique');
INSERT INTO countries (code, name) VALUES ('MR', 'Mauritania');
INSERT INTO countries (code, name) VALUES ('MS', 'Montserrat');
INSERT INTO countries (code, name) VALUES ('MT', 'Malta');
INSERT INTO countries (code, name) VALUES ('MU', 'Mauritius');
INSERT INTO countries (code, name) VALUES ('MV', 'Maldives');
INSERT INTO countries (code, name) VALUES ('MW', 'Malawi');
INSERT INTO countries (code, name) VALUES ('MX', 'Mexico');
INSERT INTO countries (code, name) VALUES ('MY', 'Malaysia');
INSERT INTO countries (code, name) VALUES ('MZ', 'Mozambique');
INSERT INTO countries (code, name) VALUES ('NA', 'Namibia');
INSERT INTO countries (code, name) VALUES ('NC', 'New Caledonia');
INSERT INTO countries (code, name) VALUES ('NE', 'Niger');
INSERT INTO countries (code, name) VALUES ('NF', 'Norfolk Island');
INSERT INTO countries (code, name) VALUES ('NG', 'Nigeria');
INSERT INTO countries (code, name) VALUES ('NI', 'Nicaragua');
INSERT INTO countries (code, name) VALUES ('NL', 'Netherlands');
INSERT INTO countries (code, name) VALUES ('NO', 'Norway');
INSERT INTO countries (code, name) VALUES ('NP', 'Nepal');
INSERT INTO countries (code, name) VALUES ('NR', 'Nauru');
INSERT INTO countries (code, name) VALUES ('NU', 'Niue');
INSERT INTO countries (code, name) VALUES ('NZ', 'New Zealand');
INSERT INTO countries (code, name) VALUES ('OM', 'Oman');
INSERT INTO countries (code, name) VALUES ('PA', 'Panama');
INSERT INTO countries (code, name) VALUES ('PE', 'Peru');
INSERT INTO countries (code, name) VALUES ('PF', 'French Polynesia');
INSERT INTO countries (code, name) VALUES ('PG', 'Papua New Guinea');
INSERT INTO countries (code, name) VALUES ('PH', 'Philippines');
INSERT INTO countries (code, name) VALUES ('PK', 'Pakistan');
INSERT INTO countries (code, name) VALUES ('PL', 'Poland');
INSERT INTO countries (code, name) VALUES ('PM', 'Saint Pierre and Miquelon');
INSERT INTO countries (code, name) VALUES ('PN', 'Pitcairn');
INSERT INTO countries (code, name) VALUES ('PR', 'Puerto Rico');
INSERT INTO countries (code, name) VALUES ('PT', 'Portugal');
INSERT INTO countries (code, name) VALUES ('PW', 'Palau');
INSERT INTO countries (code, name) VALUES ('PY', 'Paraguay');
INSERT INTO countries (code, name) VALUES ('QA', 'Qatar');
INSERT INTO countries (code, name) VALUES ('RE', 'Réunion');
INSERT INTO countries (code, name) VALUES ('RO', 'Romania');
INSERT INTO countries (code, name) VALUES ('RS', 'Serbia');
INSERT INTO countries (code, name) VALUES ('RU', 'Russia');
INSERT INTO countries (code, name) VALUES ('RW', 'Rwanda');
INSERT INTO countries (code, name) VALUES ('SA', 'Saudi Arabia');
INSERT INTO countries (code, name) VALUES ('SB', 'Solomon Islands');
INSERT INTO countries (code, name) VALUES ('SC', 'Seychelles');
INSERT INTO countries (code, name) VALUES ('SD', 'Sudan');
INSERT INTO countries (code, name) VALUES ('SE', 'Sweden');
INSERT INTO countries (code, name) VALUES ('SG', 'Singapore');
INSERT INTO countries (code, name) VALUES ('SH', 'Saint Helena');
INSERT INTO countries (code, name) VALUES ('SI', 'Slovenia');
INSERT INTO countries (code, name) VALUES ('SJ', 'Svalbard and Jan Mayen');
INSERT INTO countries (code, name) VALUES ('SK', 'Slovakia');
INSERT INTO countries (code, name) VALUES ('SL', 'Sierra Leone');
INSERT INTO countries (code, name) VALUES ('SM', 'San Marino');
INSERT INTO countries (code, name) VALUES ('SN', 'Senegal');
INSERT INTO countries (code, name) VALUES ('SO', 'Somalia');
INSERT INTO countries (code, name) VALUES ('SR', 'Suriname');
INSERT INTO countries (code, name) VALUES ('SS', 'South Sudan');
INSERT INTO countries (code, name) VALUES ('ST', 'Sao Tome and Principe');
INSERT INTO countries (code, name) VALUES ('SV', 'El Salvador');
INSERT INTO countries (code, name) VALUES ('SX', 'Sint Maarten');
INSERT INTO countries (code, name) VALUES ('SY', 'Syria');
INSERT INTO countries (code, name) VALUES ('SZ', 'Eswatini');
INSERT INTO countries (code, name) VALUES ('TC', 'Turks and Caicos Islands');
INSERT INTO countries (code, name) VALUES ('TD', 'Chad');
INSERT INTO countries (code, name) VALUES ('TF', 'French Southern Territories');
INSERT INTO countries (code, name) VALUES ('TG', 'Togo');
INSERT INTO countries (code, name) VALUES ('TH', 'Thailand');
INSERT INTO countries (code, name) VALUES ('TJ', 'Tajikistan');
INSERT INTO countries (code, name) VALUES ('TK', 'Tokelau');
INSERT INTO countries (code, name) VALUES ('TL', 'Timor-Leste');
INSERT INTO countries (code, name) VALUES ('TM', 'Turkmenistan');
INSERT INTO countries (code, name) VALUES ('TN', 'Tunisia');
INSERT INTO countries (code, name) VALUES ('TO', 'Tonga');
INSERT INTO countries (code, name) VALUES ('TR', 'Turkey');
INSERT INTO countries (code, name) VALUES ('TT', 'Trinidad and Tobago');
INSERT INTO countries (code, name) VALUES ('TV', 'Tuvalu');
INSERT INTO countries (code, name) VALUES ('TZ', 'Tanzania');
INSERT INTO countries (code, name) VALUES ('UA', 'Ukraine');
INSERT INTO countries (code, name) VALUES ('UG', 'Uganda');
INSERT INTO countries (code, name) VALUES ('UM', 'United States Minor Outlying Islands');
INSERT INTO countries (code, name) VALUES ('US', 'United States');
INSERT INTO countries (code, name) VALUES ('UY', 'Uruguay');
INSERT INTO countries (code, name) VALUES ('UZ', 'Uzbekistan');
INSERT INTO countries (code, name) VALUES ('VA', 'Vatican City');
INSERT INTO countries (code, name) VALUES ('VC', 'Saint Vincent and the Grenadines');
INSERT INTO countries (code, name) VALUES ('VE', 'Venezuela');
INSERT INTO countries (code, name) VALUES ('VG', 'British Virgin Islands');
INSERT INTO countries (code, name) VALUES ('VI', 'United States Virgin Islands');
INSERT INTO countries (code, name) VALUES ('VN', 'Vietnam');
INSERT INTO countries (code, name) VALUES ('VU', 'Vanuatu');
INSERT INTO countries (code, name) VALUES ('WF', 'Wallis and Futuna');
INSERT INTO countries (code, name) VALUES ('WS', 'Samoa');
INSERT INTO countries (code, name) VALUES ('YE', 'Yemen');
INSERT INTO countries (code, name) VALUES ('YT', 'Mayotte');
INSERT INTO countries (code, name) VALUES ('ZA', 'South Africa');
INSERT INTO countries (code, name) VALUES ('ZM', 'Zambia');
INSERT INTO countries (code, name) VALUES ('ZW', 'Zimbabwe');
--------------------------------------------------------------------------------