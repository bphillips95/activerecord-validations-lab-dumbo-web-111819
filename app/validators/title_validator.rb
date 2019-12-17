class TitleValidator  < ActiveModel::Validator
    def validate(record)
      unless record.title.match?(/flatironschool.com/)
        record.errors[:name] << "We're only allowed to have people who work for the company in the database!"
      end
    end
  end