<?php

namespace app\models;

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
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'authors';
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
