<?php

namespace App\Admin\Controllers;

use App\Models\Product;
use App\Models\ProductCategory;
use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;

class ProductController extends AdminController
{
    protected $title = 'Product';

    protected function grid()
    {
        $grid = new Grid(new Product());

        $grid->column('id', __('ID'));
        $grid->column('product_name', __('Product Name'));
        $grid->column('product_id', __('Product Category'))
            ->display(function ($product_id) {
                return ProductCategory::where('id', $product_id)->value('name');
            });

        $states = [
            'on'  => ['value' => 1, 'text' => 'Enable', 'color' => 'success'],
            'off' => ['value' => 0, 'text' => 'Disable', 'color' => 'danger'],
        ];
        $grid->column('status', __('Status'))->switch($states);

        $grid->column('image', __('Image'))->image(url('/uploads/'), 100, 150);

        return $grid;
    }

    protected function detail($id)
    {
        $show = new Show(Product::findOrFail($id));

        $show->field('id', __('ID'));
        $show->field('product_name', __('Product Name'));
        $show->field('product_id', __('Category'));
        $show->field('image', __('Thumbnail Image'))->image();
        $show->field('pictures', __('Pictures'))->image();
        $show->field('descount_price', __('Discount Price'));
        $show->field('price', __('Price'));
        $show->field('contant', __('Content'))->unescape()->as(function ($content) {
            return strip_tags($content); // Clean output
        });
        $show->field('description', __('Description'))->unescape()->as(function ($desc) {
            return strip_tags($desc);
        });
        $show->field('facebook', __('Facebook'));
        $show->field('twitter', __('Twitter'));
        $show->field('instagram', __('Instagram'));
        $show->field('linkedin', __('LinkedIn'));
        $show->field('itinerary', __('Itinerary'));
        $show->field('created_at', __('Created At'));
        $show->field('updated_at', __('Updated At'));

        return $show;
    }

    protected function form()
    {
        $form = new Form(new Product());

        $form->tab('Product Info', function (Form $form) {
            $form->select('product_id', __('Category'))
                ->options(ProductCategory::pluck('name', 'id'))
                ->default(null)
                ->rules('required');

            $form->text('product_name', __('Product Name'))->rules('required|string|max:255');
            $form->hidden('slug');

            $form->text('descount_price', __('Discount Price'))->rules('numeric|nullable');
            $form->text('price', __('Price'))->rules('required|numeric');
            $form->ckeditor('contant', __('Content'));
            $form->ckeditor('description', __('Description'));
            // $form->text('itinerary', __('Itinerary'));

            $form->number('status', __('Status'));
       

            $form->saving(function (Form $form) {
                $form->slug = strtolower(preg_replace('/[^A-Za-z0-9-]+/', '-', trim($form->product_name)));
            });
        });

        $form->tab('Media File', function (Form $form) {
            $form->image('image', __('Thumbnail Image'));

            $form->multipleImage('pictures', __('Gallery Images'))
                ->rules('mimes:png,jpeg,jpg')
                ->removable()
                ->downloadable()
                ->move('product_banner')
                ->name(function ($file) {
                    $filename = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', pathinfo($file->getClientOriginalName(), PATHINFO_FILENAME))));
                    return $filename . '-' . time() . '.' . $file->guessExtension();
                });
        });

        $form->tab('Social Media', function (Form $form) {
            $form->url('facebook', __('Facebook'))->rules('nullable|url');
            $form->url('twitter', __('Twitter'))->rules('nullable|url');
            $form->url('instagram', __('Instagram'))->rules('nullable|url');
            $form->url('linkedin', __('LinkedIn'))->rules('nullable|url');
        });

        return $form;
    }
}
