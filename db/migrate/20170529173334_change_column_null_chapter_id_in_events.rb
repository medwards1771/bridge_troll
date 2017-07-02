class ChangeColumnNullChapterIdInEvents < ActiveRecord::Migration[5.0]
  def up
    change_column_null(:events, :chapter_id, true)
  end

  def down
    change_column_null(:events, :chapter_id, false)
  end
end
