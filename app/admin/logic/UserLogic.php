<?php

namespace app\admin\logic;

class UserLogic
{
    public static function isCreator($userId = 0)
    {
        if (empty($userId)) {
            $userId = dfer_get_current_admin_id();
        }
        return ($userId == 1);
    }
}