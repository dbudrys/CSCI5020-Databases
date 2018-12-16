SELECT v.vendor_name, COUNT(DISTINCT il.account_number)
FROM invoice_line_items il
INNER JOIN invoices i
    ON il.invoice_id = i.invoice_id
    
INNER JOIN vendors v
    ON i.vendor_id = v.vendor_id 
   
GROUP BY v.vendor_name
HAVING  COUNT(DISTINCT il.account_number) > 1
ORDER BY v.vendor_name 