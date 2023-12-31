-- Provide a query that shows each Invoice line item, with the name of the track that was purchased.
SELECT
    il.InvoiceLineId AS invoice_line,
    t.name
FROM InvoiceLine il
JOIN Track t 
ON t.TrackId = il.TrackId;
