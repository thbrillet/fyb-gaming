module EventHelper
  def event_participation(event)
    user_participation = current_user.participations.where(event: event).first
    if event.participations.pluck(:user_id).include? current_user.id
      if user_participation.presence == 'yes'
        return raw "<p>You'll be there!</p>\
        #{link_to "I'm actually out!", group_event_participation_path(event.group, event, user_participation), method: :patch}"
      else
        return raw "<p>You won't be there!</p>\
        #{link_to "I'm actually in!", group_event_participation_path(event.group, event, user_participation), method: :patch}"
      end
    else
      return  raw "<div class='participation-icons'>\
                  #{link_to root_path do raw '<i class="accept-icon-event fas fa-check-circle"></i>' end }\
                  #{ raw '<i class="pending-icon-event fas fa-hourglass-half"></i>' }\
                  #{link_to root_path do raw '<i class="cancel-icon-event fas fa-times-circle"></i>' end }\
                  </div>"
    end
  end
end
