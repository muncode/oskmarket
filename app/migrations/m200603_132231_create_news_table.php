<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%news}}`.
 */
class m200603_132231_create_news_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%news}}', [
            'id' => $this->primaryKey(),
            'title' => $this->string(),
            'preview' => $this->text(),
            'content' => $this->text(),
            'author_id' => $this->integer(),
            'category_id' => $this->integer()
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%news}}');
    }
}
