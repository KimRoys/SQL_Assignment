-- 1 Hämta ålder för spelaren Johan Andersson.
select age, playername from player where playername = "Johan Andersson";

-- 2. Hämta datum för tävlingen Big Golf Cup Skövde.
select compdate, compname from competition where compname = "Big Golf Cup Skövde";

-- 3. Hämta materialet för Johan Anderssons klubba.
select material from golfclub where playerpnr = "19960401-5316";

-- 4. Hämta alla jackor som tillhör Johan Andersson.
select * from jacket where playerpnr = "19960401-5316";

-- 5. Hämta alla spelare som deltog i Big Golf Cup Skövde.
select * from competitionParticipates where compname = "Big Golf Cup Skövde";

-- 6. Hämta regnens vindstyrka för Big Golf Cup Skövde.
select windStrength from rain where compname = "Big Golf Cup Skövde";

-- 7. Hämta alla spelare som är under 30 år.
select * from player where age < 30;

-- 8. Ta bort Johan Anderssons jackor.
delete from jacket where playerpnr = "19960401-5316";

-- 9. Ta bort Nicklas Jansson.
delete from jacket where playerpnr = "20020210-3537";
delete from golfclub where playerpnr = "20020210-3537";
delete from competitionParticipates where playerpnr = "20020210-3537";
delete from player where playerpnr = "20020210-3537";

-- 10. Hämta medelåldern för alla spelare.
select avg(age) as averageAge from player;