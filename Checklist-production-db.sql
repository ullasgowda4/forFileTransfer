
update attendance_log set halfday_checkin =0 ;
update attendance_log set user_type = 1;

-- bu dump
INSERT INTO `business_unit` (`id`, `short_name`, `name`, `exception_login`, `is_active`, `checkin_start`, `checkin_end`, `halfday_cutOff`, `checkout_period`, `dashboard_key`, `lead_generation`, `created_at`, `updated_at`) VALUES
(1, 'CD', 'Consumer Durable', 0, 1, '09:30:00', '21:30:00', '13:00:00', '10', '{"data":[{"key":"Total Present","unit":"days","code":"totalPresent"},{"key":"Total Absent","unit":"days","code":"totalAbsent"},{"key":"Stores Visited","unit":"nos","code":"storeVisit"},{"key":"Branches Visited","unit":"nos","code":"branchVisit"}]}', 0, NULL, '2018-11-29 18:45:28'),
(2, 'TW', 'Two Wheeler', 0, 1, '09:30:00', '21:30:00', '13:00:00', '10', '{"data":[{"key":"Total Present","unit":"days","code":"totalPresent"},{"key":"Total Absent","unit":"days","code":"totalAbsent"},{"key":"Stores Visited","unit":"nos","code":"storeVisit"},{"key":"Branches Visited","unit":"nos","code":"branchVisit"}]}', 0, '2018-11-05 12:25:52', '2018-11-05 12:25:52'),
(3, 'UC', 'Used Car', 0, 1, '09:30:00', '21:30:00', '13:00:00', '10', '{"data":[{"key":"Total Present","unit":"days","code":"totalPresent"},{"key":"Total Absent","unit":"days","code":"totalAbsent"},{"key":"Stores Visited","unit":"nos","code":"storeVisit"},{"key":"Branches Visited","unit":"nos","code":"branchVisit"}]}', 0, NULL, NULL),
(4, 'CS', 'Cross Sell PL', 1, 1, '09:30:00', '21:30:00', '13:00:00', '10', '{"data":[{"key":"Total Present","unit":"days","code":"totalPresent"},{"key":"Total Absent","unit":"days","code":"totalAbsent"},{"key":"Customers Visited","unit":"nos","code":"customerVisit"},{"key":"Branches Visited","unit":"nos","code":"branchVisit"}]}', 0, '2018-11-05 12:25:52', '2018-11-05 12:25:52'),
(5, 'MBL', 'Micro Business Loan', 0, 1, '10:00:00', '20:00:00', '13:00:00', '10', '{"data":[{"key":"Total Present","unit":"days","code":"totalPresent"},{"key":"Total Absent","unit":"days","code":"totalAbsent"},{"key":"Lead Generated","unit":"nos","code":"lead"},{"key":"Branches Visited","unit":"nos","code":"branchVisit"}]}', 1, NULL, '2018-11-29 18:47:57'),
(6, 'PL', 'Personal Loan', 1, 1, '09:30:00', '21:30:00', '13:00:00', '10', '{"data":[{"key":"Total Present","unit":"days","code":"totalPresent"},{"key":"Total Absent","unit":"days","code":"totalAbsent"},{"key":"Customers Visited","unit":"nos","code":"customerVisit"},{"key":"Branches Visited","unit":"nos","code":"branchVisit"}]}', 0, '2018-11-05 12:25:52', '2018-11-05 12:25:52');


-- reasons and purpose of vist;
INSERT INTO `business_unit_details` (`id`, `bu_id`, `detail_type`, `detail_value`, `parent_id`, `isActive`, `createdAt`, `updatedAt`) VALUES
(5, 4, 'reason', 'Customer Visit', 0, 1, '2018-10-25 00:00:00', '2018-10-25 00:00:00'),
(6, 4, 'reason', 'reason2', 0, 0, '2018-10-25 00:00:00', '2018-10-25 00:00:00'),
(17, 4, 'purposeofvisit', 'Document Picked up', 0, 1, '2018-10-25 00:00:00', '2018-10-25 00:00:00'),
(18, 4, 'purposeofvisit', 'Rejected', 0, 1, '2018-10-25 00:00:00', '2018-10-25 00:00:00'),
(19, 4, 'purposeofvisit', 'Follow-up', 0, 1, '2018-11-13 08:00:00', '2018-11-13 14:00:00'),
(20, 4, 'purposeofvisit', 'Cancelled', 0, 1, '2018-11-13 00:00:00', '2018-11-13 10:00:00'),
(21, 4, 'purposeofvisit', 'Call center Call Back', 0, 1, '2018-11-13 08:00:00', '2018-11-13 14:00:00'),
(22, 4, 'purposeofvisit', 'Customer Not available', 19, 1, '2018-11-13 08:00:00', '2018-11-13 14:00:00'),
(23, 4, 'purposeofvisit', 'Document Pending', 19, 1, '2018-11-13 08:00:00', '2018-11-13 14:00:00'),
(24, 4, 'purposeofvisit', 'Customer need time to think', 19, 1, '2018-11-13 08:00:00', '2018-11-13 14:00:00'),
(25, 4, 'purposeofvisit', 'ROI discrepancy', 20, 1, '2018-11-13 08:00:00', '2018-11-13 14:00:00'),
(26, 4, 'purposeofvisit', 'TPD discrepancy', 20, 1, '2018-11-13 08:00:00', '2018-11-13 14:00:00'),
(27, 4, 'purposeofvisit', 'Not Interested', 20, 1, '2018-11-13 08:00:00', '2018-11-13 14:00:00'),
(28, 5, 'reason', 'Customer Visit', 0, 1, '2018-10-25 00:00:00', '2018-10-25 00:00:00'),
(29, 5, 'purposeofvisit', 'Customer Visit', 0, 1, '2018-10-25 00:00:00', '2018-10-25 00:00:00'),
(30, 6, 'reason', 'Customer Visit', 0, 1, '2018-10-25 00:00:00', '2018-10-25 00:00:00'),
(31, 6, 'purposeofvisit', 'Customer Visit', 0, 1, '2018-10-25 00:00:00', '2018-10-25 00:00:00');
