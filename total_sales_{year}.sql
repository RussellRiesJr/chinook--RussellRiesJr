-- Sum of 2009 sales totals
select sum(Total) from Invoice where InvoiceDate like '2009%'
-- Sum of 2011 sales totals
select sum(Total) from Invoice where InvoiceDate like '2011%'
