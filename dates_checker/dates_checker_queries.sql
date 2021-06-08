-- Сбор данных для отправки сообщения о проблемах боту
USE dates_checker;

SET @worker_id = 86;
SELECT 
    summ.fullname_id AS fullname_id, 
    summ.item_name AS item_name, 
    IF(summ.next_check > summ.next_interim_check, 
      summ.next_interim_check, 
      summ.next_check
    ) AS next_check,
    al.chat_id AS chat_id
  FROM (SELECT 
        CONCAT(w.surname, " ", w.name, " ", w.patronymic, " | ", w.id) AS fullname_id, 
        it.name AS item_name, 
        marker(i.last_check, i.last_check, it.duration, it.duration) AS marker,
        w.id AS worker_id,
        DATE_ADD(i.last_check, INTERVAL it.duration MONTH) AS next_check,
        DATE_ADD(i.last_check, INTERVAL it.duration MONTH) AS next_interim_check
      FROM
        items i
      JOIN
        workers w ON i.worker_id = w.id AND w.id = @worker_id
      JOIN 
        item_types it ON i.item_type_id = it.id
    UNION ALL
    SELECT  
        CONCAT(w.surname, " ", w.name, " ", w.patronymic, " | ", w.id), 
        ct.name, 
        marker(c.give_date, c.last_attestation, ct.change_duration, ct.attestation_duration),
        w.id AS worker_id,
        DATE_ADD(c.give_date, INTERVAL ct.change_duration MONTH),
        DATE_ADD(c.last_attestation, INTERVAL ct.attestation_duration MONTH)
      FROM
        certificates c
      JOIN
        workers w ON c.worker_id = w.id AND w.id = @worker_id
      JOIN
        certificate_types ct ON c.certificate_type_id = ct.id
    ) summ
    LEFT JOIN
      alarm_links al ON summ.worker_id = al.worker_id
  WHERE summ.marker > 1
;

-- статистика по подразделениям
SELECT departament, COUNT(marker) AS `count`, marker
  FROM
    (SELECT 
        "Инструмент" AS item_type,
        i.id AS item_id,
        marker(i.last_check, i.last_check, it.duration, it.duration) AS marker,
        d.name AS departament
      FROM
        items i
      JOIN
        workers w ON i.worker_id = w.id
      JOIN 
        item_types it ON i.item_type_id = it.id
      JOIN 
        departaments d ON w.departament_id = d.id
    UNION ALL
    SELECT
        "Удостоверение",
        c.id,
        marker(c.give_date, c.last_attestation, ct.change_duration, ct.attestation_duration),
        d.name
      FROM
        certificates c
      JOIN
        workers w ON c.worker_id = w.id
      JOIN
        certificate_types ct ON c.certificate_type_id = ct.id
      JOIN 
        departaments d ON w.departament_id = d.id
    ) summ
  GROUP BY departament, marker
  ORDER BY departament, marker
;