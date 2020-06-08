<?php

namespace app\modules\api\controllers;

use yii\data\ActiveDataProvider;
use yii\rest\ActiveController;
use app\modules\api\models\News;
use yii\web\Response;
use app\modules\api\models\Authors;

class NewsController extends ActiveController
{
    public function behaviors()
    {
        $behaviors = parent::behaviors();
        $behaviors['contentNegotiator']['formats']['text/html'] = Response::FORMAT_JSON;
        return $behaviors;
    }

    public $modelClass = 'app\modules\api\models\News';

    public function actionNews(){
        return News::find()
            ->where(['title' => $_GET['title']])
            ->all();
    }

    public function actionAuthors(){
        return News::find()
            ->where(['author_id' => $_GET['author_id']])
            ->all();
    }

    public function actionCategory(){
        return News::find()
            ->where(['category_id' => $_GET['category_id']])
            ->all();
    }

    public function actionTitle(){
        return News::find()
            ->where(['title' => $_GET['title']])
            ->all();
    }

    public function actionView($id){
        return News::find()
            ->where(['id' => $_GET[$id]])
            ->all();
    }

}
