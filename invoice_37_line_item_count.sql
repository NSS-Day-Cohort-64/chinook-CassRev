-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
SELECT
    COUNT(*) AS line_items_amount
FROM InvoiceLine
WHERE InvoiceId = 37;