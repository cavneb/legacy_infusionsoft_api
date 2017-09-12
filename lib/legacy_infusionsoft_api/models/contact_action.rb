module LegacyInfusionsoftApi::Model
  class ContactAction < LegacyInfusionsoftApi::Model::Base
    def fields
      [ :Accepted, :ActionDate, :ActionDescription, :ActionType, :CompletionDate, :ContactId,
        :CreatedBy, :CreationDate, :CreationNotes, :EndDate, :Id, :IsAppointment, :LastUpdated,
        :LastUpdatedBy, :Location, :ObjectType, :OpportunityId, :PopupDate, :Priority, :UserID ]
    end
  end
end
