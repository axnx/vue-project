
--userlogin
INSERT INTO userlogin (username, email, password) VALUES
('smueller', 'mueller@axms.de', 'test123'),
('jschmidt', 'schmidt@axms.de', 'hallo123'),
('mriet', 'riet@axms.de', 'urlaub');
--------------------------------------------------------------------------------s
--users

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
--version_history
INSERT INTO version_history (version) VALUES
('1.0'),
('1.2');