# Soft Delete Implementation for Folder Table

## Overview
This implementation allows folders to be "deleted" without affecting historical reports and related data. Instead of physically deleting records, we mark them as deleted using a timestamp.

## Solution: Soft Delete Pattern

### Database Changes

**Step 1: Run the SQL Migration**

Execute the SQL script in phpMyAdmin or MySQL console:

```sql
-- File: migration_add_soft_delete.sql

ALTER TABLE `folder`
ADD COLUMN `deleted_at` TIMESTAMP NULL DEFAULT NULL AFTER `dept_id`;

ALTER TABLE `folder`
ADD INDEX `idx_deleted_at` (`deleted_at`);
```

**Result:**
- Folders with `deleted_at = NULL` are **active** (visible)
- Folders with `deleted_at = timestamp` are **soft-deleted** (hidden but preserved)

---

## Files Created/Modified

### ✅ New Files Created:

1. **migration_add_soft_delete.sql** - Database migration script
2. **module/deleteDirectory.php** - Backend soft delete handler
3. **src/dist/js/ajaxForm/deleteDirectory.js** - Frontend AJAX handler

### ✅ Files Modified:

1. **storage-detail.php**
   - Enabled delete button (removed `disabled` attribute)
   - Added delete confirmation modal
   - Updated folder query to filter `deleted_at IS NULL`
   - Added JavaScript include for deleteDirectory.js

2. **report-detail.php**
   - Fixed SQL query (line 61) - added proper JOINs for `cust_id`
   - Reports now show ALL data including from soft-deleted folders

3. **module/addDirectory.php**
   - Updated query to check only active folders (`deleted_at IS NULL`)

4. **module/editDirectory.php**
   - Updated queries to only work with active folders

---

## How It Works

### Before Implementation:
```
DELETE folder → Orphaned reports ❌
```

### After Implementation:
```
DELETE folder → Set deleted_at = NOW() ✓
                ↓
Reports remain intact ✓
Historical data preserved ✓
Folder hidden from UI ✓
```

---

## Usage

### To Delete a Folder:

1. Go to [storage-detail.php](storage-detail.php?cust_id=mp)
2. Click the **Delete** button next to any directory
3. Confirm deletion in the modal
4. **Result:** Folder is hidden but all reports remain accessible

### What Happens:

- ✅ Folder disappears from the directory list
- ✅ All historical reports in `report` table remain intact
- ✅ All business unit data in `business_unit` table remains intact
- ✅ Can still view old reports with deleted folder data
- ✅ No data loss

---

## Testing Steps

1. **Run the migration:**
   ```sql
   ALTER TABLE `folder` ADD COLUMN `deleted_at` TIMESTAMP NULL DEFAULT NULL AFTER `dept_id`;
   ```

2. **Test deletion:**
   - Navigate to: `http://localhost/esas/storage-detail.php?cust_id=mp`
   - Click Delete on any folder
   - Confirm deletion

3. **Verify reports still work:**
   - Navigate to: `http://localhost/esas/report-detail.php?cust_id=mp&report_date=2023-01`
   - Verify all reports still display correctly

4. **Check database:**
   ```sql
   SELECT folder_id, folder_name, deleted_at FROM folder;
   ```
   - Deleted folders should have a `deleted_at` timestamp

---

## Benefits

✅ **No Data Loss** - All historical data preserved
✅ **Referential Integrity** - No orphaned records
✅ **Reversible** - Can restore by setting `deleted_at = NULL`
✅ **Audit Trail** - Know when folders were deleted
✅ **Report Integrity** - Old reports continue to work

---

## Future Enhancements (Optional)

1. **Restore Functionality** - Add "Restore" button to undelete folders
2. **Permanent Delete** - Add admin function to permanently delete after X days
3. **Soft Delete for Departments** - Extend pattern to department table
4. **Audit Log** - Track who deleted what and when

---

## Security Notes

⚠️ **SQL Injection Risk**: Current code uses `mysqli_escape_string()` but still vulnerable to SQL injection. Consider using **prepared statements** for production.

Example:
```php
$stmt = $conn->prepare("UPDATE folder SET deleted_at = ? WHERE folder_id = ?");
$stmt->bind_param("ss", $currentTime, $folderId);
$stmt->execute();
```

---

## Support

If you encounter issues:
1. Check that the `deleted_at` column exists in the `folder` table
2. Verify JavaScript console for errors
3. Check PHP error logs in XAMPP
4. Ensure all modified files are saved

---

**Implementation Complete! ✅**