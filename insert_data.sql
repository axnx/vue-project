
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
-- companies
INSERT INTO companies (symbol, name, sector) VALUES
('AAPL', 'Apple Inc.', 'Electronic Technology'),
('MSFT', 'Microsoft Corporation', 'Technology Services'),
('GOOG', 'Alphabet Inc.', 'Technology Services'),
('GOOGL', 'Alphabet Inc.', 'Technology Services'),
('AMZN', 'Amazon.com, Inc.', 'Retail Trade'),
('NVDA', 'NVIDIA Corporation', 'Electronic Technology'),
('BRK.B', 'Berkshire Hathaway Inc. New', 'Finance'),
('META', 'Meta Platforms, Inc.', 'Technology Services'),
('TSLA', 'Tesla, Inc.', 'Consumer Durables'),
('LLY', 'Eli Lilly and Company', 'Health Technology'),
('V', 'Visa Inc.', 'Commercial Services'),
('UNH', 'UnitedHealth Group Incorporated', 'Health Services'),
('JNJ', 'Johnson & Johnson', 'Health Technology'),
('XOM', 'Exxon Mobil Corporation', 'Energy Minerals'),
('JPM', 'JP Morgan Chase & Co.', 'Finance'),
('WMT', 'Walmart Inc.', 'Retail Trade'),
('MA', 'Mastercard Incorporated', 'Commercial Services'),
('PG', 'Procter & Gamble Company (The)', 'Consumer Non-Durables'),
('AVGO', 'Broadcom Inc.', 'Electronic Technology'),
('HD', 'Home Depot, Inc. (The)', 'Retail Trade'),
('ORCL', 'Oracle Corporation', 'Technology Services'),
('CVX', 'Chevron Corporation', 'Energy Minerals'),
('MRK', 'Merck & Company, Inc.', 'Health Technology'),
('ABBV', 'AbbVie Inc.', 'Health Technology'),
('KO', 'Coca-Cola Company (The)', 'Consumer Non-Durables'),
('PEP', 'PepsiCo, Inc.', 'Consumer Non-Durables'),
('COST', 'Costco Wholesale Corporation', 'Retail Trade'),
('ADBE', 'Adobe Inc.', 'Technology Services'),
('BAC', 'Bank of America Corporation', 'Finance'),
('CSCO', 'Cisco Systems, Inc.', 'Technology Services'),
('PFE', 'Pfizer, Inc.', 'Health Technology'),
('TMO', 'Thermo Fisher Scientific Inc', 'Health Technology'),
('MCD', 'McDonald’s Corporation', 'Consumer Services'),
('ACN', 'Accenture plc', 'Technology Services'),
('CRM', 'Salesforce, Inc.', 'Technology Services'),
('CMCSA', 'Comcast Corporation', 'Consumer Services'),
('DHR', 'Danaher Corporation', 'Health Technology'),
('LIN', 'Linde plc', 'Process Industries'),
('ABT', 'Abbott Laboratories', 'Health Technology'),
('NFLX', 'Netflix, Inc.', 'Technology Services'),
('AMD', 'Advanced Micro Devices, Inc.', 'Electronic Technology'),
('NKE', 'Nike, Inc.', 'Consumer Non-Durables'),
('TMUS', 'T-Mobile US, Inc.', 'Communications'),
('DIS', 'Walt Disney Company (The)', 'Consumer Services'),
('WFC', 'Wells Fargo & Company', 'Finance'),
('TXN', 'Texas Instruments Incorporated', 'Electronic Technology'),
('PM', 'Philip Morris International Inc', 'Consumer Non-Durables'),
('UPS', 'United Parcel Service, Inc.', 'Transportation'),
('MS', 'Morgan Stanley', 'Finance'),
('COP', 'ConocoPhillips', 'Energy Minerals'),
('AMGN', 'Amgen Inc.', 'Health Technology'),
('CAT', 'Caterpillar, Inc.', 'Producer Manufacturing'),
('VZ', 'Verizon Communications Inc.', 'Communications'),
('UNP', 'Union Pacific Corporation', 'Transportation'),
('NEE', 'NextEra Energy, Inc.', 'Utilities'),
('INTC', 'Intel Corporation', 'Electronic Technology'),
('BA', 'Boeing Company (The)', 'Electronic Technology'),
('INTU', 'Intuit Inc.', 'Technology Services'),
('BMY', 'Bristol-Myers Squibb Company', 'Health Technology'),
('IBM', 'International Business Machines Corporation', 'Technology Services'),
('LOW', 'Lowe’s Companies, Inc.', 'Retail Trade'),
('RTX', 'RTX Corporation', 'Electronic Technology'),
('HON', 'Honeywell International Inc.', 'Electronic Technology'),
('QCOM', 'QUALCOMM Incorporated', 'Electronic Technology'),
('GE', 'General Electric Company', 'Producer Manufacturing'),
('SPGI', 'S&P Global Inc.', 'Commercial Services'),
('AMAT', 'Applied Materials, Inc.', 'Producer Manufacturing'),
('AXP', 'American Express Company', 'Finance'),
('DE', 'Deere & Company', 'Producer Manufacturing'),
('PLD', 'Prologis, Inc.', 'Finance'),
('LMT', 'Lockheed Martin Corporation', 'Electronic Technology'),
('SBUX', 'Starbucks Corporation', 'Consumer Services'),
('NOW', 'ServiceNow, Inc.', 'Technology Services'),
('BKNG', 'Booking Holdings Inc. Common Stock', 'Consumer Services'),
('ELV', 'Elevance Health, Inc.', 'Health Services'),
('MDT', 'Medtronic plc.', 'Health Technology'),
('SCHW', 'Charles Schwab Corporation (The)', 'Finance'),
('GS', 'Goldman Sachs Group, Inc. (The)', 'Finance'),
('SYK', 'Stryker Corporation', 'Health Technology'),
('ADP', 'Automatic Data Processing, Inc.', 'Technology Services'),
('TJX', 'TJX Companies, Inc. (The)', 'Retail Trade'),
('ISRG', 'Intuitive Surgical, Inc.', 'Health Technology'),
('T', 'AT&T Inc.', 'Communications'),
('BLK', 'BlackRock, Inc.', 'Finance'),
('MDLZ', 'Mondelez International, Inc.', 'Consumer Non-Durables'),
('GILD', 'Gilead Sciences, Inc.', 'Health Technology'),
('MMC', 'Marsh & McLennan Companies, Inc.', 'Finance'),
('VRTX', 'Vertex Pharmaceuticals Incorporated', 'Health Technology'),
('ADI', 'Analog Devices, Inc.', 'Electronic Technology'),
('REGN', 'Regeneron Pharmaceuticals, Inc.', 'Health Technology'),
('LRCX', 'Lam Research Corporation', 'Producer Manufacturing'),
('CVS', 'CVS Health Corporation', 'Retail Trade'),
('ETN', 'Eaton Corporation, PLC', 'Producer Manufacturing'),
('SLB', 'Schlumberger N.V.', 'Industrial Services'),
('AMT', 'American Tower Corporation (REIT)', 'Finance'),
('CB', 'Chubb Limited', 'Finance'),
('CI', 'The Cigna Group', 'Health Services'),
('C', 'Citigroup, Inc.', 'Finance'),
('BDX', 'Becton, Dickinson and Company', 'Health Technology'),
('PGR', 'Progressive Corporation (The)', 'Finance'),
('MO', 'Altria Group, Inc.', 'Consumer Non-Durables'),
('EOG', 'EOG Resources, Inc.', 'Energy Minerals'),
('SO', 'Southern Company (The)', 'Utilities'),
('BSX', 'Boston Scientific Corporation', 'Distribution Services'),
('CME', 'CME Group Inc.', 'Finance'),
('FI', 'Fiserv, Inc.', 'Finance'),
('HCA', 'HCA Healthcare, Inc.', 'Health Services'),
('ITW', 'Illinois Tool Works Inc.', 'Producer Manufacturing'),
('ATVI', 'Activision Blizzard, Inc', 'Technology Services'),
('EQIX', 'Equinix, Inc.', 'Finance'),
('DUK', 'Duke Energy Corporation (Holding Company)', 'Utilities'),
('MU', 'Micron Technology, Inc.', 'Electronic Technology'),
('SHW', 'Sherwin-Williams Company (The)', 'Process Industries'),
('FDX', 'FedEx Corporation', 'Transportation'),
('AON', 'Aon plc', 'Finance'),
('KLAC', 'KLA Corporation', 'Electronic Technology'),
('PYPL', 'PayPal Holdings, Inc.', 'Commercial Services'),
('NOC', 'Northrop Grumman Corporation', 'Electronic Technology'),
('SNPS', 'Synopsys, Inc.', 'Technology Services'),
('WM', 'Waste Management, Inc.', 'Industrial Services'),
('PANW', 'Palo Alto Networks, Inc.', 'Technology Services'),
('ICE', 'Intercontinental Exchange Inc.', 'Finance'),
('APD', 'Air Products and Chemicals, Inc.', 'Process Industries'),
('CHTR', 'Charter Communications, Inc.', 'Consumer Services'),
('CSX', 'CSX Corporation', 'Transportation'),
('CL', 'Colgate-Palmolive Company', 'Consumer Non-Durables'),
('GD', 'General Dynamics Corporation', 'Electronic Technology'),
('HUM', 'Humana Inc.', 'Health Services'),
('TGT', 'Target Corporation', 'Retail Trade'),
('MAR', 'Marriott International', 'Consumer Services'),
('MNST', 'Monster Beverage Corporation', 'Consumer Non-Durables'),
('MCO', 'Moody’s Corporation', 'Commercial Services'),
('CDNS', 'Cadence Design Systems, Inc.', 'Technology Services'),
('MCK', 'McKesson Corporation', 'Distribution Services'),
('OXY', 'Occidental Petroleum Corporation', 'Energy Minerals'),
('ORLY', 'O’Reilly Automotive, Inc.', 'Retail Trade'),
('USB', 'U.S. Bancorp', 'Finance'),
('NTRS', 'Northern Trust Corporation', 'Finance'),
('RMD', 'ResMed Inc.', 'Health Technology'),
('ZBRA', 'Zebra Technologies Corporation', 'Electronic Technology'),
('CHKP', 'Check Point Software Technologies Ltd.', 'Technology Services'),
('DOV', 'Dover Corporation', 'Producer Manufacturing'),
('NDAQ', 'Nasdaq, Inc.', 'Finance'),
('JCI', 'Johnson Controls International plc', 'Producer Manufacturing'),
('DRI', 'Darden Restaurants, Inc.', 'Consumer Services'),
('HIG', 'The Hartford Financial Services Group, Inc.', 'Finance'),
('LDOS', 'Leidos Holdings, Inc.', 'Technology Services'),
('DTE', 'DTE Energy Company', 'Utilities'),
('PXD', 'Pioneer Natural Resources Company', 'Energy Minerals'),
('AJG', 'Arthur J. Gallagher & Co.', 'Finance'),
('MPC', 'Marathon Petroleum Corporation', 'Energy Minerals'),
('AEP', 'American Electric Power Company, Inc.', 'Utilities'),
('OKE', 'ONEOK, Inc.', 'Energy Minerals'),
('LNT', 'Alliant Energy Corporation', 'Utilities'),
('MTCH', 'Match Group, Inc.', 'Consumer Services'),
('PRGO', 'Perrigo Company plc', 'Health Technology'),
('ABMD', 'ABIOMED, Inc.', 'Health Technology'),
('STT', 'State Street Corporation', 'Finance'),
('TROW', 'T. Rowe Price Group, Inc.', 'Finance'),
('FANG', 'Diamondback Energy, Inc.', 'Energy Minerals'),
('FIS', 'FIS', 'Commercial Services'),
('CARR', 'Carrier Global Corporation', 'Producer Manufacturing'),
('SBAC', 'SBA Communications Corporation', 'Finance'),
('VTRS', 'Viatris Inc.', 'Health Technology'),
('ALGN', 'Align Technology, Inc.', 'Health Technology'),
('ADSK', 'Autodesk, Inc.', 'Technology Services'),
('CINF', 'Cincinnati Financial Corporation', 'Finance'),
('BAX', 'Baxter International Inc.', 'Health Technology'),
('FCX', 'Freeport-McMoRan Inc.', 'Basic Industries'),
('PEAK', 'Healthpeak Properties, Inc.', 'Finance'),
('APTV', 'Aptiv PLC', 'Electronic Technology'),
('ZTS', 'Zoetis Inc.', 'Health Technology'),
('PPL', 'PPL Corporation', 'Utilities'),
('RCL', 'Royal Caribbean Group', 'Consumer Services'),
('NTAP', 'NetApp, Inc.', 'Technology Services'),
('NEM', 'Newmont Corporation', 'Energy Minerals'),
('NOV', 'Nabors Industries Ltd.', 'Energy Minerals'),
('DRE', 'Duke Realty Corporation', 'Finance'),
('NRG', 'NRG Energy, Inc.', 'Utilities'),
('CAG', 'Conagra Brands, Inc.', 'Consumer Non-Durables'),
('TDG', 'TransDigm Group Incorporated', 'Producer Manufacturing')