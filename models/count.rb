require 'bundler/setup'
Bundler.require

if development?
    ActiveRecord::Base.establish_connection(ENV['DATABASE_URL']||"sqlite3:db/development.db")
end


class StarCount < ActiveRecord::Base

end
class SkyCount < ActiveRecord::Base

end
class SeaCount < ActiveRecord::Base

end
class SeatCount < ActiveRecord::Base

end
class DeskCount < ActiveRecord::Base

end
class TableCount < ActiveRecord::Base

end
class ShonandaiStarCount < ActiveRecord::Base

end
class ShonandaiSkyCount < ActiveRecord::Base

end
class ShonandaiSeaCount < ActiveRecord::Base

end
class ShonandaiSeatCount < ActiveRecord::Base

end
class ShonandaiDeskCount < ActiveRecord::Base

end
class ShonandaiTableCount < ActiveRecord::Base

end


