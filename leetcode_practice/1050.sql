select actor_id, director_id
from (select actor_id, director_id, count(timestamp) as cooperate
      from ActorDirector
      group by (actor_id, director_id)) group1
where cooperate >=3 
 