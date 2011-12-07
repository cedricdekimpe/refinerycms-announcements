module Admin
  class AnnouncementsController < Admin::BaseController

    crudify :announcement, :xhr_paging => true

  end
end
