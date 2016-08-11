SELECT
    c.FirstName,
    c.LastName,
    i.InvoiceId,
    i.InvoiceDate,
    i.BillingCountry
        
from Customer c, Invoice i
where i.BillingCountry = 'Brazil'
