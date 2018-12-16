SELECT v.vendor_name, COUNT(i.vendor_id) as "Vendor Count",
    SUM(i.invoice_total) as "Invoice Total"
FROM Vendors v
INNER JOIN Invoices i
    ON v.vendor_id = i.vendor_id
GROUP BY v.vendor_name
ORDER BY "Vendor Count" DESC