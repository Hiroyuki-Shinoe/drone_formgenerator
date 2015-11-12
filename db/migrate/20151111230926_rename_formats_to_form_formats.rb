class RenameFormatsToFormFormats < ActiveRecord::Migration
  def change
    rename_table :formats, :formformats
  end
end
