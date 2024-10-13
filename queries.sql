-- https://sql-island.informatik.uni-kl.de/

select * from inhabitant;

select * from inhabitant where state = 'friendly';

select *
from inhabitant
where
    state = 'friendly'
    and job = 'weaponsmith';

select *
from inhabitant
where
    state = 'friendly'
    and job like '%smith';

select personid from inhabitant where name = 'Stranger';

select gold from inhabitant where personid = 20;

select * from ITEM where owner is NULL;

UPDATE item SET owner = 20 WHERE item = 'coffee cup'

UPDATE item SET owner = 20 WHERE owner IS NULL;

select * from ITEM where owner = 20;

select *
from inhabitant
where (
        job = 'dealer'
        or job = 'merchant'
    )
    and state = 'friendly';

update ITEM set owner = 15 where item = 'ring' or item = 'teapot';

UPDATE inhabitant SET gold = gold + 120 WHERE personid = 20;

update inhabitant set name = 'Max' where personid = 20;

select * from inhabitant where job = 'baker' order by gold desc;

UPDATE inhabitant SET gold = gold + 100 - 150 WHERE personid = 20;

INSERT INTO item (item, owner) VALUES ('sword', 20);

select * from inhabitant where job = 'pilot';

SELECT village.name
FROM village, inhabitant
WHERE
    village.villageid = inhabitant.villageid
    AND inhabitant.name = 'Dirty Dieter';

SELECT inhabitant.name
FROM village, inhabitant
where
    village.name = 'Onionville'
    and inhabitant.personid = village.chief;

SELECT COUNT(*)
FROM inhabitant, village
WHERE
    village.villageid = inhabitant.villageid
    AND village.name = 'Onionville';

SELECT COUNT(*)
FROM inhabitant, village
WHERE
    village.villageid = inhabitant.villageid
    AND village.name = 'Onionville'
    and gender = 'f';

SELECT inhabitant.name
FROM inhabitant, village
WHERE
    village.villageid = inhabitant.villageid
    AND village.name = 'Onionville'
    and gender = 'f';

SELECT SUM(inhabitant.gold)
FROM inhabitant, village
WHERE
    village.villageid = inhabitant.villageid
    AND village.name = 'Cucumbertown'

SELECT SUM(inhabitant.gold)
FROM inhabitant
WHERE
    inhabitant.job in ('baker', 'dealer', 'merchant');

SELECT job, SUM(inhabitant.gold), AVG(inhabitant.gold)
FROM inhabitant
GROUP BY
    job
ORDER BY AVG(inhabitant.gold);

SELECT state, AVG(inhabitant.gold)
FROM inhabitant
GROUP BY
    state
ORDER BY AVG(inhabitant.gold);

DELETE FROM inhabitant WHERE name = 'Dirty Dieter';

delete from inhabitant where name = 'Dirty Diane';

update inhabitant
set
    state = 'friendly'
where
    name = 'Arthur Tailor';

-- wxV8TcSLHe
