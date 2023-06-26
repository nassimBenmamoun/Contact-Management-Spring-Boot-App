# Contact-Management-Application
This project involves the development of a contact management application using Spring Boot and a MariaDB database. The application enables users to store and manage contacts efficiently.

## Contact Attributes
 - ID
 - Last Name
 - First Name
 - Phone 1 (personal number)
 - Phone 2 (professional number)
 - Address
 - Personal Email
 - Professional Email
 - Gender (male or female)

## Implemented Functionalities
 - Create a new contact.
 - Display the list of contacts in alphabetical order.
 - Delete a contact.
 - Modify a contact.
 - Search for a contact by their last name.
 - Search for a contact by their phone number (either personal or professional), and display their other information.
 - Create groups. A group has a name (e.g., family, friends, etc.) and can consist of zero or more contacts.
 - Delete a group. Deleting a group does not remove the associated contacts. Additionally, provide the ability to search for a group by its name.
 - Automatically create groups consisting of contacts with the same last name.
 - Enhance contact search by last name using phonetic search (utilize the SQL SOUNDEX function).
 - Improve the search by name functionality to allow finding contacts even with minor spelling errors, using the String Edit Distance Algorithm.

## Technologies used
 - Spring Boot
 - JSP
 - JSTL
 - CSS
 - Bootstrap
 - MariaDB
