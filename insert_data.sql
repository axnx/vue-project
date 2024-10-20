
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
INSERT INTO countries (code, name, continent) VALUES ('AD', 'Andorra', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('AE', 'United Arab Emirates', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('AF', 'Afghanistan', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('AG', 'Antigua and Barbuda', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('AI', 'Anguilla', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('AL', 'Albania', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('AM', 'Armenia', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('AO', 'Angola', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('AQ', 'Antarctica', 'Antarctica');
INSERT INTO countries (code, name, continent) VALUES ('AR', 'Argentina', 'South America');
INSERT INTO countries (code, name, continent) VALUES ('AS', 'American Samoa', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('AT', 'Austria', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('AU', 'Australia', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('AW', 'Aruba', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('AX', 'Åland Islands', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('AZ', 'Azerbaijan', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('BA', 'Bosnia and Herzegovina', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('BB', 'Barbados', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('BD', 'Bangladesh', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('BE', 'Belgium', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('BF', 'Burkina Faso', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('BG', 'Bulgaria', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('BH', 'Bahrain', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('BI', 'Burundi', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('BJ', 'Benin', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('BL', 'Saint Barthélemy', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('BM', 'Bermuda', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('BN', 'Brunei Darussalam', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('BO', 'Bolivia', 'South America');
INSERT INTO countries (code, name, continent) VALUES ('BQ', 'Bonaire, Sint Eustatius and Saba', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('BR', 'Brazil', 'South America');
INSERT INTO countries (code, name, continent) VALUES ('BS', 'Bahamas', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('BT', 'Bhutan', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('BV', 'Bouvet Island', 'Antarctica');
INSERT INTO countries (code, name, continent) VALUES ('BW', 'Botswana', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('BY', 'Belarus', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('BZ', 'Belize', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('CA', 'Canada', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('CC', 'Cocos (Keeling) Islands', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('CD', 'Democratic Republic of the Congo', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('CF', 'Central African Republic', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('CG', 'Republic of the Congo', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('CH', 'Switzerland', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('CI', 'Ivory Coast', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('CK', 'Cook Islands', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('CL', 'Chile', 'South America');
INSERT INTO countries (code, name, continent) VALUES ('CM', 'Cameroon', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('CN', 'China', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('CO', 'Colombia', 'South America');
INSERT INTO countries (code, name, continent) VALUES ('CR', 'Costa Rica', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('CU', 'Cuba', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('CV', 'Cabo Verde', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('CW', 'Curaçao', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('CX', 'Christmas Island', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('CY', 'Cyprus', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('CZ', 'Czech Republic', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('DE', 'Germany', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('DJ', 'Djibouti', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('DK', 'Denmark', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('DM', 'Dominica', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('DO', 'Dominican Republic', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('DZ', 'Algeria', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('EC', 'Ecuador', 'South America');
INSERT INTO countries (code, name, continent) VALUES ('EE', 'Estonia', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('EG', 'Egypt', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('EH', 'Western Sahara', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('ER', 'Eritrea', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('ES', 'Spain', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('ET', 'Ethiopia', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('EU', 'European Union', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('FI', 'Finland', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('FJ', 'Fiji', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('FK', 'Falkland Islands (Malvinas)', 'South America');
INSERT INTO countries (code, name, continent) VALUES ('FM', 'Micronesia', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('FO', 'Faroe Islands', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('FR', 'France', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('GA', 'Gabon', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('GB', 'United Kingdom', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('GD', 'Grenada', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('GE', 'Georgia', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('GF', 'French Guiana', 'South America');
INSERT INTO countries (code, name, continent) VALUES ('GG', 'Guernsey', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('GH', 'Ghana', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('GI', 'Gibraltar', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('GL', 'Greenland', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('GM', 'Gambia', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('GN', 'Guinea', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('GP', 'Guadeloupe', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('GQ', 'Equatorial Guinea', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('GR', 'Greece', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('GT', 'Guatemala', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('GU', 'Guam', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('GW', 'Guinea-Bissau', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('GY', 'Guyana', 'South America');
INSERT INTO countries (code, name, continent) VALUES ('HK', 'Hong Kong', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('HM', 'Heard Island and McDonald Islands', 'Antarctica');
INSERT INTO countries (code, name, continent) VALUES ('HN', 'Honduras', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('HR', 'Croatia', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('HT', 'Haiti', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('HU', 'Hungary', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('ID', 'Indonesia', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('IE', 'Ireland', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('IL', 'Israel', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('IM', 'Isle of Man', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('IN', 'India', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('IO', 'British Indian Ocean Territory', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('IQ', 'Iraq', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('IR', 'Iran', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('IS', 'Iceland', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('IT', 'Italy', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('JE', 'Jersey', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('JM', 'Jamaica', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('JO', 'Jordan', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('JP', 'Japan', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('KE', 'Kenya', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('KG', 'Kyrgyzstan', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('KH', 'Cambodia', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('KI', 'Kiribati', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('KM', 'Comoros', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('KN', 'Saint Kitts and Nevis', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('KP', 'North Korea', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('KR', 'South Korea', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('KW', 'Kuwait', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('KY', 'Cayman Islands', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('KZ', 'Kazakhstan', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('LA', 'Laos', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('LB', 'Lebanon', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('LC', 'Saint Lucia', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('LI', 'Liechtenstein', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('LK', 'Sri Lanka', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('LR', 'Liberia', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('LS', 'Lesotho', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('LT', 'Lithuania', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('LU', 'Luxembourg', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('LV', 'Latvia', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('LY', 'Libya', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('MA', 'Morocco', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('MC', 'Monaco', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('MD', 'Moldova', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('ME', 'Montenegro', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('MF', 'Saint Martin (French part)', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('MG', 'Madagascar', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('MH', 'Marshall Islands', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('MK', 'North Macedonia', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('ML', 'Mali', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('MM', 'Myanmar', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('MN', 'Mongolia', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('MO', 'Macao', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('MP', 'Northern Mariana Islands', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('MQ', 'Martinique', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('MR', 'Mauritania', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('MS', 'Montserrat', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('MT', 'Malta', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('MU', 'Mauritius', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('MV', 'Maldives', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('MW', 'Malawi', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('MX', 'Mexico', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('MY', 'Malaysia', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('MZ', 'Mozambique', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('NA', 'Namibia', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('NC', 'New Caledonia', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('NE', 'Niger', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('NF', 'Norfolk Island', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('NG', 'Nigeria', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('NI', 'Nicaragua', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('NL', 'Netherlands', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('NO', 'Norway', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('NP', 'Nepal', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('NR', 'Nauru', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('NU', 'Niue', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('NZ', 'New Zealand', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('OM', 'Oman', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('PA', 'Panama', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('PE', 'Peru', 'South America');
INSERT INTO countries (code, name, continent) VALUES ('PF', 'French Polynesia', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('PG', 'Papua New Guinea', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('PH', 'Philippines', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('PK', 'Pakistan', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('PL', 'Poland', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('PM', 'Saint Pierre and Miquelon', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('PN', 'Pitcairn', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('PR', 'Puerto Rico', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('PT', 'Portugal', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('PW', 'Palau', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('PY', 'Paraguay', 'South America');
INSERT INTO countries (code, name, continent) VALUES ('QA', 'Qatar', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('RE', 'Réunion', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('RO', 'Romania', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('RS', 'Serbia', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('RU', 'Russia', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('RW', 'Rwanda', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('SA', 'Saudi Arabia', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('SB', 'Solomon Islands', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('SC', 'Seychelles', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('SD', 'Sudan', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('SE', 'Sweden', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('SG', 'Singapore', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('SH', 'Saint Helena', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('SI', 'Slovenia', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('SJ', 'Svalbard and Jan Mayen', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('SK', 'Slovakia', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('SL', 'Sierra Leone', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('SM', 'San Marino', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('SN', 'Senegal', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('SO', 'Somalia', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('SR', 'Suriname', 'South America');
INSERT INTO countries (code, name, continent) VALUES ('SS', 'South Sudan', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('ST', 'Sao Tome and Principe', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('SV', 'El Salvador', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('SX', 'Sint Maarten (Dutch part)', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('SY', 'Syria', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('SZ', 'Eswatini', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('TC', 'Turks and Caicos Islands', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('TD', 'Chad', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('TF', 'French Southern Territories', 'Antarctica');
INSERT INTO countries (code, name, continent) VALUES ('TG', 'Togo', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('TH', 'Thailand', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('TJ', 'Tajikistan', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('TK', 'Tokelau', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('TL', 'Timor-Leste', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('TM', 'Turkmenistan', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('TN', 'Tunisia', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('TO', 'Tonga', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('TR', 'Turkey', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('TT', 'Trinidad and Tobago', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('TV', 'Tuvalu', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('TZ', 'Tanzania', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('UA', 'Ukraine', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('UG', 'Uganda', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('UM', 'United States Minor Outlying Islands', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('UN', 'United Nations', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('US', 'United States', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('UY', 'Uruguay', 'South America');
INSERT INTO countries (code, name, continent) VALUES ('UZ', 'Uzbekistan', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('VA', 'Vatican City', 'Europe');
INSERT INTO countries (code, name, continent) VALUES ('VC', 'Saint Vincent and the Grenadines', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('VE', 'Venezuela', 'South America');
INSERT INTO countries (code, name, continent) VALUES ('VG', 'British Virgin Islands', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('VI', 'U.S. Virgin Islands', 'North America');
INSERT INTO countries (code, name, continent) VALUES ('VN', 'Vietnam', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('VU', 'Vanuatu', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('WF', 'Wallis and Futuna', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('WS', 'Samoa', 'Oceania');
INSERT INTO countries (code, name, continent) VALUES ('YE', 'Yemen', 'Asia');
INSERT INTO countries (code, name, continent) VALUES ('YT', 'Mayotte', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('ZA', 'South Africa', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('ZM', 'Zambia', 'Africa');
INSERT INTO countries (code, name, continent) VALUES ('ZW', 'Zimbabwe', 'Africa');
--------------------------------------------------------------------------------