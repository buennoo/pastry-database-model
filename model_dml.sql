INSERT INTO miejscowosci (id, nazwa, kraj) VALUES (1, 'Warszawa', 'Polska');
INSERT INTO miejscowosci (id, nazwa, kraj) VALUES (2, 'Kraków', 'Polska');
INSERT INTO miejscowosci (id, nazwa, kraj) VALUES (3, 'Gdańsk', 'Polska');
INSERT INTO miejscowosci (id, nazwa, kraj) VALUES (4, 'Wrocław', 'Polska');
INSERT INTO miejscowosci (id, nazwa, kraj) VALUES (5, 'Poznań', 'Polska');
INSERT INTO miejscowosci (id, nazwa, kraj) VALUES (6, 'Łódź', 'Polska');
INSERT INTO miejscowosci (id, nazwa, kraj) VALUES (7, 'Szczecin', 'Polska');
INSERT INTO miejscowosci (id, nazwa, kraj) VALUES (8, 'Bydgoszcz', 'Polska');
INSERT INTO miejscowosci (id, nazwa, kraj) VALUES (9, 'Katowice', 'Polska');
INSERT INTO miejscowosci (id, nazwa, kraj) VALUES (10, 'Gdynia', 'Polska');

INSERT INTO zespoly (id, nazwa) VALUES (1, 'Zarząd');
INSERT INTO zespoly (id, nazwa) VALUES (2, 'Kuchnia');
INSERT INTO zespoly (id, nazwa) VALUES (3, 'Sprzedaż');
INSERT INTO zespoly (id, nazwa) VALUES (4, 'Marketing');

INSERT INTO pracownicy (id, imie, nazwisko, stanowisko, placa, data_zatrudnienia, zespoly_id, miejscowosci_id) 
VALUES (1, 'Jan', 'Kowalski', 'Prezes', 5000, TO_TIMESTAMP('2023-01-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 1);
INSERT INTO pracownicy (id, imie, nazwisko, stanowisko, placa, data_zatrudnienia, zespoly_id, miejscowosci_id) 
VALUES (2, 'Anna', 'Nowak', 'Szef Kuchni', 3500, TO_TIMESTAMP('2023-02-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 2);
INSERT INTO pracownicy (id, imie, nazwisko, stanowisko, placa, data_zatrudnienia, zespoly_id, miejscowosci_id) 
VALUES (3, 'Piotr', 'Wiśniewski', 'Specjalista ds. Marketingu', 4500, TO_TIMESTAMP('2023-03-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 3);
INSERT INTO pracownicy (id, imie, nazwisko, stanowisko, placa, data_zatrudnienia, zespoly_id, miejscowosci_id) 
VALUES (4, 'Karolina', 'Lewandowska', 'Specjalista ds. Marketingu', 5500, TO_TIMESTAMP('2023-04-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 4);
INSERT INTO pracownicy (id, imie, nazwisko, stanowisko, placa, data_zatrudnienia, zespoly_id, miejscowosci_id) 
VALUES (5, 'Marcin', 'Kaczmarek', 'Wiceprezes', 4000, TO_TIMESTAMP('2023-05-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 5);
INSERT INTO pracownicy (id, imie, nazwisko, stanowisko, placa, data_zatrudnienia, zespoly_id, miejscowosci_id) 
VALUES (6, 'Magdalena', 'Wójcik', 'Kucharz', 4200, TO_TIMESTAMP('2023-06-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 6);
INSERT INTO pracownicy (id, imie, nazwisko, stanowisko, placa, data_zatrudnienia, zespoly_id, miejscowosci_id) 
VALUES (7, 'Paweł', 'Krawczyk', 'Sprzedawca', 4800, TO_TIMESTAMP('2023-07-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 7);
INSERT INTO pracownicy (id, imie, nazwisko, stanowisko, placa, data_zatrudnienia, zespoly_id, miejscowosci_id) 
VALUES (8, 'Alicja', 'Dąbrowska', 'Analityk Marketingowy', 5200, TO_TIMESTAMP('2023-08-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 8);
INSERT INTO pracownicy (id, imie, nazwisko, stanowisko, placa, data_zatrudnienia, zespoly_id, miejscowosci_id) 
VALUES (9, 'Tomasz', 'Zieliński', 'Dyrektor Finansowy', 4700, TO_TIMESTAMP('2023-09-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 9);
INSERT INTO pracownicy (id, imie, nazwisko, stanowisko, placa, data_zatrudnienia, zespoly_id, miejscowosci_id) 
VALUES (10, 'Monika', 'Szymańska', 'Sprzedawca', 4400, TO_TIMESTAMP('2023-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 10);

INSERT INTO kategorie (id, nazwa) VALUES (1, 'Ciasta');
INSERT INTO kategorie (id, nazwa) VALUES (2, 'Tarty');
INSERT INTO kategorie (id, nazwa) VALUES (3, 'Torty');
INSERT INTO kategorie (id, nazwa) VALUES (4, 'Desery');
INSERT INTO kategorie (id, nazwa) VALUES (5, 'Ciasteczka');
INSERT INTO kategorie (id, nazwa) VALUES (6, 'Pączki');
INSERT INTO kategorie (id, nazwa) VALUES (7, 'Pozostałe');

INSERT INTO skladniki (id, ilosc, jednostka, minimalna_ilosc, maksymalna_ilosc) VALUES (1, 100, 'kg', 10, 200);
INSERT INTO skladniki (id, ilosc, jednostka, minimalna_ilosc, maksymalna_ilosc) VALUES (2, 50, 'kg', 5, 100);
INSERT INTO skladniki (id, ilosc, jednostka, minimalna_ilosc, maksymalna_ilosc) VALUES (3, 500, 'szt.', 50, 1000);
INSERT INTO skladniki (id, ilosc, jednostka, minimalna_ilosc, maksymalna_ilosc) VALUES (4, 30, 'kg', 5, 50);
INSERT INTO skladniki (id, ilosc, jednostka, minimalna_ilosc, maksymalna_ilosc) VALUES (5, 40, 'kg', 5, 100);
INSERT INTO skladniki (id, ilosc, jednostka, minimalna_ilosc, maksymalna_ilosc) VALUES (6, 20, 'kg', 2, 50);
INSERT INTO skladniki (id, ilosc, jednostka, minimalna_ilosc, maksymalna_ilosc) VALUES (7, 10, 'kg', 1, 20);
INSERT INTO skladniki (id, ilosc, jednostka, minimalna_ilosc, maksymalna_ilosc) VALUES (8, 5, 'kg', 1, 10);
INSERT INTO skladniki (id, ilosc, jednostka, minimalna_ilosc, maksymalna_ilosc) VALUES (9, 15, 'l', 2, 30);
INSERT INTO skladniki (id, ilosc, jednostka, minimalna_ilosc, maksymalna_ilosc) VALUES (10, 2, 'l', 1, 10);

INSERT INTO receptury (id, nazwa, wariant, data_utworzenia, notatki, kategorie_id) 
VALUES (1, 'Szarlotka', 'Klasyczna', TO_TIMESTAMP('2023-01-10', 'YYYY-MM-DD'), 'Przepis klasyczny na szarlotkę', 1);
INSERT INTO receptury (id, nazwa, wariant, data_utworzenia, notatki, kategorie_id) 
VALUES (2, 'Tort truflowy', 'Czekoladowy', TO_TIMESTAMP('2023-02-15', 'YYYY-MM-DD'), 'Wykwintny tort z truflami czekoladowymi', 3);
INSERT INTO receptury (id, nazwa, wariant, data_utworzenia, notatki, kategorie_id) 
VALUES (3, 'Tarta cytrynowa', 'Klasyczna', TO_TIMESTAMP('2023-03-20', 'YYYY-MM-DD'), 'Świeża tarta z kwaśnymi cytrynami', 2);
INSERT INTO receptury (id, nazwa, wariant, data_utworzenia, notatki, kategorie_id) 
VALUES (4, 'Babka drożdżowa', 'Z rodzynkami', TO_TIMESTAMP('2023-04-25', 'YYYY-MM-DD'), 'Puszysta babka z dodatkiem słodkich rodzynków', 1);
INSERT INTO receptury (id, nazwa, wariant, data_utworzenia, notatki, kategorie_id) 
VALUES (5, 'Makowiec', 'Tradycyjny', TO_TIMESTAMP('2023-05-01', 'YYYY-MM-DD'), 'Polski makowiec przygotowany według staropolskiego przepisu', 1);
INSERT INTO receptury (id, nazwa, wariant, data_utworzenia, notatki, kategorie_id) 
VALUES (6, 'Sernik', 'Z owocami', TO_TIMESTAMP('2023-06-05', 'YYYY-MM-DD'), 'Delikatny sernik z dodatkiem sezonowych owoców', 1);
INSERT INTO receptury (id, nazwa, wariant, data_utworzenia, notatki, kategorie_id) 
VALUES (7, 'Ciasteczka maślane', 'Z dodatkiem dżemu', TO_TIMESTAMP('2023-07-10', 'YYYY-MM-DD'), 'Klasyczne ciasteczka z pysznym dżemem', 5);
INSERT INTO receptury (id, nazwa, wariant, data_utworzenia, notatki, kategorie_id) 
VALUES (8, 'Eklery', 'Klasyczne', TO_TIMESTAMP('2023-08-15', 'YYYY-MM-DD'), 'Kremowe eklery z chrupiącym ciastem', 6);
INSERT INTO receptury (id, nazwa, wariant, data_utworzenia, notatki, kategorie_id) 
VALUES (9, 'Kuleczki trufle', 'Czekoladowe', TO_TIMESTAMP('2023-09-20', 'YYYY-MM-DD'), 'Pyszne kuleczki trufle w polewie czekoladowej', 4);
INSERT INTO receptury (id, nazwa, wariant, data_utworzenia, notatki, kategorie_id) 
VALUES (10, 'Rogaliki drożdżowe', 'Z nadzieniem', TO_TIMESTAMP('2023-10-25', 'YYYY-MM-DD'), 'Rumiane rogaliki z serem i dżemem', 7);


INSERT INTO dostawcy (id, nazwa, numer_tel, miejscowosci_id) VALUES (1, 'Cukiernia Słodkie Marzenia', '123456789', 1);
INSERT INTO dostawcy (id, nazwa, numer_tel, miejscowosci_id) VALUES (2, 'Hurtownia Owoców i Warzyw "Zdrowe Smaki"', '987654321', 2);
INSERT INTO dostawcy (id, nazwa, numer_tel, miejscowosci_id) VALUES (3, 'Mleczarnia Białe Krowy', '555888777', 3);
INSERT INTO dostawcy (id, nazwa, numer_tel, miejscowosci_id) VALUES (4, 'Piekarnia Pachnące Bułki', '111222333', 4);
INSERT INTO dostawcy (id, nazwa, numer_tel, miejscowosci_id) VALUES (5, 'Hurtownia Pyszne Dodatki', '999000111', 5);
INSERT INTO dostawcy (id, nazwa, numer_tel, miejscowosci_id) VALUES (6, 'Cukierniczy Składniki Profesjonalne', '444777000', 6);
INSERT INTO dostawcy (id, nazwa, numer_tel, miejscowosci_id) VALUES (7, 'Dostawca Kolorowych Polew i Posypek', '666333222', 7);
INSERT INTO dostawcy (id, nazwa, numer_tel, miejscowosci_id) VALUES (8, 'Firma Kawa i Czekolada', '123123123', 8);
INSERT INTO dostawcy (id, nazwa, numer_tel, miejscowosci_id) VALUES (9, 'Importer Ekskluzywnych Odmian Kakao', '456456456', 9);
INSERT INTO dostawcy (id, nazwa, numer_tel, miejscowosci_id) VALUES (10, 'Hurtownia Wyjątkowych Bakalii', '789789789', 10);

INSERT INTO dostawy (id, data_dostawy, ilosc, koszt, skladniki_id) 
VALUES (1, TO_TIMESTAMP('2023-01-05 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 500, 200.50, 1);
INSERT INTO dostawy (id, data_dostawy, ilosc, koszt, skladniki_id) 
VALUES (2, TO_TIMESTAMP('2023-02-10 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), 300, 150.25, 2);
INSERT INTO dostawy (id, data_dostawy, ilosc, koszt, skladniki_id) 
VALUES (3, TO_TIMESTAMP('2023-03-15 08:45:00', 'YYYY-MM-DD HH24:MI:SS'), 700, 300.75, 3);
INSERT INTO dostawy (id, data_dostawy, ilosc, koszt, skladniki_id) 
VALUES (4, TO_TIMESTAMP('2023-04-20 11:20:00', 'YYYY-MM-DD HH24:MI:SS'), 400, 180.90, 4);
INSERT INTO dostawy (id, data_dostawy, ilosc, koszt, skladniki_id) 
VALUES (5, TO_TIMESTAMP('2023-05-25 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 600, 250.80, 5);
INSERT INTO dostawy (id, data_dostawy, ilosc, koszt, skladniki_id) 
VALUES (6, TO_TIMESTAMP('2023-06-30 13:15:00', 'YYYY-MM-DD HH24:MI:SS'), 450, 220.45, 6);
INSERT INTO dostawy (id, data_dostawy, ilosc, koszt, skladniki_id) 
VALUES (7, TO_TIMESTAMP('2023-07-05 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 550, 280.60, 7);
INSERT INTO dostawy (id, data_dostawy, ilosc, koszt, skladniki_id) 
VALUES (8, TO_TIMESTAMP('2023-08-10 12:45:00', 'YYYY-MM-DD HH24:MI:SS'), 650, 320.75, 8);
INSERT INTO dostawy (id, data_dostawy, ilosc, koszt, skladniki_id) 
VALUES (9, TO_TIMESTAMP('2023-09-15 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 350, 190.30, 9);
INSERT INTO dostawy (id, data_dostawy, ilosc, koszt, skladniki_id) 
VALUES (10, TO_TIMESTAMP('2023-10-20 17:30:00', 'YYYY-MM-DD HH24:MI:SS'), 480, 250.20, 10);

INSERT INTO produkty (id, nazwa, opis, cena, receptury_id) VALUES (1, 'Tort czekoladowy', 'Tort z czekoladowymi warstwami i kremem', 39.99, 2);
INSERT INTO produkty (id, nazwa, opis, cena, receptury_id) VALUES (3, 'Tarta owocowa', 'Tarta z sezonowymi owocami i kruszonką', 34.99, 3);
INSERT INTO produkty (id, nazwa, opis, cena, receptury_id) VALUES (4, 'Babka cytrynowa', 'Tradycyjna babka cytrynowa z lukrem', 19.99, 4);
INSERT INTO produkty (id, nazwa, opis, cena, receptury_id) VALUES (5, 'Rogaliki drożdżowe', 'Puszyste rogaliki z nadzieniem', 9.99, 10);
INSERT INTO produkty (id, nazwa, opis, cena, receptury_id) VALUES (8, 'Sernik waniliowy', 'Sernik z waniliowym aromatem', 24.99, 6);
INSERT INTO produkty (id, nazwa, opis, cena, receptury_id) VALUES (9, 'Ciastka', 'Kruche, klasyczne ciastka z masłem', 7.99, 7);
INSERT INTO produkty (id, nazwa, opis, cena, receptury_id) VALUES (10, 'Pistacjowe ptasie mleczko', 'Ptasie mleczko w czekoladzie z pistacjami', 5.99, 8);

INSERT INTO klienci (id, imie, nazwisko, numer_tel, email, numer_karty, adres_zamieszkania, miejscowosci_id) VALUES (1, 'Anna', 'Kowalska', '123456789', 'anna.kowalska@example.com', '1234567890123456', 'ul. Kwiatowa 1', 1);
INSERT INTO klienci (id, imie, nazwisko, numer_tel, email, numer_karty, adres_zamieszkania, miejscowosci_id) VALUES (2, 'Jan', 'Nowak', '987654321', 'jan.nowak@example.com', '9876543210123456', 'ul. Ogrodowa 5', 2);
INSERT INTO klienci (id, imie, nazwisko, numer_tel, email, numer_karty, adres_zamieszkania, miejscowosci_id) VALUES (3, 'Maria', 'Wiśniewska', '654123987', 'maria.wisniewska@example.com', '6541239870123456', 'ul. Leśna 10', 3);
INSERT INTO klienci (id, imie, nazwisko, numer_tel, email, numer_karty, adres_zamieszkania, miejscowosci_id) VALUES (4, 'Piotr', 'Lis', '321987654', 'piotr.lis@example.com', '3219876540123456', 'ul. Szkolna 15', 4);
INSERT INTO klienci (id, imie, nazwisko, numer_tel, email, numer_karty, adres_zamieszkania, miejscowosci_id) VALUES (5, 'Karolina', 'Kaczmarek', '789456123', 'karolina.kaczmarek@example.com', '7894561230123456', 'ul. Polna 20', 5);
INSERT INTO klienci (id, imie, nazwisko, numer_tel, email, numer_karty, adres_zamieszkania, miejscowosci_id) VALUES (6, 'Adam', 'Wójcik', '159357852', 'adam.wojcik@example.com', '1593578520123456', 'ul. Rzeczna 25', 6);
INSERT INTO klienci (id, imie, nazwisko, numer_tel, email, numer_karty, adres_zamieszkania, miejscowosci_id) VALUES (7, 'Ewa', 'Krawczyk', '258369147', 'ewa.krawczyk@example.com', '2583691470123456', 'ul. Zielona 30', 7);
INSERT INTO klienci (id, imie, nazwisko, numer_tel, email, numer_karty, adres_zamieszkania, miejscowosci_id) VALUES (8, 'Krzysztof', 'Dąbrowski', '147258369', 'krzysztof.dabrowski@example.com', '1472583690123456', 'ul. Kwiatowa 35', 8);
INSERT INTO klienci (id, imie, nazwisko, numer_tel, email, numer_karty, adres_zamieszkania, miejscowosci_id) VALUES (9, 'Magdalena', 'Zielińska', '369852147', 'magdalena.zielinska@example.com', '3698521470123456', 'ul. Malinowa 40', 9);
INSERT INTO klienci (id, imie, nazwisko, numer_tel, email, numer_karty, adres_zamieszkania, miejscowosci_id) VALUES (10, 'Michał', 'Woźniak', '852147369', 'michal.wozniak@example.com', '8521473690123456', 'ul. Słoneczna 45', 10);

INSERT INTO zamowienia (id, koszt, data_przyjecia, data_zrealizowania, status, klienci_id) 
VALUES (1, 45.99, TO_TIMESTAMP('2024-03-01 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-01 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Zrealizowane', 1);
INSERT INTO zamowienia (id, koszt, data_przyjecia, data_zrealizowania, status, klienci_id) 
VALUES (2, 29.99, TO_TIMESTAMP('2024-03-01 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-03-01 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'W trakcie realizacji', 2);
INSERT INTO zamowienia (id, koszt, data_przyjecia, data_zrealizowania, status, klienci_id) 
VALUES (3, 39.99, TO_TIMESTAMP('2024-03-01 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'Oczekuje na realizację', 3);
INSERT INTO zamowienia (id, koszt, data_przyjecia, data_zrealizowania, status, klienci_id) 
VALUES (4, 19.99, TO_TIMESTAMP('2024-03-01 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'Oczekuje na realizację', 4);
INSERT INTO zamowienia (id, koszt, data_przyjecia, data_zrealizowania, status, klienci_id) 
VALUES (5, 9.99, TO_TIMESTAMP('2024-03-01 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'Oczekuje na realizację', 5);
INSERT INTO zamowienia (id, koszt, data_przyjecia, data_zrealizowania, status, klienci_id) 
VALUES (6, 12.99, TO_TIMESTAMP('2024-03-01 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'Oczekuje na realizację', 6);
INSERT INTO zamowienia (id, koszt, data_przyjecia, data_zrealizowania, status, klienci_id) 
VALUES (7, 11.99, TO_TIMESTAMP('2024-03-01 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'Oczekuje na realizację', 7);
INSERT INTO zamowienia (id, koszt, data_przyjecia, data_zrealizowania, status, klienci_id) 
VALUES (8, 24.99, TO_TIMESTAMP('2024-03-01 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'Oczekuje na realizację', 8);
INSERT INTO zamowienia (id, koszt, data_przyjecia, status, klienci_id) 
VALUES (9, 7.99, TO_TIMESTAMP('2024-03-01 15:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Oczekuje na realizację', 9);
INSERT INTO zamowienia (id, koszt, status, klienci_id) 
VALUES (10, 5.99, 'Oczekuje na realizację', 10);
