# Pastry-database-model
## Overview
This repository contains the data model for a pastry shop's database. The model was created using Oracle SQL Developer's data modeler and represents the structure of a relational database designed to support various functions of a pastry shop. These include managing products, orders, clients, suppliers, deliveries, and more.

## Model Description
*Note that it's in polish.*
### Produkt
   - **ID**: Primary key (PK).
   - **Nazwa**: Name of the product.
   - **Opis**: Description of the product.
   - **Cena**: Price of the product.
   - **ID** Receptury: Foreign key pointing to the recipe.

### Zamówienie (Order)

  - **ID**: Primary key (PK).
  -  **Koszt**: Cost of the order.
  -  **Data Przyjęcia**: Date the order was accepted.
  -  **Data Zrealizowania**: Date the order was completed.
  -  **Status**: Current status of the order.
  -  **ID Klienta**: Foreign key pointing to the client.
  -  **ID Produkt**u: Foreign key pointing to the product.

### Klient (Client)

  - ID: Primary key (PK).
  - Imię: First name of the client.
  -  Nazwisko: Last name of the client.
  -  Numer Telefonu: Phone number of the client.
  -  E-mail: Email of the client.
  -  Numer Karty: Card number of the client.
  -  Adres Zamieszkania: Address of the client.
  -  ID Miejscowości: Foreign key pointing to the town.

### Dostawca (Supplier)

  - ID: Primary key (PK).
  -  Nazwa: Name of the supplier.
  -  Numer Telefonu: Phone number of the supplier.
  -  ID Miejscowości: Foreign key pointing to the town.

### Dostawa (Delivery)

  -  ID: Primary key (PK).
  -  Data Dostawy: Delivery date.
  -  Ilość: Quantity delivered.
  -  Koszt: Cost of delivery.
  -  ID Składnika: Foreign key pointing to the ingredient.
  -  ID Dostawcy: Foreign key pointing to the supplier.

### Miejscowość (Town)

  -  ID: Primary key (PK).
  -  Nazwa: Name of the town.
  -  Kraj: Country.

### Receptura (Recipe)

  - ID: Primary key (PK).
  -  Nazwa: Name of the recipe.
  -  Wariant: Variant of the recipe.
  -  Data: Date of the recipe.
  -  Notatki: Notes about the recipe.
  -  ID Składnika: Foreign key pointing to the ingredient.
  -  ID Kategorii: Foreign key pointing to the category.

### Kategoria (Category)

  -  ID: Primary key (PK).
  -  Nazwa: Name of the category.

### Zespół (Team)

  -  ID: Primary key (PK).
  -  Nazwa: Name of the team.

### Pracownik (Employee)

  -  ID: Primary key (PK).
  -  Imię: First name of the employee.
  -  Nazwisko: Last name of the employee.
  -  Stanowisko: Position of the employee.
  -  Płaca: Salary of the employee.
  -  Data Zatrudnienia: Date of employment.
  -  ID Zespołu: Foreign key pointing to the team.
  -  ID Miejscowości: Foreign key pointing to the town.

### Składnik (Ingredient)

  -  ID: Primary key (PK).
  -  Ilość: Quantity of the ingredient.
  -  Jednostka: Unit of the ingredient.
  -  Minimalna Ilość: Minimum quantity required.
  -  Maksymalna Ilość: Maximum quantity allowed.

## Entity Relationship Diagram

<p align="center">
  <img src="https://github.com/buennoo/pastry-database-model/assets/127790828/351aa573-6f5d-44f1-bdd6-2b5babf7fd25" width=70%>
  <img src="https://github.com/buennoo/pastry-database-model/assets/127790828/3e3346fb-7e61-4dbd-b8af-06c4bb38240e" width=70%>
</p>
  
