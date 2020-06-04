<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%author}}`.
 */
class m200603_132421_create_authors_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%author}}', [
            'id' => $this->primaryKey(),
            'name' => $this->string(),
            'photo' => $this->string(),
            'caption' => $this->string()
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%author}}');
    }
}
