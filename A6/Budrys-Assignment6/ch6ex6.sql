WITH max_invoices 
AS
(SELECT MAX(invoice_total) as max_invoice 
FROM invoices
WHERE invoice_total - credit_total - payment_total > 0
GROUP BY vendor_id)

SELECT SUM(max_invoice) as "Sum Of All"
FROM max_invoices