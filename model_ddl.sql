CREATE TABLE dostawadostawcy (
    dostawy_id  NUMBER NOT NULL,
    dostawcy_id NUMBER NOT NULL
);

ALTER TABLE dostawadostawcy ADD CONSTRAINT dostdscy_pk PRIMARY KEY ( dostawy_id, dostawcy_id );

CREATE TABLE dostawcy (
    id              NUMBER NOT NULL,
    nazwa           VARCHAR2(200) NOT NULL,
    numer_tel       CHAR(9) NOT NULL,
    miejscowosci_id NUMBER NOT NULL
);

ALTER TABLE dostawcy ADD CONSTRAINT dostawcy_pk PRIMARY KEY ( id );

CREATE TABLE dostawy (
    id           NUMBER NOT NULL,
    data_dostawy DATE DEFAULT SYSDATE NOT NULL,
    ilosc        NUMBER NOT NULL,
    koszt        FLOAT(10) NOT NULL,
    skladniki_id NUMBER NOT NULL
);

ALTER TABLE dostawy ADD CONSTRAINT dostawy_pk PRIMARY KEY ( id );

CREATE TABLE kategorie (
    id    NUMBER NOT NULL,
    nazwa VARCHAR2(100) NOT NULL
);

ALTER TABLE kategorie ADD CONSTRAINT kategorie_pk PRIMARY KEY ( id );

CREATE TABLE klienci (
    id                 NUMBER NOT NULL,
    imie               VARCHAR2(50) NOT NULL,
    nazwisko           VARCHAR2(50) NOT NULL,
    numer_tel          CHAR(9) NOT NULL,
    email              VARCHAR2(100) NOT NULL,
    numer_karty        CHAR(16) NOT NULL,
    adres_zamieszkania VARCHAR2(300) NOT NULL,
    miejscowosci_id    NUMBER NOT NULL
);

ALTER TABLE klienci ADD CONSTRAINT klienci_pk PRIMARY KEY ( id );

CREATE TABLE miejscowosci (
    id    NUMBER NOT NULL,
    nazwa VARCHAR2(100) NOT NULL,
    kraj  VARCHAR2(100) NOT NULL
);

ALTER TABLE miejscowosci ADD CONSTRAINT miejscowosci_pk PRIMARY KEY ( id );

CREATE TABLE pracownicy (
    id                NUMBER NOT NULL,
    imie              VARCHAR2(50) NOT NULL,
    nazwisko          VARCHAR2(50) NOT NULL,
    stanowisko        VARCHAR2(100) NOT NULL,
    placa             FLOAT(10) NOT NULL,
    data_zatrudnienia DATE DEFAULT SYSDATE NOT NULL,
    zespoly_id        NUMBER NOT NULL,
    miejscowosci_id   NUMBER NOT NULL
);

ALTER TABLE pracownicy ADD CONSTRAINT pracownicy_pk PRIMARY KEY ( id );

CREATE TABLE produkty (
    id           NUMBER NOT NULL,
    nazwa        VARCHAR2(100) NOT NULL,
    opis         VARCHAR2(500) NOT NULL,
    cena         FLOAT(10) NOT NULL,
    receptury_id NUMBER NOT NULL
);

ALTER TABLE produkty ADD CONSTRAINT produkty_pk PRIMARY KEY ( id );

CREATE TABLE produktzamowienia (
    zamowienia_id NUMBER NOT NULL,
    produkty_id   NUMBER NOT NULL
);

ALTER TABLE produktzamowienia ADD CONSTRAINT prdzam_pk PRIMARY KEY ( zamowienia_id, produkty_id );

CREATE TABLE recepturaskladnika (
    skladniki_id NUMBER NOT NULL,
    receptury_id NUMBER NOT NULL
);

ALTER TABLE recepturaskladnika ADD CONSTRAINT recskl_pk PRIMARY KEY ( skladniki_id, receptury_id );

CREATE TABLE receptury (
    id              NUMBER NOT NULL,
    nazwa           VARCHAR2(100) NOT NULL,
    wariant         VARCHAR2(100),
    data_utworzenia DATE DEFAULT SYSDATE NOT NULL,
    notatki         VARCHAR2(500),
    kategorie_id    NUMBER NOT NULL
);

ALTER TABLE receptury ADD CONSTRAINT receptury_pk PRIMARY KEY ( id );

CREATE TABLE skladniki (
    id               NUMBER NOT NULL,
    ilosc            NUMBER NOT NULL,
    jednostka        VARCHAR2(50) NOT NULL,
    minimalna_ilosc  NUMBER NOT NULL,
    maksymalna_ilosc NUMBER NOT NULL
);

ALTER TABLE skladniki ADD CONSTRAINT skladniki_pk PRIMARY KEY ( id );

CREATE TABLE zamowienia (
    id                 NUMBER NOT NULL,
    koszt              FLOAT(10) NOT NULL,
    data_przyjecia     DATE DEFAULT SYSDATE NOT NULL,
    data_zrealizowania DATE DEFAULT NULL,
    status             VARCHAR2(50) NOT NULL,
    klienci_id         NUMBER NOT NULL
);

ALTER TABLE zamowienia ADD CONSTRAINT zamowienia_pk PRIMARY KEY ( id );

ALTER TABLE skladniki ADD CONSTRAINT skladniki_ilosc_check CHECK (maksymalna_ilosc > minimalna_ilosc);

ALTER TABLE klienci ADD CONSTRAINT klienci_numer_karty_unique UNIQUE (numer_karty);

CREATE TABLE zespoly (
    id    NUMBER NOT NULL,
    nazwa VARCHAR2(100) NOT NULL
);

ALTER TABLE zespoly ADD CONSTRAINT zespoly_pk PRIMARY KEY ( id );

ALTER TABLE dostawcy
    ADD CONSTRAINT dostawcy_miejscowosci_fk FOREIGN KEY ( miejscowosci_id )
        REFERENCES miejscowosci ( id );

ALTER TABLE dostawy
    ADD CONSTRAINT dostawy_skladniki_fk FOREIGN KEY ( skladniki_id )
        REFERENCES skladniki ( id );

ALTER TABLE dostawadostawcy
    ADD CONSTRAINT dostdscy_dostawcy_fk FOREIGN KEY ( dostawcy_id )
        REFERENCES dostawcy ( id );

ALTER TABLE dostawadostawcy
    ADD CONSTRAINT dostdscy_dostawy_fk FOREIGN KEY ( dostawy_id )
        REFERENCES dostawy ( id );

ALTER TABLE klienci
    ADD CONSTRAINT klienci_miejscowosci_fk FOREIGN KEY ( miejscowosci_id )
        REFERENCES miejscowosci ( id );

ALTER TABLE pracownicy
    ADD CONSTRAINT pracownicy_miejscowosci_fk FOREIGN KEY ( miejscowosci_id )
        REFERENCES miejscowosci ( id );

ALTER TABLE pracownicy
    ADD CONSTRAINT pracownicy_zespoly_fk FOREIGN KEY ( zespoly_id )
        REFERENCES zespoly ( id );

ALTER TABLE produktzamowienia
    ADD CONSTRAINT prdzam_produkty_fk FOREIGN KEY ( produkty_id )
        REFERENCES produkty ( id );

ALTER TABLE produktzamowienia
    ADD CONSTRAINT prdzam_zamowienia_fk FOREIGN KEY ( zamowienia_id )
        REFERENCES zamowienia ( id );

ALTER TABLE produkty
    ADD CONSTRAINT produkty_receptury_fk FOREIGN KEY ( receptury_id )
        REFERENCES receptury ( id );

ALTER TABLE receptury
    ADD CONSTRAINT receptury_kategorie_fk FOREIGN KEY ( kategorie_id )
        REFERENCES kategorie ( id );

ALTER TABLE recepturaskladnika
    ADD CONSTRAINT recskl_receptury_fk FOREIGN KEY ( receptury_id )
        REFERENCES receptury ( id );

ALTER TABLE recepturaskladnika
    ADD CONSTRAINT recskl_skladniki_fk FOREIGN KEY ( skladniki_id )
        REFERENCES skladniki ( id );

ALTER TABLE zamowienia
    ADD CONSTRAINT zamowienia_klienci_fk FOREIGN KEY ( klienci_id )
        REFERENCES klienci ( id );
