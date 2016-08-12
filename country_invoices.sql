
select
    count(InvoiceId) as '# of Invoices',
    BillingCountry
from Invoice
group by BillingCountry
