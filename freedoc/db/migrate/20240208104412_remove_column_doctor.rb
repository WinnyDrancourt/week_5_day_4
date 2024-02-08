class RemoveColumnDoctor < ActiveRecord::Migration[7.1]
  def change
    remove_column :doctors, :speciality, :string
    remove_column :doctors, :zip_code, :string
  end
end
