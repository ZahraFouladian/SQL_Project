-- Keep a log of any SQL queries you execute as you solve the mystery.
-- check crime secene reports
SELECT
  *
FROM
  crime_scene_reports
WHERE
  YEAR = 2021
  AND MONTH = 7
  AND DAY = 28
  AND street = 'Humphrey Street';

-- find interview of witnesses
SELECT
  *
FROM
  interviews
WHERE
  YEAR = 2021
  AND MONTH = 7
  AND DAY = 28;

-- The THIEF is:
SELECT
  people.name
FROM
  passengers
  JOIN people USING (passport_number)
WHERE
  passengers.flight_id = 36
INTERSECT
SELECT
  name
FROM
  phone_calls
  JOIN people ON people.phone_number = phone_calls.caller
WHERE
  YEAR = 2021
  AND MONTH = 7
  AND DAY = 28
  AND duration < 60
INTERSECT
SELECT
  people.name
FROM
  atm_transactions
  JOIN bank_accounts USING (account_number)
  JOIN people ON bank_accounts.person_id = people.id
WHERE
  YEAR = 2021
  AND MONTH = 7
  AND DAY = 28
  AND transaction_type = 'withdraw'
  AND atm_location = 'Leggett Street'
INTERSECT
SELECT
  people.name
FROM
  bakery_security_logs
  JOIN people USING (license_plate)
WHERE
  YEAR = 2021
  AND MONTH = 7
  AND DAY = 28
  AND HOUR = 10
  AND MINUTE < 20
  AND activity = 'exit';

-- find flight based on iterview
SELECT
  flights.id AS id_flight,
  flights.destination_airport_id AS id_destination
FROM
  flights
  JOIN airports ON flights.origin_airport_id = airports.id
WHERE
  YEAR = 2021
  AND MONTH = 7
  AND DAY = 29;

-- The city the thief ESCAPED TO:  the id of the fight is 36 and its destination is new york city
SELECT
  city AS destination
FROM
  airports
WHERE
  id = 4;

-- The ACCOMPLICE is:
SELECT
  name,
  duration
FROM
  phone_calls
  JOIN people ON people.phone_number = phone_calls.receiver
WHERE
  YEAR = 2021
  AND MONTH = 7
  AND DAY = 28
  AND duration = (
    SELECT
      duration
    FROM
      phone_calls
      JOIN people ON people.phone_number = phone_calls.caller
    WHERE
      YEAR = 2021
      AND MONTH = 7
      AND DAY = 28
      AND people.name = 'Bruce'
  );