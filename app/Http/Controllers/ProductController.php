<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreUpdateProductRequest;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{

    protected $request;
    private $repository;

    public function __construct(Request $request, Product $product)
    {

        $this->request = $request;
        $this->repository = $product;
        //aplica em todos
        // $this->middleware('auth');

        //aplica em somente em
        // $this->middleware('auth')->only([
        //     'create', 'store', 'update'
        // ]);

        //aplica exceto em
        // $this->middleware('auth')->except('index');
    }

    public function index()
    {
        // $products = Product::all();
        // $products = Product::get();
        $products = Product::paginate('10'); //default = 15

        return view('admin.pages.products.index', ['products' => $products]);
    }
    /* public function index()
    {
        $products = ['Product 01', 'Product 02', 'Product 03'];
        $products2 = [];
        $teste = 123;
        $alerta = '<script>alert("hellow world");</script>';
        // return view('teste',['teste' => $teste]);
        return view('admin.pages.products.index',compact('teste', 'alerta', 'products', 'products2'));
        // return 'Listagem de produtos';
    } */

    public function show($id)
    {
        // $product = Product::where('id', $id)->first(); //retorna um objeto

        $product = Product::find($id); //retorna nulo se nao achar

        if (!$product) {
            return redirect()->back();
        }

        return view('admin.pages.products.show', [
            'product' => $product
        ]);
    }

    public function edit($id)
    {
        $product = Product::find($id); //retorna nulo se nao achar

        if (!$product) {
            return redirect()->back();
        }

        return view('admin.pages.products.edit', [
            'product' => $product
        ]);

        return view('admin.pages.products.edit', compact('id'));
    }

    public function create()
    {
        // $products = ['Product 01', 'Product 02', 'Product 03'];

        // return $products;
        return view('admin.pages.products.create');
    }

    // public function store( Request $request)
    public function store(StoreUpdateProductRequest $request)
    {
        $data = $request->only('name', 'description', 'price');
        // $data = $request->all();

        // $product = Product::create($data);
        Product::create($data);

        return redirect()->route('products.index');

        //outra forma de inserir
        // $product = new Product;
        // $product->name = $request->name;
        // $product->save();

        /* $request->validate([
            'name'=> 'required|min:3|max:255',
            'description'=> 'nullable|min:3|max:4000',
            'photo'=> 'required|image'
        ]); */
        // dd('OK');
        // dd($request->all());
        // dd($request->only(['name', 'description']));
        // dd($request->name);
        // dd($request->input('name'));
        // dd($request->has('name2'));
        // dd($request->except('name'));

        /*  if ($request->file('photo')->isValid()) {
            // dd($request->photo->extension());
            $nameFile = $request->name . '.' . $request->photo->extension();
            // dd($request->file('photo')->store('products'));
            dd($request->file('photo')->storeAs('products', $nameFile)); /* salva mudando o nome */
        // }
        // return 'Form ppara cadastrar um  produto';
    }

    public function update(StoreUpdateProductRequest $request, $id)
    {
        $product = Product::find($id); //retorna nulo se nao achar

        if (!$product) {
            return redirect()->back();
        }

        $product->update($request->all());

        return redirect()->route('products.index');
    }

    public function destroy($id)
    {
        $product = $this->repository->find($id); //retorna nulo se nao achar

        if (!$product) {
            return redirect()->back();
        }

        $product->delete();

        return redirect()->route('products.index');
    }
}
