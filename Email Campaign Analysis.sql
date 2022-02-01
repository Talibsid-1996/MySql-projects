SELECT * FROM campaign.`email campaign analysis`;

SELECT count(distinct(CampaignCodJ)) as Total_Campaign FROM campaign.`email campaign analysis`;

SELECT count(Email_Click_Count) As Unique_click_count FROM campaign.`email campaign analysis`
where Email_Click_Count>0;

SELECT count(Email_Open_Count)  As Unique_open_count FROM campaign.`email campaign analysis`
where Email_Open_Count>0;

SELECT sum(Email_Click_Count)  As Total_click_count FROM campaign.`email campaign analysis`;

SELECT sum(Email_Open_Count)  As Total_open_count FROM campaign.`email campaign analysis`;

SELECT count(Email_Sent_Status) as Total_bounce_email FROM campaign.`email campaign analysis`
where Email_Sent_Status="Bounced";

SELECT count(Email_Sent_Status) as Total_deliver_email FROM campaign.`email campaign analysis`
where Email_Sent_Status="Sent";

SELECT count(*) FROM campaign.`email campaign analysis`;

SELECT Email_Sent_Status,round((count(Email_Sent_Status)/100),2) as Email_status_percent FROM campaign.`email campaign analysis`
where Email_Sent_Status is not null
group by Email_Sent_Status;