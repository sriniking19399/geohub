create table if not exists country(
    countryId int primary key AUTO_INCREMENT,
    countryName text,
    currency text,
    population int,
    latitude text,
    longitude text
);

create table if not exists city(
    cityId int primary key AUTO_INCREMENT,
    cityName text,
    population int,
    latitude text,
    longitude text,
    countryId int,
    foreign key (countryId) references country(countryId)
);