-- Migration: Add soft delete to folder table
-- This allows folders to be "deleted" without affecting historical reports

ALTER TABLE `folder`
ADD COLUMN `deleted_at` TIMESTAMP NULL DEFAULT NULL AFTER `dept_id`;

-- Add index for better query performance
ALTER TABLE `folder`
ADD INDEX `idx_deleted_at` (`deleted_at`);

-- Note: Run this SQL in phpMyAdmin or MySQL console
-- After running, folders with deleted_at = NULL are active
-- Folders with deleted_at = timestamp are soft-deleted