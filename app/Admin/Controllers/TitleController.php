<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Title;

class TitleController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Title';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Title());

        $grid->column('id', __('Id'));
        $grid->column('seo_title_home', __('Seo title home'));
        $grid->column('seo_des_home', __('Seo des home'));
        $grid->column('seo_key_home', __('Seo key home'));
        $grid->column('seo_title_product', __('Seo title product'));
        $grid->column('seo_des_product', __('Seo des product'));
        $grid->column('seo_key_product', __('Seo key product'));
        $grid->column('seo_title_contact', __('Seo title contact'));
        $grid->column('seo_des_contact', __('Seo des contact'));
        $grid->column('seo_key_contact', __('Seo key contact'));
        $grid->column('seo_title_terms', __('Seo title terms'));
        $grid->column('seo_des_terms', __('Seo des terms'));
        $grid->column('seo_key_terms', __('Seo key terms'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

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
        $show = new Show(Title::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('seo_title_home', __('Seo title home'));
        $show->field('seo_des_home', __('Seo des home'));
        $show->field('seo_key_home', __('Seo key home'));
        $show->field('seo_title_product', __('Seo title product'));
        $show->field('seo_des_product', __('Seo des product'));
        $show->field('seo_key_product', __('Seo key product'));
        $show->field('seo_title_contact', __('Seo title contact'));
        $show->field('seo_des_contact', __('Seo des contact'));
        $show->field('seo_key_contact', __('Seo key contact'));
        $show->field('seo_title_terms', __('Seo title terms'));
        $show->field('seo_des_terms', __('Seo des terms'));
        $show->field('seo_key_terms', __('Seo key terms'));
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
        $form = new Form(new Title());

        $form->text('seo_title_home', __('Seo title home'));
        $form->textarea('seo_des_home', __('Seo des home'));
        $form->textarea('seo_key_home', __('Seo key home'));
        $form->image('seo_image_home', __('Seo Image home'));

        $form->text('seo_title_product', __('Seo title product'));
        $form->textarea('seo_des_product', __('Seo des product'));
        $form->textarea('seo_key_product', __('Seo key product'));
        $form->image('seo_image_product', __('Seo Image Product'));

        $form->text('seo_title_contact', __('Seo title contact'));
        $form->textarea('seo_des_contact', __('Seo des contact'));
        $form->textarea('seo_key_contact', __('Seo key contact'));
        $form->image('seo_image_contact', __('Seo Image Contact'));

        $form->text('seo_title_terms', __('Seo title terms'));
        $form->textarea('seo_des_terms', __('Seo des terms'));
        $form->textarea('seo_key_terms', __('Seo key terms'));
        $form->image('seo_image_terms', __('Seo Image terms'));


        $form->text('seo_title_privacy', __('Seo title Privacy'));
        $form->textarea('seo_des_privacy', __('Seo des Privacy'));
        $form->textarea('seo_key_privacy', __('Seo key Privacy'));
                $form->image('seo_image_privacy', __('Seo Image privacy'));

        $form->text('seo_title_refund', __('Seo title Refund'));
        $form->textarea('seo_des_refund', __('Seo des Refund'));
        $form->textarea('seo_key_refund', __('Seo key Refund'));
                $form->image('seo_image_refund', __('Seo Image Refund'));

        return $form;
    }
}
