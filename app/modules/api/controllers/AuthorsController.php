<?php

namespace app\modules\api\controllers;

use yii\rest\ActiveController;
use yii\web\Response;

class AuthorsController extends ActiveController
{
    public $modelClass = 'app\modules\api\models\Authors';

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        $behaviors['contentNegotiator']['formats']['text/html'] = Response::FORMAT_JSON;
        return $behaviors;
    }

}

