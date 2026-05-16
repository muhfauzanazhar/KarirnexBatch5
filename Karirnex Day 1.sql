SELECT status, COUNT (*) AS jumlah_s
FROM Dataset.karirnex
GROUP BY status
ORDER BY jumlah_s DESC;

SELECT Kota, COUNT (*) AS jumlah_k
FROM Dataset.karirnex
WHERE status = 'completed'
GROUP BY Kota
ORDER BY jumlah_k DESC;

SELECT Kota, SUM(total_sales) as total
FROM Dataset.karirnex
WHERE status = 'completed'
GROUP BY Kota
ORDER BY total DESC;