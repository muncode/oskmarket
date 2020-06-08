<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%news}}`.
 */
class m200605_174831_create_news_table extends Migration
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
            'category_id' => $this->integer(),
        ]);

        // creates index for column `author_id`
        $this->createIndex(
            'idx-news-author_id',
            'news',
            'author_id'
        );

        // add foreign key for table `{{%authors}}`
        $this->addForeignKey(
            'fk-news-author_id',
            'news',
            'author_id',
            'authors',
            'id',
            'CASCADE'
        );

        // creates index for column `category_id`
        $this->createIndex(
            'idx-news-category_id',
            'news',
            'category_id'
        );

        // add foreign key for table `{{%categories}}`
        $this->addForeignKey(
            'fk-news-category_id',
            'news',
            'category_id',
            'categories',
            'id',
            'CASCADE'
        );
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%news}}');
    }
}
