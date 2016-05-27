class CreateTestCases < ActiveRecord::Migration
  def change
    create_table :test_cases do |t|
      t.text :action
      t.text :expectedResult
      t.text :TestType

      t.timestamps null: false
    end
  end
end
