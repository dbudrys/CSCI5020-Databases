SELECT v.vendor_name, i.invoice_date, 
    i.invoice_number, il.invoice_sequence, il.line_item_amt
FROM Vendors v 
INNER JOIN Invoices i
    ON v.vendor_id = i.vendor_id
INNER JOIN invoice_line_items il
    ON i.invoice_id = il.invoice_id