<?php

namespace app\modules\api\controllers;

use yii\rest\ActiveController;
use yii\web\Response;
use app\modules\api\models\Categories;

class CategoriesController extends ActiveController
{
    public $modelClass = 'app\modules\api\models\Categories';

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        $behaviors['contentNegotiator']['formats']['text/html'] = Response::FORMAT_JSON;
        return $behaviors;
    }

    public function actionCategories(){
        return Categories::find()
            ->where(['parent_id' => null])
            ->all();
    }

}
