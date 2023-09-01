-- Provide a query that shows all Invoices. The resultant table should include:
-- InvoiceId
-- The total number of line items on each invoice
SELECT
    i.InvoiceId,
    SUM(il.InvoiceId) AS total_line_items_per_invoice
FROM Invoice i
JOIN InvoiceLine il
ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId;