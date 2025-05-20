<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\CompanyInfo;

class CompanyInfoController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'CompanyInfo';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new CompanyInfo());

        $grid->column('id', __('Id'));
        $grid->column('address', __('Address'));
        $grid->column('phone_number', __('Phone number'));
        $grid->column('email', __('Email'));
 

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
        $show = new Show(CompanyInfo::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('address', __('Address'));
        $show->field('phone_number', __('Phone number'));
        $show->field('email', __('Email'));
        $show->field('facbook_link', __('Facbook link'));
        $show->field('whatsapp_link', __('Whatsapp link'));
        $show->field('instagram_link', __('Instagram link'));
        $show->field('youtube_link', __('Youtube link'));
        $show->field('map_link', __('Map link'));
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
        $form = new Form(new CompanyInfo());

        $form->textarea('address', __('Address'));
        $form->text('phone_number', __('Phone number'));
        $form->email('email', __('Email'));
        $form->url('facbook_link', __('Facbook link'));
        $form->text('whatsapp_link', __('Whatsapp Number'));
        $form->url('instagram_link', __('Instagram link'));
        $form->url('youtube_link', __('Youtube link'));
        $form->text('map_link', __('Map link'));

        return $form;
    }
}
