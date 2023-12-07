-- Admin Statistics
SELECT u.username as admin,
       COUNT(DISTINCT n.news_id) as news_count,
       COUNT(DISTINCT c.comment_id) as comments_count,
       COUNT(DISTINCT l.like_id) as likes_count
FROM (SELECT user_id, username
      FROM "user" u
               JOIN role r on r.role_id = u.role_id
      WHERE role_name = 'ROLE_ADMIN') u
         LEFT JOIN news n ON u.user_id = n.user_id
         LEFT JOIN comment c ON n.news_id = c.news_id
         LEFT JOIN "like" l ON n.news_id = l.news_id
GROUP BY u.username
ORDER BY news_count DESC, comments_count DESC, likes_count DESC;


-- Users Activity
SELECT u.username,
       COUNT(DISTINCT s.solve_id) as solves_count,
       COUNT(DISTINCT c.comment_id) as comments_count,
       COUNT(DISTINCT l.like_id) as likes_count,
       GREATEST(COALESCE(MAX(s.date), '1900-01-01'),
                COALESCE(MAX(c.date), '1900-01-01'),
                COALESCE(MAX(l.date), '1900-01-01')) as last_activity
FROM "user" u
         LEFT JOIN solve s ON u.user_id = s.user_id
         LEFT JOIN comment c ON u.user_id = c.user_id
         LEFT JOIN "like" l ON u.user_id = l.user_id
WHERE COALESCE(s.date, c.date, l.date) IS NOT NULL
GROUP BY u.username
ORDER BY solves_count DESC, comments_count DESC, likes_count DESC;


-- Users Best Solve
SELECT u.username,
       s.time AS best_time,
       stat.status_name AS status,
       s.date
FROM "user" u
         JOIN (SELECT user_id,
                      MIN(EXTRACT(epoch FROM (time::time))) AS best_solve_time
               FROM solve
                        JOIN discipline d ON solve.discipline_id = d.discipline_id
                        JOIN status stat ON solve.status_id = stat.status_id
               WHERE stat.status_name != 'DNF' AND
                       d.discipline_name = :discipline
               GROUP BY user_id) bs ON u.user_id = bs.user_id
         JOIN solve s ON bs.user_id = s.user_id AND
                         bs.best_solve_time = EXTRACT(epoch FROM (s.time::time))
         JOIN status stat ON s.status_id = stat.status_id
ORDER BY s.time;