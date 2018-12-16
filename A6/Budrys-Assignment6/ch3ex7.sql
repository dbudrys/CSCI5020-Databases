SELECT invoice_due_date as "Due Date", invoice_total as "Invoice Total",
    invoice_total * .1 as "10%",
    (invoice_total * .1 + invoice_total) as "Plus 10%"
FROM Invoices 
WHERE invoice_total >= 500 AND invoice_total <= 1000
ORDER BY invoice_due_date desc