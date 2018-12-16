SELECT invoice_number, invoice_date, invoice_date + 30,
    payment_date, payment_date - invoice_date "days_to_pay",
    EXTRACT(month FROM invoice_date) "invoice_ date month",
    EXTRACT(YEAR FROM invoice_date) "invoice_date year",
    LAST_DAY(invoice_date) "last day"
FROM invoices  
WHERE TO_CHAR(invoice_date, 'FMMonth') = 'May'