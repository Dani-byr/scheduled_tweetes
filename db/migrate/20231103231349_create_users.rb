class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false # es un tipo de validacion (usar en conjunto con validaciones en el modelo)
      t.string :password_digest

      t.timestamps
    end
  end
end
