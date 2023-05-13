<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Role\RoleController;


//Hàm Route::controller() được sử dụng để đăng ký một bộ điều khiển (controller)
// của ứng dụng và tạo ra các tuyến đường tự động dựa trên các phương thức của controller.
Route::controller(RoleController::class)->prefix("/admin/role")

    ->group(function() {
        Route::get('/index', 'index')->name('role.index');
        Route::post('/add', 'add')->name('role.add');
        Route::post('/delete', 'delete')->name('role.delete');
        // controller được đăng ký là RoleController, có chứa các phương thức index(), add() và delete().
        // Các phương thức này được gọi tự động khi một yêu cầu tương ứng được nhận từ trình duyệt.
});
