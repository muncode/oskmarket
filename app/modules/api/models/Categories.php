<?php

namespace app\modules\api\models;

use phpDocumentor\Reflection\Types\Null_;
use Yii;

/**
 * This is the model class for table "categories".
 *
 * @property int $id
 * @property string|null $title
 * @property int|null $parent_id
 */
class Categories extends \yii\db\ActiveRecord
{
    public function getNews()
    {
        return $this->hasMany(News::className(), ['category_id' => 'id']);
    }
    public function getCategories()
    {
        return $this->hasMany(Categories::className(), ['parent_id' => 'id']);
    }

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'categories';
    }

    public function fields()
    {
        return [
            'id',
            'title',
            'parent_id',
        ];
    }

    public function extraFields()
    {
        return [
            'categories',
            'news',
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['parent_id'], 'integer'],
            [['title'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'parent_id' => 'Parent ID',
        ];
    }
}
