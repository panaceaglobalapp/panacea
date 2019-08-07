CREATE TABLE "user" (
    "id" SERIAL PRIMARY KEY,
    "username" VARCHAR (80) UNIQUE NOT NULL,
    "password" VARCHAR (1000) NOT NULL
);

DROP TABLE “countries”;
DROP TABLE “cities”;
DROP TABLE “organizations”;
DROP TABLE “medications”;

CREATE TABLE countries (id VARCHAR(64) NOT NULL, value VARCHAR(64) NOT NULL, PRIMARY KEY(id));

CREATE TABLE "cities" (
    "id" SERIAL PRIMARY KEY,
    "created_at" TIMESTAMP NOT NULL DEFAULT NOW(),
    "country_id" VARCHAR REFERENCES "countries",
    "name" VARCHAR,
    "overview" VARCHAR,
    "health_risks" VARCHAR,
    "ambulance" VARCHAR,
    "fire" VARCHAR,
    "police" VARCHAR,
    "roadside_assistance" VARCHAR,
    "wellness_resources" VARCHAR,
    "local_health_remedies" VARCHAR,
    "healthcare_tourism" VARCHAR,
    "WHO_link" VARCHAR,
    "CDC_link" VARCHAR,
    "google_translate_link" VARCHAR,
    "local_resources" VARCHAR,
  	"lat" NUMERIC,
  	"long" NUMERIC
);

CREATE TABLE "organizations" (
  "id" SERIAL PRIMARY KEY,
  "created_at" TIMESTAMP NOT NULL DEFAULT NOW(),
  "city_id" INT REFERENCES "cities",
  "name" VARCHAR,
  "type" VARCHAR,
  "recommended" BOOLEAN DEFAULT FALSE,
  "twentyfour" BOOLEAN DEFAULT FALSE,
  "hours" VARCHAR,
  "homeopathic_remedies" VARCHAR,
  "labor_delivery" BOOLEAN,
  "childrens" BOOLEAN,
  "childrens_surgical" BOOLEAN,
  "adult" BOOLEAN,
  "adult_surgical" BOOLEAN,
  "medical_translators" BOOLEAN,
  "comments" VARCHAR,
  "phone_number" VARCHAR,
  "org_address" VARCHAR,
  "website_url" VARCHAR, 
  "lat" NUMERIC,
  "long" NUMERIC,
  "google_maps_link" VARCHAR
);

CREATE TABLE "medications" (
	"id" SERIAL PRIMARY KEY,
	"city_id" INT REFERENCES "cities" NOT NULL,
	"generic_name_us" VARCHAR,
	"brand_name_us" VARCHAR,
	"brand_name_translated" VARCHAR
);

INSERT INTO "countries" ("id", "value") VALUES (E'AF', E'Afghanistan');
INSERT INTO "countries" ("id", "value") VALUES (E'AX', E'Åland Islands');
INSERT INTO "countries" ("id", "value") VALUES (E'AL', E'Albania');
INSERT INTO "countries" ("id", "value") VALUES (E'DZ', E'Algeria');
INSERT INTO "countries" ("id", "value") VALUES (E'AS', E'American Samoa');
INSERT INTO "countries" ("id", "value") VALUES (E'AD', E'Andorra');
INSERT INTO "countries" ("id", "value") VALUES (E'AO', E'Angola');
INSERT INTO "countries" ("id", "value") VALUES (E'AI', E'Anguilla');
INSERT INTO "countries" ("id", "value") VALUES (E'AQ', E'Antarctica');
INSERT INTO "countries" ("id", "value") VALUES (E'AG', E'Antigua & Barbuda');
INSERT INTO "countries" ("id", "value") VALUES (E'AR', E'Argentina');
INSERT INTO "countries" ("id", "value") VALUES (E'AM', E'Armenia');
INSERT INTO "countries" ("id", "value") VALUES (E'AW', E'Aruba');
INSERT INTO "countries" ("id", "value") VALUES (E'AC', E'Ascension Island');
INSERT INTO "countries" ("id", "value") VALUES (E'AU', E'Australia');
INSERT INTO "countries" ("id", "value") VALUES (E'AT', E'Austria');
INSERT INTO "countries" ("id", "value") VALUES (E'AZ', E'Azerbaijan');
INSERT INTO "countries" ("id", "value") VALUES (E'BS', E'Bahamas');
INSERT INTO "countries" ("id", "value") VALUES (E'BH', E'Bahrain');
INSERT INTO "countries" ("id", "value") VALUES (E'BD', E'Bangladesh');
INSERT INTO "countries" ("id", "value") VALUES (E'BB', E'Barbados');
INSERT INTO "countries" ("id", "value") VALUES (E'BY', E'Belarus');
INSERT INTO "countries" ("id", "value") VALUES (E'BE', E'Belgium');
INSERT INTO "countries" ("id", "value") VALUES (E'BZ', E'Belize');
INSERT INTO "countries" ("id", "value") VALUES (E'BJ', E'Benin');
INSERT INTO "countries" ("id", "value") VALUES (E'BM', E'Bermuda');
INSERT INTO "countries" ("id", "value") VALUES (E'BT', E'Bhutan');
INSERT INTO "countries" ("id", "value") VALUES (E'BO', E'Bolivia');
INSERT INTO "countries" ("id", "value") VALUES (E'BA', E'Bosnia & Herzegovina');
INSERT INTO "countries" ("id", "value") VALUES (E'BW', E'Botswana');
INSERT INTO "countries" ("id", "value") VALUES (E'BR', E'Brazil');
INSERT INTO "countries" ("id", "value") VALUES (E'IO', E'British Indian Ocean Territory');
INSERT INTO "countries" ("id", "value") VALUES (E'VG', E'British Virgin Islands');
INSERT INTO "countries" ("id", "value") VALUES (E'BN', E'Brunei');
INSERT INTO "countries" ("id", "value") VALUES (E'BG', E'Bulgaria');
INSERT INTO "countries" ("id", "value") VALUES (E'BF', E'Burkina Faso');
INSERT INTO "countries" ("id", "value") VALUES (E'BI', E'Burundi');
INSERT INTO "countries" ("id", "value") VALUES (E'KH', E'Cambodia');
INSERT INTO "countries" ("id", "value") VALUES (E'CM', E'Cameroon');
INSERT INTO "countries" ("id", "value") VALUES (E'CA', E'Canada');
INSERT INTO "countries" ("id", "value") VALUES (E'IC', E'Canary Islands');
INSERT INTO "countries" ("id", "value") VALUES (E'CV', E'Cape Verde');
INSERT INTO "countries" ("id", "value") VALUES (E'BQ', E'Caribbean Netherlands');
INSERT INTO "countries" ("id", "value") VALUES (E'KY', E'Cayman Islands');
INSERT INTO "countries" ("id", "value") VALUES (E'CF', E'Central African Republic');
INSERT INTO "countries" ("id", "value") VALUES (E'EA', E'Ceuta & Melilla');
INSERT INTO "countries" ("id", "value") VALUES (E'TD', E'Chad');
INSERT INTO "countries" ("id", "value") VALUES (E'CL', E'Chile');
INSERT INTO "countries" ("id", "value") VALUES (E'CN', E'China');
INSERT INTO "countries" ("id", "value") VALUES (E'CX', E'Christmas Island');
INSERT INTO "countries" ("id", "value") VALUES (E'CC', E'Cocos (Keeling) Islands');
INSERT INTO "countries" ("id", "value") VALUES (E'CO', E'Colombia');
INSERT INTO "countries" ("id", "value") VALUES (E'KM', E'Comoros');
INSERT INTO "countries" ("id", "value") VALUES (E'CG', E'Congo - Brazzaville');
INSERT INTO "countries" ("id", "value") VALUES (E'CD', E'Congo - Kinshasa');
INSERT INTO "countries" ("id", "value") VALUES (E'CK', E'Cook Islands');
INSERT INTO "countries" ("id", "value") VALUES (E'CR', E'Costa Rica');
INSERT INTO "countries" ("id", "value") VALUES (E'CI', E'Côte d’Ivoire');
INSERT INTO "countries" ("id", "value") VALUES (E'HR', E'Croatia');
INSERT INTO "countries" ("id", "value") VALUES (E'CU', E'Cuba');
INSERT INTO "countries" ("id", "value") VALUES (E'CW', E'Curaçao');
INSERT INTO "countries" ("id", "value") VALUES (E'CY', E'Cyprus');
INSERT INTO "countries" ("id", "value") VALUES (E'CZ', E'Czechia');
INSERT INTO "countries" ("id", "value") VALUES (E'DK', E'Denmark');
INSERT INTO "countries" ("id", "value") VALUES (E'DG', E'Diego Garcia');
INSERT INTO "countries" ("id", "value") VALUES (E'DJ', E'Djibouti');
INSERT INTO "countries" ("id", "value") VALUES (E'DM', E'Dominica');
INSERT INTO "countries" ("id", "value") VALUES (E'DO', E'Dominican Republic');
INSERT INTO "countries" ("id", "value") VALUES (E'EC', E'Ecuador');
INSERT INTO "countries" ("id", "value") VALUES (E'EG', E'Egypt');
INSERT INTO "countries" ("id", "value") VALUES (E'SV', E'El Salvador');
INSERT INTO "countries" ("id", "value") VALUES (E'GQ', E'Equatorial Guinea');
INSERT INTO "countries" ("id", "value") VALUES (E'ER', E'Eritrea');
INSERT INTO "countries" ("id", "value") VALUES (E'EE', E'Estonia');
INSERT INTO "countries" ("id", "value") VALUES (E'SZ', E'Eswatini');
INSERT INTO "countries" ("id", "value") VALUES (E'ET', E'Ethiopia');
INSERT INTO "countries" ("id", "value") VALUES (E'FK', E'Falkland Islands');
INSERT INTO "countries" ("id", "value") VALUES (E'FO', E'Faroe Islands');
INSERT INTO "countries" ("id", "value") VALUES (E'FJ', E'Fiji');
INSERT INTO "countries" ("id", "value") VALUES (E'FI', E'Finland');
INSERT INTO "countries" ("id", "value") VALUES (E'FR', E'France');
INSERT INTO "countries" ("id", "value") VALUES (E'GF', E'French Guiana');
INSERT INTO "countries" ("id", "value") VALUES (E'PF', E'French Polynesia');
INSERT INTO "countries" ("id", "value") VALUES (E'TF', E'French Southern Territories');
INSERT INTO "countries" ("id", "value") VALUES (E'GA', E'Gabon');
INSERT INTO "countries" ("id", "value") VALUES (E'GM', E'Gambia');
INSERT INTO "countries" ("id", "value") VALUES (E'GE', E'Georgia');
INSERT INTO "countries" ("id", "value") VALUES (E'DE', E'Germany');
INSERT INTO "countries" ("id", "value") VALUES (E'GH', E'Ghana');
INSERT INTO "countries" ("id", "value") VALUES (E'GI', E'Gibraltar');
INSERT INTO "countries" ("id", "value") VALUES (E'GR', E'Greece');
INSERT INTO "countries" ("id", "value") VALUES (E'GL', E'Greenland');
INSERT INTO "countries" ("id", "value") VALUES (E'GD', E'Grenada');
INSERT INTO "countries" ("id", "value") VALUES (E'GP', E'Guadeloupe');
INSERT INTO "countries" ("id", "value") VALUES (E'GU', E'Guam');
INSERT INTO "countries" ("id", "value") VALUES (E'GT', E'Guatemala');
INSERT INTO "countries" ("id", "value") VALUES (E'GG', E'Guernsey');
INSERT INTO "countries" ("id", "value") VALUES (E'GN', E'Guinea');
INSERT INTO "countries" ("id", "value") VALUES (E'GW', E'Guinea-Bissau');
INSERT INTO "countries" ("id", "value") VALUES (E'GY', E'Guyana');
INSERT INTO "countries" ("id", "value") VALUES (E'HT', E'Haiti');
INSERT INTO "countries" ("id", "value") VALUES (E'HN', E'Honduras');
INSERT INTO "countries" ("id", "value") VALUES (E'HK', E'Hong Kong SAR China');
INSERT INTO "countries" ("id", "value") VALUES (E'HU', E'Hungary');
INSERT INTO "countries" ("id", "value") VALUES (E'IS', E'Iceland');
INSERT INTO "countries" ("id", "value") VALUES (E'IN', E'India');
INSERT INTO "countries" ("id", "value") VALUES (E'ID', E'Indonesia');
INSERT INTO "countries" ("id", "value") VALUES (E'IR', E'Iran');
INSERT INTO "countries" ("id", "value") VALUES (E'IQ', E'Iraq');
INSERT INTO "countries" ("id", "value") VALUES (E'IE', E'Ireland');
INSERT INTO "countries" ("id", "value") VALUES (E'IM', E'Isle of Man');
INSERT INTO "countries" ("id", "value") VALUES (E'IL', E'Israel');
INSERT INTO "countries" ("id", "value") VALUES (E'IT', E'Italy');
INSERT INTO "countries" ("id", "value") VALUES (E'JM', E'Jamaica');
INSERT INTO "countries" ("id", "value") VALUES (E'JP', E'Japan');
INSERT INTO "countries" ("id", "value") VALUES (E'JE', E'Jersey');
INSERT INTO "countries" ("id", "value") VALUES (E'JO', E'Jordan');
INSERT INTO "countries" ("id", "value") VALUES (E'KZ', E'Kazakhstan');
INSERT INTO "countries" ("id", "value") VALUES (E'KE', E'Kenya');
INSERT INTO "countries" ("id", "value") VALUES (E'KI', E'Kiribati');
INSERT INTO "countries" ("id", "value") VALUES (E'XK', E'Kosovo');
INSERT INTO "countries" ("id", "value") VALUES (E'KW', E'Kuwait');
INSERT INTO "countries" ("id", "value") VALUES (E'KG', E'Kyrgyzstan');
INSERT INTO "countries" ("id", "value") VALUES (E'LA', E'Laos');
INSERT INTO "countries" ("id", "value") VALUES (E'LV', E'Latvia');
INSERT INTO "countries" ("id", "value") VALUES (E'LB', E'Lebanon');
INSERT INTO "countries" ("id", "value") VALUES (E'LS', E'Lesotho');
INSERT INTO "countries" ("id", "value") VALUES (E'LR', E'Liberia');
INSERT INTO "countries" ("id", "value") VALUES (E'LY', E'Libya');
INSERT INTO "countries" ("id", "value") VALUES (E'LI', E'Liechtenstein');
INSERT INTO "countries" ("id", "value") VALUES (E'LT', E'Lithuania');
INSERT INTO "countries" ("id", "value") VALUES (E'LU', E'Luxembourg');
INSERT INTO "countries" ("id", "value") VALUES (E'MO', E'Macao SAR China');
INSERT INTO "countries" ("id", "value") VALUES (E'MG', E'Madagascar');
INSERT INTO "countries" ("id", "value") VALUES (E'MW', E'Malawi');
INSERT INTO "countries" ("id", "value") VALUES (E'MY', E'Malaysia');
INSERT INTO "countries" ("id", "value") VALUES (E'MV', E'Maldives');
INSERT INTO "countries" ("id", "value") VALUES (E'ML', E'Mali');
INSERT INTO "countries" ("id", "value") VALUES (E'MT', E'Malta');
INSERT INTO "countries" ("id", "value") VALUES (E'MH', E'Marshall Islands');
INSERT INTO "countries" ("id", "value") VALUES (E'MQ', E'Martinique');
INSERT INTO "countries" ("id", "value") VALUES (E'MR', E'Mauritania');
INSERT INTO "countries" ("id", "value") VALUES (E'MU', E'Mauritius');
INSERT INTO "countries" ("id", "value") VALUES (E'YT', E'Mayotte');
INSERT INTO "countries" ("id", "value") VALUES (E'MX', E'Mexico');
INSERT INTO "countries" ("id", "value") VALUES (E'FM', E'Micronesia');
INSERT INTO "countries" ("id", "value") VALUES (E'MD', E'Moldova');
INSERT INTO "countries" ("id", "value") VALUES (E'MC', E'Monaco');
INSERT INTO "countries" ("id", "value") VALUES (E'MN', E'Mongolia');
INSERT INTO "countries" ("id", "value") VALUES (E'ME', E'Montenegro');
INSERT INTO "countries" ("id", "value") VALUES (E'MS', E'Montserrat');
INSERT INTO "countries" ("id", "value") VALUES (E'MA', E'Morocco');
INSERT INTO "countries" ("id", "value") VALUES (E'MZ', E'Mozambique');
INSERT INTO "countries" ("id", "value") VALUES (E'MM', E'Myanmar (Burma)');
INSERT INTO "countries" ("id", "value") VALUES (E'NA', E'Namibia');
INSERT INTO "countries" ("id", "value") VALUES (E'NR', E'Nauru');
INSERT INTO "countries" ("id", "value") VALUES (E'NP', E'Nepal');
INSERT INTO "countries" ("id", "value") VALUES (E'NL', E'Netherlands');
INSERT INTO "countries" ("id", "value") VALUES (E'NC', E'New Caledonia');
INSERT INTO "countries" ("id", "value") VALUES (E'NZ', E'New Zealand');
INSERT INTO "countries" ("id", "value") VALUES (E'NI', E'Nicaragua');
INSERT INTO "countries" ("id", "value") VALUES (E'NE', E'Niger');
INSERT INTO "countries" ("id", "value") VALUES (E'NG', E'Nigeria');
INSERT INTO "countries" ("id", "value") VALUES (E'NU', E'Niue');
INSERT INTO "countries" ("id", "value") VALUES (E'NF', E'Norfolk Island');
INSERT INTO "countries" ("id", "value") VALUES (E'KP', E'North Korea');
INSERT INTO "countries" ("id", "value") VALUES (E'MK', E'North Macedonia');
INSERT INTO "countries" ("id", "value") VALUES (E'MP', E'Northern Mariana Islands');
INSERT INTO "countries" ("id", "value") VALUES (E'NO', E'Norway');
INSERT INTO "countries" ("id", "value") VALUES (E'OM', E'Oman');
INSERT INTO "countries" ("id", "value") VALUES (E'PK', E'Pakistan');
INSERT INTO "countries" ("id", "value") VALUES (E'PW', E'Palau');
INSERT INTO "countries" ("id", "value") VALUES (E'PS', E'Palestinian Territories');
INSERT INTO "countries" ("id", "value") VALUES (E'PA', E'Panama');
INSERT INTO "countries" ("id", "value") VALUES (E'PG', E'Papua New Guinea');
INSERT INTO "countries" ("id", "value") VALUES (E'PY', E'Paraguay');
INSERT INTO "countries" ("id", "value") VALUES (E'PE', E'Peru');
INSERT INTO "countries" ("id", "value") VALUES (E'PH', E'Philippines');
INSERT INTO "countries" ("id", "value") VALUES (E'PN', E'Pitcairn Islands');
INSERT INTO "countries" ("id", "value") VALUES (E'PL', E'Poland');
INSERT INTO "countries" ("id", "value") VALUES (E'PT', E'Portugal');
INSERT INTO "countries" ("id", "value") VALUES (E'XA', E'Pseudo-Accents');
INSERT INTO "countries" ("id", "value") VALUES (E'XB', E'Pseudo-Bidi');
INSERT INTO "countries" ("id", "value") VALUES (E'PR', E'Puerto Rico');
INSERT INTO "countries" ("id", "value") VALUES (E'QA', E'Qatar');
INSERT INTO "countries" ("id", "value") VALUES (E'RE', E'Réunion');
INSERT INTO "countries" ("id", "value") VALUES (E'RO', E'Romania');
INSERT INTO "countries" ("id", "value") VALUES (E'RU', E'Russia');
INSERT INTO "countries" ("id", "value") VALUES (E'RW', E'Rwanda');
INSERT INTO "countries" ("id", "value") VALUES (E'WS', E'Samoa');
INSERT INTO "countries" ("id", "value") VALUES (E'SM', E'San Marino');
INSERT INTO "countries" ("id", "value") VALUES (E'ST', E'São Tomé & Príncipe');
INSERT INTO "countries" ("id", "value") VALUES (E'SA', E'Saudi Arabia');
INSERT INTO "countries" ("id", "value") VALUES (E'SN', E'Senegal');
INSERT INTO "countries" ("id", "value") VALUES (E'RS', E'Serbia');
INSERT INTO "countries" ("id", "value") VALUES (E'SC', E'Seychelles');
INSERT INTO "countries" ("id", "value") VALUES (E'SL', E'Sierra Leone');
INSERT INTO "countries" ("id", "value") VALUES (E'SG', E'Singapore');
INSERT INTO "countries" ("id", "value") VALUES (E'SX', E'Sint Maarten');
INSERT INTO "countries" ("id", "value") VALUES (E'SK', E'Slovakia');
INSERT INTO "countries" ("id", "value") VALUES (E'SI', E'Slovenia');
INSERT INTO "countries" ("id", "value") VALUES (E'SB', E'Solomon Islands');
INSERT INTO "countries" ("id", "value") VALUES (E'SO', E'Somalia');
INSERT INTO "countries" ("id", "value") VALUES (E'ZA', E'South Africa');
INSERT INTO "countries" ("id", "value") VALUES (E'GS', E'South Georgia & South Sandwich Islands');
INSERT INTO "countries" ("id", "value") VALUES (E'KR', E'South Korea');
INSERT INTO "countries" ("id", "value") VALUES (E'SS', E'South Sudan');
INSERT INTO "countries" ("id", "value") VALUES (E'ES', E'Spain');
INSERT INTO "countries" ("id", "value") VALUES (E'LK', E'Sri Lanka');
INSERT INTO "countries" ("id", "value") VALUES (E'BL', E'St. Barthélemy');
INSERT INTO "countries" ("id", "value") VALUES (E'SH', E'St. Helena');
INSERT INTO "countries" ("id", "value") VALUES (E'KN', E'St. Kitts & Nevis');
INSERT INTO "countries" ("id", "value") VALUES (E'LC', E'St. Lucia');
INSERT INTO "countries" ("id", "value") VALUES (E'MF', E'St. Martin');
INSERT INTO "countries" ("id", "value") VALUES (E'PM', E'St. Pierre & Miquelon');
INSERT INTO "countries" ("id", "value") VALUES (E'VC', E'St. Vincent & Grenadines');
INSERT INTO "countries" ("id", "value") VALUES (E'SD', E'Sudan');
INSERT INTO "countries" ("id", "value") VALUES (E'SR', E'Suriname');
INSERT INTO "countries" ("id", "value") VALUES (E'SJ', E'Svalbard & Jan Mayen');
INSERT INTO "countries" ("id", "value") VALUES (E'SE', E'Sweden');
INSERT INTO "countries" ("id", "value") VALUES (E'CH', E'Switzerland');
INSERT INTO "countries" ("id", "value") VALUES (E'SY', E'Syria');
INSERT INTO "countries" ("id", "value") VALUES (E'TW', E'Taiwan');
INSERT INTO "countries" ("id", "value") VALUES (E'TJ', E'Tajikistan');
INSERT INTO "countries" ("id", "value") VALUES (E'TZ', E'Tanzania');
INSERT INTO "countries" ("id", "value") VALUES (E'TH', E'Thailand');
INSERT INTO "countries" ("id", "value") VALUES (E'TL', E'Timor-Leste');
INSERT INTO "countries" ("id", "value") VALUES (E'TG', E'Togo');
INSERT INTO "countries" ("id", "value") VALUES (E'TK', E'Tokelau');
INSERT INTO "countries" ("id", "value") VALUES (E'TO', E'Tonga');
INSERT INTO "countries" ("id", "value") VALUES (E'TT', E'Trinidad & Tobago');
INSERT INTO "countries" ("id", "value") VALUES (E'TA', E'Tristan da Cunha');
INSERT INTO "countries" ("id", "value") VALUES (E'TN', E'Tunisia');
INSERT INTO "countries" ("id", "value") VALUES (E'TR', E'Turkey');
INSERT INTO "countries" ("id", "value") VALUES (E'TM', E'Turkmenistan');
INSERT INTO "countries" ("id", "value") VALUES (E'TC', E'Turks & Caicos Islands');
INSERT INTO "countries" ("id", "value") VALUES (E'TV', E'Tuvalu');
INSERT INTO "countries" ("id", "value") VALUES (E'UM', E'U.S. Outlying Islands');
INSERT INTO "countries" ("id", "value") VALUES (E'VI', E'U.S. Virgin Islands');
INSERT INTO "countries" ("id", "value") VALUES (E'UG', E'Uganda');
INSERT INTO "countries" ("id", "value") VALUES (E'UA', E'Ukraine');
INSERT INTO "countries" ("id", "value") VALUES (E'AE', E'United Arab Emirates');
INSERT INTO "countries" ("id", "value") VALUES (E'GB', E'United Kingdom');
INSERT INTO "countries" ("id", "value") VALUES (E'US', E'United States');
INSERT INTO "countries" ("id", "value") VALUES (E'UY', E'Uruguay');
INSERT INTO "countries" ("id", "value") VALUES (E'UZ', E'Uzbekistan');
INSERT INTO "countries" ("id", "value") VALUES (E'VU', E'Vanuatu');
INSERT INTO "countries" ("id", "value") VALUES (E'VA', E'Vatican City');
INSERT INTO "countries" ("id", "value") VALUES (E'VE', E'Venezuela');
INSERT INTO "countries" ("id", "value") VALUES (E'VN', E'Vietnam');
INSERT INTO "countries" ("id", "value") VALUES (E'WF', E'Wallis & Futuna');
INSERT INTO "countries" ("id", "value") VALUES (E'EH', E'Western Sahara');
INSERT INTO "countries" ("id", "value") VALUES (E'YE', E'Yemen');
INSERT INTO "countries" ("id", "value") VALUES (E'ZM', E'Zambia');
INSERT INTO "countries" ("id", "value") VALUES (E'ZW', E'Zimbabwe');