<?php


use App\Http\Controllers\Api\ArticleController as ApiArticleController;
use App\Http\Controllers\Api\AuthController as ApiAuthController;
use App\Http\Controllers\Api\ErrorController as ApiErrorController;
use App\Http\Controllers\Api\MenuAccessControlller as ApiMenuAccessControlller;
use App\Http\Controllers\Api\PreferencesController as ApiPreferencesController;
use App\Http\Controllers\Api\RoleController as ApiRoleController;
use App\Http\Controllers\Api\UserController as ApiUserController;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\Error\ExceptionController;
use App\Http\Controllers\Features\ArticleController;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\Master\RoleController;
use App\Http\Controllers\Master\UserController;
use App\Http\Controllers\Setting\MenuAccessControlller;
use App\Http\Controllers\Master\PreferencesController;
use App\Http\Controllers\Master\AlumniController;
use App\Http\Controllers\Master\MemberITController;
use App\Http\Controllers\Master\CategoryController;
use App\Http\Controllers\Master\PrestationController;
use App\Http\Controllers\Master\GalleryController;
use App\Http\Controllers\Master\DivisionController;
use App\Http\Controllers\Master\ImageDivisionController;
use App\Http\Controllers\Master\ImageGalleryController;
use App\Http\Controllers\Master\MentorController;
use App\Http\Controllers\Setting\ErrorController;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Home\IndexController as HomeController;

use App\Http\Controllers\Api\DivisionController as ApiDivisionController;
use App\Http\Controllers\Api\ImageDivisionController as ApiImageDivisionController;
use App\Http\Controllers\Api\GalleryController as ApiGalleryController;
use App\Http\Controllers\Api\CategoryController as ApiCategoryController;
use App\Http\Controllers\Api\ImageGalleryController as ApiImageGalleryController;
use App\Http\Controllers\Api\PrestationController as ApiPrestationController;
use App\Http\Controllers\Api\MemberController as ApiMemberController;
use App\Http\Controllers\Api\AlumniController as ApiAlumniController;
use App\Http\Controllers\Api\TrashController as ApiTrashController;
use App\Http\Controllers\Api\MentorController as ApiMentorController;
use App\Http\Controllers\Api\MemberITController as ApiMemberITController;
use App\Http\Controllers\Api\UserGuideController;
use App\Http\Controllers\Auth\MailController;
use App\Http\Controllers\Member\MemberController as MemberMemberController;
use App\Http\Controllers\Member\ScheduleController;
use App\Http\Controllers\Setting\TrashController;
use Illuminate\Routing\RouteGroup;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


// Home Page
Route::get('/', [HomeController::class, 'home'])->name('home');
Route::get('/tentang', [HomeController::class, 'tentang'])->name('tentang');
Route::get('/division/{slug:slug}', [HomeController::class, 'division'])->name('division');
Route::get('/gallery', [HomeController::class, 'gallery'])->name('gallery');
Route::get('/gallery/{slug:slug}', [HomeController::class, 'image_gallery'])->name('image.gallery');
Route::get('/member/{class:class}', [HomeController::class, 'member'])->name('member');
Route::get('/alumni', [HomeController::class, 'alumni'])->name('alumni');
Route::get('/mentor', [HomeController::class, 'mentor'])->name('mentor');
Route::get('/mentor/{slug:slug}', [HomeController::class, 'mentor_detail'])->name('mentor_detail');
Route::get('/article', [HomeController::class, 'article'])->name('article');
Route::get('/article/{slug:slug}', [HomeController::class, 'article_detail'])->name('article_detail');
Route::get('/eLearning', [HomeController::class, 'eLearning'])->name('eLearning');

Route::get('/dashboard/general/mail', [IndexController::class, 'mail']);
Route::get('/auth/register', [AuthController::class, 'register']);
Route::get('/auth/login', [AuthController::class, 'login'])->name('login');

Route::group(['prefix' => '/dashboard', 'middleware' => ['auth', 'access']], function () {
    Route::get('/general/index', [IndexController::class, 'dashboard_general'])->name('dashboard');
    Route::get('/user/index', [IndexController::class, 'dashboard_user'])->name('dashboard_user');
});

Route::group(['prefix' => '/authentication/mail'], function () {
    Route::get('/activation/{resource}', [MailController::class, 'activation']);
});


Route::group(['prefix' => '/master', 'middleware' => ['auth', 'access']], function () {
    Route::get('/preferences/section', [PreferencesController::class, 'section']);
    Route::get('/preferences/menu', [PreferencesController::class, 'menu']);
    Route::get('/preferences/submenu', [PreferencesController::class, 'submenu']);
    Route::get('/user', [UserController::class, 'user']);
    Route::get('/role', [RoleController::class, 'role']);
    Route::get('/category', [CategoryController::class, 'category']);
    Route::get('/divisions/division', [DivisionController::class, 'division']);
    Route::get('/divisions/imagedivision', [ImageDivisionController::class, 'image_division']);
    Route::get('/galleries/gallery', [GalleryController::class, 'gallery']);
    Route::get('/galleries/imagegallery', [ImageGalleryController::class, 'image_gallery']);
    Route::get('/profiles/mentor', [MentorController::class, 'mentor']);
    Route::get('/profiles/member', [MemberITController::class, 'member']);
    Route::get('/profiles/alumni', [AlumniController::class, 'alumni']);
    Route::get('/prestation', [PrestationController::class, 'prestation']);

});

Route::group(['prefix' => '/setting', 'middleware' => ['auth', 'access']], function () {
    Route::get('/menu/user', [MenuAccessControlller::class, 'user']);
    Route::get('/menu/role', [MenuAccessControlller::class, 'role']);
    Route::get('/error/page', [ErrorController::class, 'page']);
    Route::get('/trash/section', [TrashController::class, 'section']);
    Route::get('/trash/menu', [TrashController::class, 'menu']);
    Route::get('/trash/user', [TrashController::class, 'user']);
    Route::get('/trash/submenu', [TrashController::class, 'submenu']);
    Route::get('/trash/division', [TrashController::class, 'division']);
    Route::get('/trash/imagedivision', [TrashController::class, 'imageDivision']);
    Route::get('/trash/prestation', [TrashController::class, 'prestation']);
    Route::get('/trash/member', [TrashController::class, 'member']);
    Route::get('/trash/alumni', [TrashController::class, 'alumni']);
    Route::get('/trash/gallery', [TrashController::class, 'gallery']);
    Route::get('/trash/imagegallery', [TrashController::class, 'imageGallery']);
    Route::get('/trash/category', [TrashController::class, 'category']);
    Route::get('/trash/activity', [TrashController::class, 'activity']);
    Route::get('/trash/schedule', [TrashController::class, 'schedule']);
    Route::get('/trash/tests', [TrashController::class, 'tests']);
    Route::get('/trash/score', [TrashController::class, 'score']);
    Route::get('/trash/mentor', [TrashController::class, 'mentor']);
    Route::get('/trash/memberIT', [TrashController::class, 'memberIT']);
});

Route::group(['prefix' => '/members', 'middleware' => 'auth'], function () {
    Route::get('/{resource}/profile', [IndexController::class, 'profile_user']);
    Route::get('/{resource}/dashboard', [IndexController::class, 'dashboard_user']);
    Route::get('/{resource}/setting', [IndexController::class, 'setting_user']);
    Route::get('/{resource}/setting/changepassword', [IndexController::class, 'changepassword_setting']);
    Route::get('/{resource}/activities', [IndexController::class, 'activities_user']);
    Route::get('/{resource}/userguides', [IndexController::class, 'userguides_user']);
    Route::get('/userguides/{resource}', [IndexController::class, 'userguides']);
    Route::get('/{resource}/upgrade', [IndexController::class, 'upgrade_member']);
    Route::get('/registration', [MemberMemberController::class, 'registration']);
    Route::get('/schedule', [MemberMemberController::class, 'schedule']);
    Route::get('/member', [MemberMemberController::class, 'member']);
    Route::get('/precentages/test', [MemberMemberController::class, 'test']);
    Route::get('/precentages/score', [MemberMemberController::class, 'score']);
});

Route::group(['prefix' => '/features', 'middleware' => 'auth'], function () {
    Route::get('/article/list_article', [ArticleController::class, 'list_article']);
    Route::get('/article/view/{id}/{resource}', [ArticleController::class, 'article']);
    Route::get('/user_guides', [ArticleController::class, 'user_guides']);
});

Route::group(['prefix' => '/error'], function () {
    Route::get('/exception/{id}', [ExceptionController::class, 'page']);
});

// !NOTE API Request & Response
Route::prefix('/api/v1')->group(function () {

    Route::group(['prefix' => '/auth'], function () {
        Route::post('/register', [ApiAuthController::class, 'register']);
        Route::post('/login', [ApiAuthController::class, 'login']);
        Route::get('/logout', [ApiAuthController::class, 'logout']);
    });

    Route::group(['prefix' => '/user'], function () {
        Route::get('/get', [ApiUserController::class, 'user']);
        Route::post('/insert', [ApiUserController::class, 'insert_user']);
        Route::delete('/delete', [ApiUserController::class, 'delete_user']);
        Route::post('/update', [ApiUserController::class, 'update_user']);
        Route::put('/status/update', [ApiUserController::class, 'update_status_user']);

        Route::get('/activity/all', [ApiUserController::class, 'get_all_activity']);
        Route::get('/activity/browser', [ApiUserController::class, 'get_browser_activity']);
    });

    Route::group(['prefix' => '/role'], function () {
        Route::get('/get', [ApiRoleController::class, 'role']);
        Route::get('/all', [ApiRoleController::class, 'get_role']);
        Route::post('/insert', [ApiRoleController::class, 'insert_role']);
        Route::delete('/delete', [ApiRoleController::class, 'delete_role']);
        Route::post('/update', [ApiRoleController::class, 'update_role']);
        Route::put('/status/update', [ApiRoleController::class, 'update_status_role']);
    });

    Route::group(['prefix' => '/preferences'], function () {
        Route::get('/section', [ApiPreferencesController::class, 'section']);
        Route::get('/menu', [ApiPreferencesController::class, 'menu']);
        Route::get('/submenu', [ApiPreferencesController::class, 'submenu']);
    });

    Route::group(['prefix' => '/section'], function () {
        Route::get('/get/{id}', [ApiPreferencesController::class, 'get_section']);
        Route::post('/insert', [ApiPreferencesController::class, 'insert_section']);
        Route::delete('/delete', [ApiPreferencesController::class, 'delete_section']);
        Route::post('/update', [ApiPreferencesController::class, 'update_section']);
        Route::put('/status/update', [ApiPreferencesController::class, 'update_status_section']);
    });

    Route::group(['prefix' => '/menu'], function () {
        Route::get('/get/{id}', [ApiPreferencesController::class, 'get_menu']);
        Route::post('/insert', [ApiPreferencesController::class, 'insert_menu']);
        Route::delete('/delete', [ApiPreferencesController::class, 'delete_menu']);
        Route::post('/update', [ApiPreferencesController::class, 'update_menu']);
        Route::put('/status/update', [ApiPreferencesController::class, 'update_status_menu']);
    });

    Route::group(['prefix' => '/submenu'], function () {
        Route::get('/get/{id}', [ApiPreferencesController::class, 'get_submenu']);
        Route::post('/insert', [ApiPreferencesController::class, 'insert_submenu']);
        Route::delete('/delete', [ApiPreferencesController::class, 'delete_submenu']);
        Route::post('/update', [ApiPreferencesController::class, 'update_submenu']);
        Route::put('/status/update', [ApiPreferencesController::class, 'update_status_submenu']);
    });

    Route::group(['prefix' => '/access', 'middleware' => ['auth']], function () {
        Route::get('/get/section', [ApiMenuAccessControlller::class, 'section_get']);
        Route::get('/get/menu', [ApiMenuAccessControlller::class, 'menu_get']);
        Route::get('/get/submenu', [ApiMenuAccessControlller::class, 'submenu_get']);
        Route::get('/get/users', [ApiMenuAccessControlller::class, 'users_get']);
        Route::get('/users/section', [ApiMenuAccessControlller::class, 'users_section']);
        Route::get('/users/menu', [ApiMenuAccessControlller::class, 'users_menu']);
        Route::get('/users/submenu', [ApiMenuAccessControlller::class, 'users_submenu']);
        Route::post('/users/change/section', [ApiMenuAccessControlller::class, 'users_change_section']);
        Route::post('/users/change/menu', [ApiMenuAccessControlller::class, 'users_change_menu']);
        Route::post('/users/change/submenu', [ApiMenuAccessControlller::class, 'users_change_submenu']);
        Route::post('/change/section', [ApiMenuAccessControlller::class, 'section_change']);
        Route::post('/change/menu', [ApiMenuAccessControlller::class, 'menu_change']);
        Route::post('/change/submenu', [ApiMenuAccessControlller::class, 'submenu_change']);
    });

    Route::group(['prefix' => '/member', 'middleware' => ['auth']], function () {
        Route::get('member/get', [ApiMemberController::class, 'index']);
        Route::post('member/insert', [ApiMemberController::class, 'store']);
        Route::post('member/update', [ApiMemberController::class, 'update']);
        Route::delete('member/delete', [ApiMemberController::class, 'destroy']);

        Route::get('/get_profile', [ApiMemberController::class, 'get_profile']);
        Route::post('/insert/profile', [ApiMemberController::class, 'insert_profile']);
        Route::get('/delete/image/profile', [ApiMemberController::class, 'delete_image_profile']);
        Route::post('/setting/changepassword', [ApiMemberController::class, 'setting_changepassword']);

        Route::get('/get/activity', [ApiMemberController::class, 'get_activity']);
        Route::get('/get/profile', [ApiMemberController::class, 'member_profile']);
        Route::get('/get/stats_score', [ApiMemberController::class, 'member_stats_score']);

        Route::post('upgrade', [ApiMemberController::class, 'upgrade']);
        Route::get('registration/get', [ApiMemberController::class, 'registration_get']);
        Route::post('registration/accept', [ApiMemberController::class, 'registration_accept']);
        Route::post('registration/reject', [ApiMemberController::class, 'registration_reject']);

        Route::get('schedule/get', [ApiMemberController::class, 'schedule_get']);
        Route::post('schedule/insert', [ApiMemberController::class, 'schedule_insert']);
        Route::post('schedule/update', [ApiMemberController::class, 'schedule_update']);
        Route::delete('schedule/delete', [ApiMemberController::class, 'schedule_delete']);

        Route::get('precentages/test', [ApiMemberController::class, 'precentages_test']);
        Route::get('precentages/score', [ApiMemberController::class, 'precentages_score']);
        Route::post('precentages/test/insert', [ApiMemberController::class, 'precentages_test_insert']);
        Route::post('precentages/score/insert', [ApiMemberController::class, 'precentages_score_insert']);
        Route::post('precentages/test/update', [ApiMemberController::class, 'precentages_test_update']);
        Route::delete('precentages/test/delete', [ApiMemberController::class, 'precentages_test_delete']);
        Route::delete('precentages/score/delete', [ApiMemberController::class, 'precentages_score_delete']);
    });

    Route::group(['prefix' => '/features', 'middleware' => ['auth']], function () {
        Route::get('/article/get', [ApiArticleController::class, 'get_article']);
        Route::get('/article/get_first', [ApiArticleController::class, 'get_first_article']);
        Route::get('/article/get_all', [ApiArticleController::class, 'get_all_article']);
        Route::post('/article/insert', [ApiArticleController::class, 'insert_article']);
        Route::post('/article/category', [ApiArticleController::class, 'category_article']);
        Route::post('/article/save_content', [ApiArticleController::class, 'save_content']);
        Route::post('/article/update', [ApiArticleController::class, 'update_article']);
        Route::delete('/article/delete', [ApiArticleController::class, 'delete_article']);
        Route::post('/article/suspended', [ApiArticleController::class, 'suspended_article']);

        Route::post('/user_guide/insert', [UserGuideController::class, 'insert_guide']);
        Route::post('/user_guide/update', [UserGuideController::class, 'update_guide']);
        Route::delete('/user_guide/delete', [UserGuideController::class, 'delete_guide']);
        Route::get('/user_guide/get', [UserGuideController::class, 'get_guide']);
        Route::get('/user_guide/list', [UserGuideController::class, 'list_guide']);
        Route::post('/user_guide/list/insert', [UserGuideController::class, 'list_guide_insert']);
        Route::post('/user_guide/list/update', [UserGuideController::class, 'list_guide_update']);
        Route::delete('/user_guide/list/delete', [UserGuideController::class, 'list_guide_delete']);
    });


    Route::group(['middleware' => ['auth']], function () {

        Route::prefix('division')->group(function () {
            Route::get('get', [ApiDivisionController::class, 'index']);
            Route::post('insert', [ApiDivisionController::class, 'store']);
            Route::post('update', [ApiDivisionController::class, 'update']);
            Route::delete('delete', [ApiDivisionController::class, 'destroy']);
        });

        Route::prefix('imageDivision')->group(function () {
            Route::get('get', [ApiImageDivisionController::class, 'index']);
            Route::post('insert', [ApiImageDivisionController::class, 'store']);
            Route::post('update', [ApiImageDivisionController::class, 'update']);
            Route::delete('delete', [ApiImageDivisionController::class, 'destroy']);
        });

        Route::prefix('gallery')->group(function () {
            Route::get('get', [ApiGalleryController::class, 'index']);
            Route::post('insert', [ApiGalleryController::class, 'store']);
            Route::post('update', [ApiGalleryController::class, 'update']);
            Route::delete('delete', [ApiGalleryController::class, 'destroy']);
        });

        Route::prefix('imageGallery')->group(function () {
            Route::get('get', [ApiImageGalleryController::class, 'index']);
            Route::post('insert', [ApiImageGalleryController::class, 'store']);
            Route::post('update', [ApiImageGalleryController::class, 'update']);
            Route::delete('delete', [ApiImageGalleryController::class, 'destroy']);
        });

        Route::prefix('prestation')->group(function () {
            Route::get('get', [ApiPrestationController::class, 'index']);
            Route::post('insert', [ApiPrestationController::class, 'store']);
            Route::post('update', [ApiPrestationController::class, 'update']);
            Route::delete('delete', [ApiPrestationController::class, 'destroy']);
        });

        Route::prefix('mentor')->group(function () {
            Route::get('get', [ApiMentorController::class, 'index']);
            Route::post('insert', [ApiMentorController::class, 'store']);
            Route::post('update', [ApiMentorController::class, 'update']);
            Route::delete('delete', [ApiMentorController::class, 'destroy']);
        });

        Route::prefix('alumni')->group(function () {
            Route::get('get', [ApiAlumniController::class, 'index']);
            Route::post('insert', [ApiAlumniController::class, 'store']);
            Route::post('update', [ApiAlumniController::class, 'update']);
            Route::delete('delete', [ApiAlumniController::class, 'destroy']);
        });

        Route::prefix('category')->group(function () {
            Route::get('get', [ApiCategoryController::class, 'index']);
            Route::post('insert', [ApiCategoryController::class, 'store']);
            Route::post('update', [ApiCategoryController::class, 'update']);
            Route::delete('delete', [ApiCategoryController::class, 'destroy']);
        });

        Route::prefix('member')->group(function () {
            Route::get('get', [ApiMemberITController::class, 'index']);
            Route::post('insert', [ApiMemberITController::class, 'store']);
            Route::post('update', [ApiMemberITController::class, 'update']);
            Route::delete('delete', [ApiMemberITController::class, 'destroy']);
        });


        Route::prefix('trash')->group(function () {
            Route::get('section/get', [ApiTrashController::class, 'section_get']);
            Route::post('section/recovery', [ApiTrashController::class, 'section_recovery']);
            Route::delete('section/delete', [ApiTrashController::class, 'section_delete']);

            Route::get('menu/get', [ApiTrashController::class, 'menu_get']);
            Route::post('menu/recovery', [ApiTrashController::class, 'menu_recovery']);
            Route::delete('menu/delete', [ApiTrashController::class, 'menu_delete']);

            Route::get('submenu/get', [ApiTrashController::class, 'submenu_get']);
            Route::post('submenu/recovery', [ApiTrashController::class, 'submenu_recovery']);
            Route::delete('submenu/delete', [ApiTrashController::class, 'submenu_delete']);

            Route::get('prestation/get', [ApiTrashController::class, 'prestation_get']);
            Route::post('prestation/recovery', [ApiTrashController::class, 'prestation_recovery']);
            Route::delete('prestation/delete', [ApiTrashController::class, 'prestation_delete']);

            Route::get('user/get', [ApiTrashController::class, 'user_get']);
            Route::post('user/recovery', [ApiTrashController::class, 'user_recovery']);
            Route::delete('user/delete', [ApiTrashController::class, 'user_delete']);

            Route::get('division/get', [ApiTrashController::class, 'division_get']);
            Route::post('division/recovery', [ApiTrashController::class, 'division_recovery']);
            Route::delete('division/delete', [ApiTrashController::class, 'division_delete']);

            Route::get('imageDivision/get', [ApiTrashController::class, 'imageDivision_get']);
            Route::post('imageDivision/recovery', [ApiTrashController::class, 'imageDivision_recovery']);
            Route::delete('imageDivision/delete', [ApiTrashController::class, 'imageDivision_delete']);

            Route::get('member/get', [ApiTrashController::class, 'member_get']);
            Route::post('member/recovery', [ApiTrashController::class, 'member_recovery']);
            Route::delete('member/delete', [ApiTrashController::class, 'member_delete']);

            Route::get('alumni/get', [ApiTrashController::class, 'alumni_get']);
            Route::post('alumni/recovery', [ApiTrashController::class, 'alumni_recovery']);
            Route::delete('alumni/delete', [ApiTrashController::class, 'alumni_delete']);

            Route::get('gallery/get', [ApiTrashController::class, 'gallery_get']);
            Route::post('gallery/recovery', [ApiTrashController::class, 'gallery_recovery']);
            Route::delete('gallery/delete', [ApiTrashController::class, 'gallery_delete']);

            Route::get('imageGallery/get', [ApiTrashController::class, 'imageGallery_get']);
            Route::post('imageGallery/recovery', [ApiTrashController::class, 'imageGallery_recovery']);
            Route::delete('imageGallery/delete', [ApiTrashController::class, 'imageGallery_delete']);

            Route::get('category/get', [ApiTrashController::class, 'category_get']);
            Route::post('category/recovery', [ApiTrashController::class, 'category_recovery']);
            Route::delete('category/delete', [ApiTrashController::class, 'category_delete']);

            Route::get('activity/get', [ApiTrashController::class, 'activity_get']);
            Route::post('activity/recovery', [ApiTrashController::class, 'activity_recovery']);
            Route::delete('activity/delete', [ApiTrashController::class, 'activity_delete']);

            Route::get('schedule/get', [ApiTrashController::class, 'schedule_get']);
            Route::post('schedule/recovery', [ApiTrashController::class, 'schedule_recovery']);
            Route::delete('schedule/delete', [ApiTrashController::class, 'schedule_delete']);

            Route::get('tests/get', [ApiTrashController::class, 'tests_get']);
            Route::post('tests/recovery', [ApiTrashController::class, 'tests_recovery']);
            Route::delete('tests/delete', [ApiTrashController::class, 'tests_delete']);

            Route::get('score/get', [ApiTrashController::class, 'score_get']);
            Route::post('score/recovery', [ApiTrashController::class, 'score_recovery']);
            Route::delete('score/delete', [ApiTrashController::class, 'score_delete']);

            Route::get('mentor/get', [ApiTrashController::class, 'mentor_get']);
            Route::post('mentor/recovery', [ApiTrashController::class, 'mentor_recovery']);
            Route::delete('mentor/delete', [ApiTrashController::class, 'mentor_delete']);

            Route::get('memberIT/get', [ApiTrashController::class, 'memberIT_get']);
            Route::post('memberIT/recovery', [ApiTrashController::class, 'memberIT_recovery']);
            Route::delete('memberIT/delete', [ApiTrashController::class, 'memberIT_delete']);

        });
    });

    Route::group(['prefix' => '/setting', 'middleware' => ['auth']], function () {
        Route::get('/error/get/page', [ApiErrorController::class, 'page']);
        Route::get('/error/get/page/{id}', [ApiErrorController::class, 'get_page']);
        Route::post('/error/insert/page', [ApiErrorController::class, 'insert_page']);
        Route::post('/error/update/page', [ApiErrorController::class, 'update_page']);
        Route::delete('/error/delete/page', [ApiErrorController::class, 'delete_page']);
    });
});
