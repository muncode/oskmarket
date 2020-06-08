<?php

namespace app\modules\api\models;

use app\modules\api\models\News;
use Yii;

/**
 * This is the model class for table "authors".
 *
 * @property int $id
 * @property string|null $name
 * @property string|null $photo
 * @property string|null $caption
 */
class Authors extends \yii\db\ActiveRecord
{
    public function getNews()
    {
        return $this->hasMany(News::className(), ['author_id' => 'id']);
    }
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'authors';
    }

    public function fields()
    {
        return [
            'id',
            'name',
            'photo',
            'caption',
        ];
    }

    public function extraFields()
    {
        return [
            'news'
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'photo', 'caption'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'photo' => 'Photo',
            'caption' => 'Caption',
        ];
    }
}
