module EventHelper
  def event_participation(event)
    user_participation = current_user.participations.where(event: event).first
    if event.participations.pluck(:user_id).include? current_user.id
      if user_participation.presence == 'yes'
        return raw "<div class='participation-icons'>\
                  #{link_to group_event_participation_path(event.group, event, user_participation, participation: { presence: 'yes' }),
                   method: :patch do raw '<i class="accept-icon-event fas fa-check-circle"></i>' end }\
                  #{ raw '<i class="validated-yes-icon-event fas fa-check-circle"></i"></i>' }\
                  #{link_to group_event_participation_path(event.group, event, user_participation, participation: { presence: 'no' }),
                   method: :patch do raw '<i class="cancel-icon-event fas fa-times-circle"></i>' end }\
                  </div>"
      else
        return raw "<div class='participation-icons'>\
                  #{link_to group_event_participation_path(event.group, event, user_participation, participation: { presence: 'yes' }),
                   method: :patch do raw '<i class="accept-icon-event fas fa-check-circle"></i>' end }\
                  #{ raw '<i class="validated-no-icon-event fas fa-times-circle"></i>' }\
                  #{link_to group_event_participation_path(event.group, event, user_participation, participation: { presence: 'no' }),
                   method: :patch do raw '<i class="cancel-icon-event fas fa-times-circle"></i>' end }\
                  </div>"
      end
    else
      return  raw "<div class='participation-icons'>\
                  #{link_to group_event_participations_path(event.group, event, user_participation, participation: { presence: 'yes' }),
                   method: :post do raw '<i class="accept-icon-event fas fa-check-circle"></i>' end }\
                  #{ raw '<i class="pending-icon-event fas fa-hourglass-half"></i>' }\
                  #{link_to group_event_participations_path(event.group, event, user_participation, participation: { presence: 'no' }),
                   method: :post do raw '<i class="cancel-icon-event fas fa-times-circle"></i>' end }\
                  </div>"
    end
  end
end
