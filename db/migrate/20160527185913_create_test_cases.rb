class CreateTestCases < ActiveRecord::Migration
  def change
    create_table :test_cases do |t|
      t.text :name
      t.text :action
      t.text :expectedResult
      t.text :testType
      t.text :objName

      t.timestamps null: false
    end
  end
end
