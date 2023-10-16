SELECT u.user_id USER_ID,
       u.nickname NICKNAMED
       SUM(b.price) TOTAL_SALES
FROM used_goods_board b JOIN used_goods_user u
    ON b.writer_id = u.user_id
WHERE b.status = 'done'
GROUP BY u.user_id
HAVING SUM(b.price) >=700000
ORDER BY total_sales;



