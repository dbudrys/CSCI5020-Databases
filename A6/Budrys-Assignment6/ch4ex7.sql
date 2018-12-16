SELECT vendor_name, vendor_state
FROM Vendors
WHERE vendor_state = 'CA'

UNION

SELECT vendor_name, 'Outside CA'
FROM Vendors
WHERE vendor_state <> 'CA'
ORDER BY vendor_name