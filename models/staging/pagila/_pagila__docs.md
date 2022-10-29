# pagila

{% docs pagila %}
Pagila is a sample PostgreSQL database based on MySQL's Sakila.

It's a movie rental database with actors, ratings, payments, etc.

![pagila ER diagram](assets/pagila.png)
{% enddocs %}

# actor

{% docs actor %}
This table contains information about actors who appear
in the movies available in the database.
{% enddocs%}

{% docs actor__actor_id %}
This is the primary key of the table.

Autoincremental ID starting by 1 and increasing by 1.
{% enddocs %}

{% docs actor__first_name %}
This is the first name of the actor.

Written in upper case.
{% enddocs %}

{% docs actor__last_name %}
This is the last name of the actor.
{% enddocs %}

{% docs actor__last_update %}
This is the timestamp of the last time the table was updated.

It's in the format `yyyy-mm-dd hh:mm:ss`
{% enddocs %}

# address

{% docs address %}
This table contains all of the addresses pertaining to customers,
staff and stores.
{% enddocs %}

{% docs address__address_id %}
This is the primary key of the table.

Autoincremental ID starting by 1 and increasing by 1.
{% enddocs %}

{% docs address__address %}
This is the address in the following format:

{street number} {street name}

In other words, this is the address line 1.
{% enddocs %}

{% docs address__address2 %}
This is the address line 2.

It may be null or an empty string when not provided.
{% enddocs %}

{% docs address__district %}
This is the district where the address is located.
{% enddocs %}

{% docs address__city_id %}
This is the ID of the city in which the address is located.

It's a foreign key that references the `city` table.
{% enddocs %}

{% docs address__postal_code %}
This is the postal code related to the address.
{% enddocs %}

{% docs address__phone %}
This is the phone related to the address.
{% enddocs %}

{% docs address__last_update %}
This is the timestamp of the last time the table was updated.

It's in the format `yyyy-mm-dd hh:mm:ss`
{% enddocs %}

# category

{% docs category %}
This table contains the different movie categories available 
in the database.
{% enddocs %}

{% docs category__category_id %}
This is the primary key of the table.

Autoincremental ID starting by 1 and increasing by 1.
{% enddocs %}

{% docs category__name %}
This is the name of the category.
{% enddocs %}

{% docs category__last_update %}
This is the timestamp of the last time the table was updated.

It's in the format `yyyy-mm-dd hh:mm:ss`
{% enddocs %}

# city

{% docs city %}
This table contains information about the cities in which
stores, customers and staff are located.
{% enddocs%}

{% docs city__city_id %}
This is the primary key of the table.

Autoincremental ID starting by 1 and increasing by 1.
{% enddocs %}

{% docs city__city %}
This is the name of the city in which stores, customers and 
staff are located.
{% enddocs %}

{% docs city__country_id %}
This is the ID of the country in which the city is located.

It's a foreign key that references the `country` table.
{% enddocs %}

{% docs city__last_update %}
This is the timestamp of the last time the table was updated.

It's in the format `yyyy-mm-dd hh:mm:ss`
{% enddocs %}

# country

{% docs country %}
This table contains information about the countries in which 
stores, customers and staff are located.
{% enddocs %}

{% docs country__country_id %}
This is the primary key of the table.

Autoincremental ID starting by 1 and increasing by 1.
{% enddocs %}

{% docs country__country %}
This is the name of the country in which stores, customers
and staff are located.
{% enddocs %}

{% docs country__last_update %}
This is the timestamp of the last time the table was updated.

It's in the format `yyyy-mm-dd hh:mm:ss`
{% enddocs %}

# customer

{% docs customer%}
This table contains information about all of the customers that
have used (or are using) the store movie rental services.
{% enddocs %}

{% docs customer__customer_id %}
This is the primary key of the table.

Autoincremental ID starting by 1 and increasing by 1.
{% enddocs %}

{% docs customer__store_id %}
This is the ID of the store to which the customer have come.

It's a foreign key that references the `store` table.
{% enddocs %}

{% docs customer__first_name %}
This is the first name of the customer.

Written in upper case.
{% enddocs %}

{% docs customer__last_name %}
This is the last name of the customer.

Written in upper case.
{% enddocs %}

{% docs customer__email %}
This is the customer email that they provided
when coming to the store.
{% enddocs %}

{% docs customer__address_id %}
This is the ID of the address where the customer is located.

It's a foreign key that references the `address` table.
{% enddocs %}

{% docs customer__activebool %}
This is the information on wether the user has an active
suscription for a rental plan, which entitles them to discounts
on movie rental.
{% enddocs %}

{% docs customer__create_date %}
This is the date when the customer was added to the database
regardless of acquiring a suscription for a rental plan.

It's in the format `yyyy-mm-dd`.
{% enddocs %}

{% docs customer__last_update %}
This is the timestamp of the last time the table was updated.

It's in the format `yyyy-mm-dd hh:mm:ss`
{% enddocs %}

{% docs customer__active %}
This is the active customer flag, assigned based on how often the customer
uses the store services.

| flag | description                                   |
|------|-----------------------------------------------|
| 1    | comes to the store once in a month.           |
| 1    | comes to the store at least twice in a month. |
{% enddocs %}

# film

{% docs film %}
This table contains information about the films that are
available for rental across the stores that make up the 
movie rental company.
{% enddocs %}

{% docs film__film_id %}
This is the primary key of the table.

Autoincremental ID starting by 1 and increasing by 1.
{% enddocs %}

{% docs film__title %}
This is the title that was given to the movie when released.

It's written in upper case.
{% enddocs %}

{% docs film__description %}
This is a short sinopsis of the movie.
{% enddocs %}

{% docs film__release_year %}
This is the year in which the movie was released.
{% enddocs %}

{% docs film__language_id %}
This is the ID of the language in which the movie is available 
for rental.

It's a foreign key that references the `language`table.
{% enddocs %}

{% docs film__original_language_id %}
This is the ID of the language in which the movie was originally 
released.

It's a foreign key that references the `language`table,
{% enddocs %}

{% docs film__rental_duration %}
This is a count of the days the movie has been rented so far or 
was last rented.
{% enddocs %}

{% docs film__rental_rate %}
This is how much per day a rental of the movie costs.
{% enddocs %}

{% docs film__length %}
This is the length of the movie.
{% enddocs %}

{% docs film__replacement_cost %}
This is how much replacing a movie costs in case of loss, theft 
or damage.
{% enddocs %}

{% docs film__rating %}
This is the rating of the movie according to the Motion Picture
Association Film Rating System. Which dictates recommendations
about the suitability of the audience to watch it according to 
their age.
{% enddocs %}

{% docs film__last_update %}
This is the timestamp of the last time the table was updated.

It's in the format `yyyy-mm-dd hh:mm:ss`
{% enddocs %}

{% docs film__special_features %}
This column lists what special features (such as deleted scenes 
or trailers) come with the movie.
{% enddocs %}

{% docs film__fulltext %}
This is a count of words that are relevant to convey an idea 
about the content of the movie.
{% enddocs %}

# film_actor

{% docs film_actor %}
This is a link table between the `actor` and the `film` tables.

Allows to find out in what movies the actors appear.
{% enddocs%}

{% docs film_actor__actor_id %}
This is the ID of the actor that appears in any of the movies in
the database.

It's a foreign key that references the `actor` table.
{% enddocs %}

{% docs film_actor__film_id %}
This is the ID of the film that is available in the database.

It's a foreign key that references the `film` table.
{% enddocs %}

{% docs film_actor__last_update %}
This is the timestamp of the last time the table was updated.

It's in the format `yyyy-mm-dd hh:mm:ss`
{% enddocs %}

# film_category

{% docs film_category %}
This is a link table between the `film` and the `category` tables.

Allows to find out to what category the movie belongs.
{% enddocs %}

{% docs film_category__film_id %}
This is the ID of the movie which belongs to a given category within 
the database.

It's a foreign key that references the `film` table.
{% enddocs %}

{% docs film_category__category_id %}
This is the ID of the category to which a given movie belongs.

It's a foreign key that references the `category` table.
{% enddocs %}

{% docs film_category__last_update %}
This is the timestamp of the last time the table was updated.

It's in the format `yyyy-mm-dd hh:mm:ss`
{% enddocs %}

# inventory

{% docs inventory %}
This table contains information about the stores inventory. Allows to
know which movies are in which stores.
{% enddocs %}

{% docs inventory__inventory_id %}
This is the primary key of the table.

Autoincremental ID starting by 1 and increasing by 1.
{% enddocs %}

{% docs inventory__film_id %}
This is the ID of the movie, which allows to check for its existance
in a given store inventory.

It's a foreign key that references the `film` table.
{% enddocs %}

{% docs inventory__store_id %}
This is the ID of the store, which allows to check what movies are
available in its inventory.

It's a foreign key that references the `store` table.
{% enddocs %}

{% docs inventory__last_update %}
This is the timestamp of the last time the table was updated.

It's in the format `yyyy-mm-dd hh:mm:ss`
{% enddocs %}

# language

{% docs language %}
This table contains information about the languages. It lists
the languages in which the movies are originally released or
available for rental.
{% enddocs %}

{% docs language__language_id %}
This is the primary key of the table.

Autoincremental ID starting by 1 and increasing by 1.
{% enddocs %}

{% docs language__name %}
This is the name of the language in which the movie can either
be available for rental or be originally at release time.
{% enddocs %}

{% docs language__last_update %}
This is the timestamp of the last time the table was updated.

It's in the format `yyyy-mm-dd hh:mm:ss`
{% enddocs %}

# payment

{% docs payment%}
This table contains information about the payments performed by
the customers, the staff member who processed it, the item rented
and the amount payed.
{% enddocs%}

{% docs payment__payment_id %}
This is the primary key of the table.

Autoincremental ID starting by 1 and increasing by 1.
{% enddocs %}

{% docs payment__customer_id %}
This is the ID of the customer who makes the payment.

It's a foreign key that references the `customer` table.
{% enddocs %}

{% docs payment__staff_id %}
This is the ID of the staff member who receives and processes the payment.

It's a foreign key that references the `staff` table.
{% enddocs %}

{% docs payment__rental_id %}
This is the ID of the rental transaction that's being paid for.

It's a foreign key that references the `rental` table.
{% enddocs %}

{% docs payment__amount %}
This is the amount paid at the store by the customer in US Dollars.
{% enddocs %}

{% docs payment__payment_date %}
This is the date when the payment is made.
{% enddocs %}

# rental

{% docs rental %}
This table contains information about the rental transaction, such 
as the customer who is renting, the item, the staff member who 
processes it, etc.
{% enddocs %}

{% docs rental__rental_id %}
This is the primary key of the table.

Autoincremental ID starting by 1 and increasing by 1.
{% enddocs %}

{% docs rental__rental_date %}
This is the timestamp of the time when the rental took place.

It's in the format `yyyy-mm-dd hh:mm:ss`.
{% enddocs %}

{% docs rental__inventory_id %}
This is the ID of the inventory, which gives information about the movie 
and the store where it's available.

It's a foreign key that references the `inventory` table.
{% enddocs %}

{% docs rental__customer_id %}
This is the ID of the customer who rents the movie.

It's a foreign key that references the `customer` table.
{% enddocs %}

{% docs rental__return_date %}
This is the timestamp of the time the movie is returned by the customer 
to the store.

It's in the format `yyyy-mm-dd hh:mm:ss`.
{% enddocs %}

{% docs rental__staff_id %}
This is the ID of the staff member who processed the rental transaction.

It's a foreign key that references the `staff` table.
{% enddocs %}

{% docs rental__last_update %}
This is the timestamp of the last time the table was updated.

It's in the format `yyyy-mm-dd hh:mm:ss`.
{% enddocs %}

# staff

{% docs staff %}
This table contains information about the staff members or
employees of the stores, such as their names, address, contact 
information, store in which they work, wethere they're still employed, etc.
{% enddocs %}

{% docs staff__staff_id %}
This is the primary key of the table.

Autoincremental ID starting by 1 and increasing by 1.
{% enddocs %}

{% docs staff__first_name %}
This is the first name of the staff member.

Written in capital case.
{% enddocs %}

{% docs staff__last_name %}
This is the last name of the staff member.

Written in capital case.
{% enddocs %}

{% docs staff__address_id %}
This is the ID of the address where the staff member lives.

It's a foreign key that references the `address` table.
{% enddocs %}

{% docs staff__email %}
This is the corporate email of the staff member.
{% enddocs %}

{% docs staff__store_id %}
This is the ID of the store where the staff member works.

It's a foreign key that references the `store` table.
{% enddocs %}

{% docs staff__active %}
This is the information of wether the staff member is still
employed at the store.
{% enddocs %}

{% docs staff__username %}
This is the username the staff member uses to login into the
store transactional system.
{% enddocs %}

{% docs staff__password %}
This is the password the staff member uses to login into the
store transactional system.
{% enddocs %}

{% docs staff__last_update %}
This is the timestamp of the last time the table was updated.

It's in the format `yyyy-mm-dd hh:mm:ss`.
{% enddocs %}

{% docs staff__picture %}
This is the staff picture in bytes.
{% enddocs %}

# store

{% docs store %}
This table contains information about the store, it's location 
and who is the staff member who manages it.
{% enddocs %}

{% docs store__store_id %}
This is the primary key of the table.

Autoincremental ID starting by 1 and increasing by 1.
{% enddocs %}

{% docs store__manager_staff_id %}
This is the ID of the staff member who manages the store.

It's a foreign key that references the `staff` table.
{% enddocs %}

{% docs store__address_id %}
This is the ID of the address where the store is located.

It's a foreign key that references the `address` table.
{% enddocs %}

{% docs store__last_update %}
This is the timestamp of the last time the table was updated.

It's in the format `yyyy-mm-dd hh:mm:ss`.
{% enddocs %}
