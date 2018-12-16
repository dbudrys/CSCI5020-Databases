

CREATE USER Tom IDENTIFIED BY temp DEFAULT TABLESPACE users;

GRANT payment_entry TO Tom;

SELECT vendor_id from ap.vendors;

