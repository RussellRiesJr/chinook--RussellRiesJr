select c.* 
from Customer c 
where c.Country != 'USA' 
ORDER BY c.Country DESC
