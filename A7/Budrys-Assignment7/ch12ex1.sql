CREATE ROLE payment_entry;

GRANT select, update ON ap.vendors TO payment_entry; 

GRANT select, update ON ap.invoices TO payment_entry; 

GRANT select, update, insert ON ap.invoice_line_items TO payment_entry; 

GRANT create session TO payment_entry;