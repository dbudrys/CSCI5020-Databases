INSERT INTO invoices (invoice_id, vendor_id, invoice_number, invoice_date, invoice_total,
    payment_total, credit_total, terms_id, invoice_due_date, payment_date)
VALUES (115, 32, 'AX-014-027', TO_DATE('1-AUG-2008', 'DD-MON-RR'), 
    434.58, 0.00 ,0.00, 2,  TO_DATE('31-AUG-2008', 'DD-MON-RR'), null)