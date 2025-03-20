<?php

require_once "./config/database.php";

$q = "
SELECT 
        job_offer.id AS job_offer_id, 
        job_offer.name AS job_title, 
        company.name AS company_name,
        company.img AS company_img,
        GROUP_CONCAT(tag.name SEPARATOR ', ') AS tags
    FROM job_offer
    INNER JOIN company ON job_offer.company_id = company.id
    LEFT JOIN job_offer_tags ON job_offer.id = job_offer_tags.job_offer_id
    LEFT JOIN tag ON job_offer_tags.tag_id = tag.id
    GROUP BY job_offer.id, job_offer.name, company.name, company.img;
";

$sqlStatement = $conn->prepare($q);
$sqlStatement->execute();
$jobOffersData = $sqlStatement->fetchAll(PDO::FETCH_ASSOC);

var_dump($jobOffersData);
