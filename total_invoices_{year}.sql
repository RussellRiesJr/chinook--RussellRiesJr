
select (select count(InvoiceDate) from Invoice i where i.InvoiceDate like '2009%')
    + (select count(InvoiceDate) from Invoice i where i.InvoiceDate like '2011%') '2009 + 2011 Invoice Count'
