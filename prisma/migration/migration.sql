CREATE TABLE User (
    id INTEGER NOT NULL AUTO_INCREMENT,
    username VARCHAR(191) NOT NULL,
    email VARCHAR(191) NOT NULL,
    name VARCHAR(191) NULL,

    UNIQUE INDEX User_username_key(username),
    UNIQUE INDEX User_email_key(email),
    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


CREATE TABLE Host (
    id INTEGER NOT NULL AUTO_INCREMENT,
    username VARCHAR(191) NOT NULL,
    email VARCHAR(191) NOT NULL,
    name VARCHAR(191) NULL,

    UNIQUE INDEX Host_username_key(username),
    UNIQUE INDEX Host_email_key(email),
    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


CREATE TABLE Property (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(191) NOT NULL,
    description VARCHAR(191) NOT NULL,
    pricePerNight DECIMAL(10, 2) NOT NULL,
    hostId INTEGER NOT NULL,

    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


CREATE TABLE Amenity (
    id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(191) NOT NULL,

    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


CREATE TABLE Booking (
    id INTEGER NOT NULL AUTO_INCREMENT,
    checkIn DATETIME(3) NOT NULL,
    checkOut DATETIME(3) NOT NULL,
    userId INTEGER NOT NULL,
    propertyId INTEGER NOT NULL,

    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


CREATE TABLE Review (
    id INTEGER NOT NULL AUTO_INCREMENT,
    rating INTEGER NOT NULL,
    comment VARCHAR(191) NOT NULL,
    propertyId INTEGER NOT NULL,

    PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


CREATE TABLE _PropertyAmenities (
    A INTEGER NOT NULL,
    B INTEGER NOT NULL,

    UNIQUE INDEX _PropertyAmenities_AB_unique(A, B),
    INDEX _PropertyAmenities_B_index(B)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
