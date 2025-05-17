<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Homebanner;

class HomeBannerController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Homebanner';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Homebanner());

        $grid->column('id', __('Id'));
        $grid->column('image', __('Image'))->image(url('/uploads/'), 100, 150);
        $grid->column('title', __('Title'));

      
        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Homebanner::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('image', __('Image'));
        $show->field('title', __('Title'));
        $show->field('description', __('Description'));
        $show->field('link', __('Link'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Homebanner());

        $form->image('image', __('Image'));
        $form->text('title', __('Title'));
        $form->ckeditor('description', __('Description'));
        $form->url('link', __('Link'));

        return $form;
    }
}
