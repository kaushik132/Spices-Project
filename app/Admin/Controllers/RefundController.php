<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Refund;

class RefundController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Refund';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Refund());

        $grid->column('id', __('Id'));
            $grid->column('image', __('Image'))->image(url('/uploads/'), 100, 150);
     

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
        $show = new Show(Refund::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('image', __('Image'));
        $show->field('description', __('Description'));
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
        $form = new Form(new Refund());

        $form->image('image', __('Image'));
        $form->ckeditor('description', __('Description'));

        return $form;
    }
}
