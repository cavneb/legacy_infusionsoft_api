module LegacyInfusionsoftApi::Model
  class ContactGroup < LegacyInfusionsoftApi::Model::Base
    def fields
      [ :Id, :GroupName, :GroupCategoryId, :GroupDescription ]
    end
  end
end
