/**
 * @version v1.7.1
 * @signature df33159ab22415aa4109d1c306dcbc11
 *
 *  - Adds a new column called time_spent to the ticket and ticket_thread
 *    tables. This is used by the Simple Time Spent mod, which adds a box toi
 *    the close ticket form to allow a user to enter the decimal time spenti
 *    completing the ticket (i.e. in fractions of an hour).  
 */

ALTER TABLE `ost_ticket`  ADD `time_spent` UNSIGNED FLOAT(4,2) DEFAULT '0.00';
ALTER TABLE `ost_ticket_thread`  ADD `time_spent` UNSIGNED FLOAT(4,2) DEFAULT '0.00';

-- Finished with patch
UPDATE `%TABLE_PREFIX%config`
    SET `value` = 'df33159a'
	WHERE `key` = 'schema_signature' AND `namespace` = 'core';
