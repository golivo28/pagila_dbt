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
This is the id of the city in which the address is located.

It's a foreign key that references the city table.
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
This is the id of the country in which the city is located.

It's a foreign key that references the country table.
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

{% docs customer__customer_id %}
{% enddocs %}
{% docs customer__store_id %}
{% enddocs %}
{% docs customer__first_name %}
{% enddocs %}
{% docs customer__last_name %}
{% enddocs %}
{% docs customer__email %}
{% enddocs %}
{% docs customer__address_id %}
{% enddocs %}
{% docs customer__activebool %}
{% enddocs %}
{% docs customer__create_date %}
{% enddocs %}
{% docs customer__last_update %}
{% enddocs %}
{% docs customer__active %}
{% enddocs %}

# film

{% docs film__film_id %}
{% enddocs %}
{% docs film__title %}
{% enddocs %}
{% docs film__description %}
{% enddocs %}
{% docs film__release_year %}
{% enddocs %}
{% docs film__language_id %}
{% enddocs %}
{% docs film__original_language_id %}
{% enddocs %}
{% docs film__rental_duration %}
{% enddocs %}
{% docs film__rental_rate %}
{% enddocs %}
{% docs film__length %}
{% enddocs %}
{% docs film__replacement_cost %}
{% enddocs %}
{% docs film__rating %}
{% enddocs %}
{% docs film__last_update %}
{% enddocs %}
{% docs film__special_features %}
{% enddocs %}
{% docs film__fulltext %}
{% enddocs %}

# film_actor

{% docs film_actor__actor_id %}
{% enddocs %}
{% docs film_actor__film_id %}
{% enddocs %}
{% docs film_actor__last_update %}
{% enddocs %}

# film_category

{% docs film_category__film_id %}
{% enddocs %}
{% docs film_category__category_id %}
{% enddocs %}
{% docs film_category__last_update %}
{% enddocs %}

# inventory

{% docs inventory__inventory_id %}
{% enddocs %}
{% docs inventory__film_id %}
{% enddocs %}
{% docs inventory__store_id %}
{% enddocs %}
{% docs inventory__last_update %}
{% enddocs %}

# language

{% docs language__language_id %}
{% enddocs %}
{% docs language__name %}
{% enddocs %}
{% docs language__last_update %}
{% enddocs %}

# payment

{% docs payment__payment_id %}
{% enddocs %}
{% docs payment__customer_id %}
{% enddocs %}
{% docs payment__staff_id %}
{% enddocs %}
{% docs payment__rental_id %}
{% enddocs %}
{% docs payment__amount %}
{% enddocs %}
{% docs payment__payment_date %}
{% enddocs %}

# rental

{% docs rental__rental_id %}
{% enddocs %}
{% docs rental__rental_date %}
{% enddocs %}
{% docs rental__inventory_id %}
{% enddocs %}
{% docs rental__customer_id %}
{% enddocs %}
{% docs rental__return_date %}
{% enddocs %}
{% docs rental__staff_id %}
{% enddocs %}
{% docs rental__last_update %}
{% enddocs %}

# staff

{% docs staff__staff_id %}
{% enddocs %}
{% docs staff__first_name %}
{% enddocs %}
{% docs staff__last_name %}
{% enddocs %}
{% docs staff__address_id %}
{% enddocs %}
{% docs staff__email %}
{% enddocs %}
{% docs staff__store_id %}
{% enddocs %}
{% docs staff__active %}
{% enddocs %}
{% docs staff__username %}
{% enddocs %}
{% docs staff__password %}
{% enddocs %}
{% docs staff__last_update %}
{% enddocs %}
{% docs staff__picture %}
{% enddocs %}

# store

{% docs store__store_id %}
{% enddocs %}
{% docs store__manager_staff_id %}
{% enddocs %}
{% docs store__address_id %}
{% enddocs %}
{% docs store__last_update %}
{% enddocs %}
