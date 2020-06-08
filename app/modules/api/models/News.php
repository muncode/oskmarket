<?php

namespace app\modules\api\models;

use app\modules\api\models\Authors;
use app\modules\api\models\Categories;
use Yii;

/**
 * This is the model class for table "news".
 *
 * @property int $id
 * @property string|null $title
 * @property string|null $preview
 * @property string|null $content
 * @property int|null $author_id
 * @property int|null $category_id
 */
class News extends \yii\db\ActiveRecord
{
    public function getAuthors()
    {
        return $this->hasOne(Authors::className(), ['id' => 'author_id']);
    }
    public function getCategories()
    {
        return $this->hasMany(Categories::className(), ['id' => 'category_id']);
    }
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'news';
    }

    public function fields()
    {
        return [
            'id',
            'title',
            'preview',
            'content',
            'author_id',
            'category_id',
        ];
    }

    public function extraFields()
    {
        return [
            'categories',
            'authors',
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['preview', 'content'], 'string'],
            [['author_id', 'category_id'], 'integer'],
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
            'preview' => 'Preview',
            'content' => 'Content',
            'author_id' => 'Author ID',
            'category_id' => 'Category ID',
        ];
    }
}
