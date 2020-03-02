<?php

// Route::any('/any', function () {
//     return 'any';
// });

//forma de otimizar
Route::group([
    // 'middleware' => ['auth'],
    'middleware' => [],
    'prefix' => 'admin',
    'namespace' => 'Admin',
    'name' => 'admin.'
], function () {
    Route::get('/financeiro', 'TesteController@teste')->name('financeiro');

    Route::get('/home', 'TesteController@teste')->name('home');

    Route::get('/', function () {
        return redirect()->route('admin.dashboard');
    })->name('home');
});



//grupos de rotas com prefixo e namespace
/* Route::middleware([])->group(function () {
    Route::prefix('admin')->group(function () {
        Route::namespace('Admin')->group(function () {
            Route::get('/financeiro', function () {
                return 'Painel Financeiro Admin';
            });

            Route::get('/home', 'TesteController@teste');

            Route::get('/', 'TesteController@teste')->name('admin.raiz');
        });
    });
}); */

//grupos de rotas com prefixo
/* Route::middleware([])->group(function () {
    Route::prefix('admin')->group(function () {
        Route::get('/financeiro', function () {
            return 'Painel Financeiro Admin';
        });

        Route::get('/home', 'Admin\TesteController@teste');

        Route::get('/', 'Admin\TesteController@teste');

        // Route::get('/', function () { 
        //     return 'Admin';
        // });

    });
}); */

//grupos de rotas com prefixo
/* Route::middleware(['auth'])->group(function () {
    Route::prefix('panel')->group(function () {
        Route::get('/financeiro', function () {
            return 'Painel Financeiro Admin';
        });

        Route::get('/dashboard', function () {
            return 'Painel Financeiro Admin';
        });


        Route::get('/', function () {
            return 'Admin';
        });
    });
}); */




//grupos de rotas
// Route::middleware(['auth'])->group(function(){
//     Route::get('/admin/financeiro', function () {
//         return 'Financeiro Admin';
//     });
//     Route::get('/admin/dashboard', function () {
//         return 'Financeiro Admin';
//     });
// });

Route::get('/login', function () {
    return 'Tela de Login';
})->name('login');

Route::get('/admin/dashboard', function () { //para acessar precisa estar autenticado
    return 'Home Admin';
})->middleware('auth');

// Route::get('/admin/financeiro', function () {
//     return 'Financeiro Admin';
// });




// ====
Route::get('/redirect3', function () {
    return redirect()->route('url.name');
});

Route::get('/nome-url', function () {
    return 'url que pode mudar';
})->name('url.name');
// ====

// Route::view('/view', 'welcome');
Route::view('/view', 'site.contato', ['id' => 'teste']);

Route::redirect('/redirect1', 'redirect2');

Route::match(['get', 'post'], '/match', function () {
    return 'match';
});

Route::get('/redirect1', function () {
    return redirect('redirect2');
});

Route::get('/redirect2', function () {
    return "redirect 2";
});

Route::get('/categorias/{flag}/posts', function ($flag) {
    return "Posts da categoria: {$flag}";
});

Route::get('/produtos/{flag?}', function ($flag = '') { //passagem de parametro opcional
    return "Produtos da categoria: {$flag}";
});

Route::get('/categorias/{flag}', function ($prm1) {
    return "Produtos da categoria: {$prm1}";
});

Route::get('/contato', function () {
    return view('site.contato');
});

Route::get('/teste', function () {
    return 'Teste';
});

Route::get('/', function () {
    return view('welcome');
});
