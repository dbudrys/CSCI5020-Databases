SELECT SUM(max_invoice) as "Sum Of All"
FROM (SELECT vendor_id, MAX(invoice_total) as max_invoice 
FROM invoices
WHERE invoice_total - credit_total - payment_total > 0
GROUP BY vendor_id)