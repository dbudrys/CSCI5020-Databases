SELECT invoice_number,
TO_CHAR(invoice_total - payment_total - credit_total, '999,999.99') "balance due",
RANK() OVER (ORDER BY TO_CHAR(invoice_total 
            - payment_total - credit_total, '999,999.99') DESC) "Balance Rank"

FROM invoices