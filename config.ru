  
require './config/environment'


use Rack::MethodOverride

use CooksController
use DishesController
use ExposController
run ApplicationController
