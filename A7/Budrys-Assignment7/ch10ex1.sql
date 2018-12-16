ALTER TABLE invoices
ADD CONSTRAINT check_payment_date
    CHECK((payment_date IS NULL AND payment_total = 0) 
        OR (payment_date IS NOT NULL AND payment_total > 0));

ALTER TABLE invoices
ADD CONSTRAINT check_invoice_total 
    CHECK ((payment_total + credit_total) <= invoice_total);

