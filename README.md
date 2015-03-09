Boris Bikes
====================
Makers Academy Week 1 Project introduces us to Object-Oriented Programming and testing with RSpec. We simulated the Barclays Cycle Hire system in London with separate classes for bikes, docking stations, vans, garages, and people.

A person can rent a bike from one station and return it to another. A bike can be broken if the person has an accident. Broken bikes will not be rented out, and can be fixed when picked up by a van and taken to the garage.

## Summary of learning objectives for the week + for the project

* Can initialize a new project for TDD with RSpec
* Follow RSpec best practices for writing tests using describe/context/it
* Can use doubles to test message expectations
* Can use doubles to stub unpredictable behaviour
* Can discuss the philosophy of TDD and understands its role in:
    * Documenting code
    * Ensuring quality
    * Enabling emergent design
* Has pair-programmed every day
* Can discuss the philosophy of pair programming and identify at least one individual learning that would not have happened without it.
* Can use Git and GitHub to create and share repositories with a pair partner
* Has a basic understanding of Agile principles, in particular:
    * EDUF (enough design up front) over BDUF or NDUF  (big design up front/ no design up front)
    * Fail fast and rapid feedback
    * Building incrementally using iterations
* Has a basic understanding of MVP

## Encapsulation

##### Class - Bike

Responsibilites             | Collaborators
----------------------------|------------------
Be rented                   | User, Station
Be returned                 | User, Station, Van
Be broken                   | User
Be fixed                    | Garage
Be held                     | Garage, Van, User, Station
Be moved                    | Van, User

##### Class - User

Responsibilites     | Collaborators
--------------------|------------------------
Rent                |  Bike, Station
Break               |  Bike
Return              |  Bike, Station
Move                |  Bike

##### Class - Station 

Responisibilites        |Collaborators
------------------------|------------------
Hold                    | Bike
Receive                 | Bike, User, Van
Eject                   | Bike, User, Van

##### Class - Van 

Responisibilites        |Collaborators
------------------------|------------------
Receive                 | Bike, Station, Garage
Eject                   | Bike, Station, Garage
Holding                 | Bike
Move                    | Bike, Station, Garage

##### Class - Garage 

Responisibilites        |Collaborators
------------------------|------------------
Hold                    | Bike
Fix                     | Bike
Receive                 | Bike, Van
Eject                   | Bike, Van

### Technologies used:

- Ruby
- Rspec

### Paired With:

- [Josh Bebbington](https://github.com/bebbs)
