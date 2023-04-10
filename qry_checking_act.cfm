<cfoutput>

	<cftry>
		<cfquery datasource="bornex_major">
			SELECT `id` FROM `category`
		</cfquery>
		<cfcatch type="database">
			<br>Auto generated
			<br>CREATE TABLE `category`
			<cfquery datasource="bornex_major">
				CREATE TABLE `category` (
					`id` int NOT NULL AUTO_INCREMENT,
					`description` varchar(150) DEFAULT NULL,
					`long_desc` varchar(500) DEFAULT NULL,
					`jpg_filename` varchar(100) DEFAULT NULL,
					`lt_status_id` int DEFAULT NULL,
					`created_id` int DEFAULT NULL,
					`created_by` varchar(250) DEFAULT NULL,
					`created_dt` datetime DEFAULT NULL,
					PRIMARY KEY (`id`)
				) ENGINE=InnoDB
			</cfquery>     
		</cfcatch>
	</cftry>

	<cftry>
		<cfquery datasource="bornex_major">
			SELECT `id` FROM `activity`
		</cfquery>
		<cfcatch type="database">
			<br>Auto generated
			<br>CREATE TABLE `activity`
			<cfquery datasource="bornex_major">
				CREATE TABLE `activity` (
					`id` int NOT NULL AUTO_INCREMENT,
					`vendor_id` int DEFAULT NULL,
					`category_id` int DEFAULT NULL,
					`title` varchar(150) DEFAULT NULL,
					`description` varchar(250) DEFAULT NULL,
					`long_descrition` varchar(500) DEFAULT NULL,
					`price` double(20,2) DEFAULT NULL,
					`discount_price` double(20,2) DEFAULT NULL,
					`discount_percentage` varchar(10) DEFAULT NULL,
					`lt_status_id` int DEFAULT NULL,
					`cover_id` int DEFAULT NULL,
					`cover_name` varchar(250) DEFAULT NULL,
					`created_id` int DEFAULT NULL,
					`created_by` varchar(250) DEFAULT NULL,
					`created_vendor` varchar(250) DEFAULT NULL,
					`created_dt` datetime DEFAULT NULL,
					`updated_id` int DEFAULT NULL,
					`updated_by` varchar(250) DEFAULT NULL,
					`updated_vendor` varchar(250) DEFAULT NULL,
					`updated_dt` datetime DEFAULT NULL,
					`deleted_id` int DEFAULT NULL,
					`deleted_by` varchar(250) DEFAULT NULL,
					`deleted_vendor` varchar(250) DEFAULT NULL,
					`deleted_dt` datetime DEFAULT NULL,
					PRIMARY KEY (`id`)
				) ENGINE=InnoDB
			</cfquery>     
		</cfcatch>
	</cftry>	

	<cftry>
		<cfquery datasource="bornex_major">
			SELECT `id` FROM `vendor`
		</cfquery>
		<cfcatch type="database">
			<br>Auto generated
			<br>CREATE TABLE `vendor`
			<cfquery datasource="bornex_major">
				CREATE TABLE `vendor` (
					`id` int NOT NULL AUTO_INCREMENT,
					`name` varchar(150) DEFAULT NULL,
					`address` varchar(500) DEFAULT NULL,
					`lt_status_id` int DEFAULT NULL,
					`created_id` int DEFAULT NULL,
					`created_by` varchar(250) DEFAULT NULL,
					`created_vendor` varchar(250) DEFAULT NULL,
					`created_dt` datetime DEFAULT NULL,
					`updated_id` int DEFAULT NULL,
					`updated_by` varchar(250) DEFAULT NULL,
					`updated_vendor` varchar(250) DEFAULT NULL,
					`updated_dt` datetime DEFAULT NULL,
					`deleted_id` int DEFAULT NULL,
					`deleted_by` varchar(250) DEFAULT NULL,
					`deleted_vendor` varchar(250) DEFAULT NULL,
					`deleted_dt` datetime DEFAULT NULL,
					PRIMARY KEY (`id`)
				) ENGINE=InnoDB
			</cfquery>     
		</cfcatch>
	</cftry>
	
	<cftry>
		<cfquery datasource="bornex_major">
			SELECT `images` FROM `activity` LIMIT 1
		</cfquery>
		<cfcatch type="database">
			<br>Auto generated
			<br>ALTER TABLE `activity`
			<br>ADD COLUMN `images` VARCHAR(250) DEFAULT NULL;
			<cfquery datasource="bornex_major">
				ALTER TABLE `activity`  
				ADD COLUMN `images` VARCHAR(250) DEFAULT NULL;
			</cfquery>     
		</cfcatch>
	</cftry> 

	<br><br>End of checking

</cfoutput>