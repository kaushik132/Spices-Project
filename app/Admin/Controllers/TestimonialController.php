<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Testimonial;

class TestimonialController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Testimonial';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Testimonial());

        $grid->column('id', __('Id'));
        $grid->column('image', __('Image'))->image(url('/uploads/'), 100, 150);
        $grid->column('name', __('Name'));
      
  
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
        $show = new Show(Testimonial::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('image', __('Image'));
        $show->field('name', __('Name'));
        $show->field('role', __('Role'));
        $show->field('star', __('Star'));
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
        $form = new Form(new Testimonial());

        $form->image('image', __('Image'));
        $form->text('name', __('Name'));
        $form->text('role', __('Role'));
        $form->text('star', __('Star'));
        $form->textarea('description', __('Description'));

        return $form;
    }
}
