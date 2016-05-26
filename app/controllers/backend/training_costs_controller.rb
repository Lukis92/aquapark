# Controller For TrainingCost actions
class Backend::TrainingCostsController < BackendController
  before_action :set_training_cost, only: [:edit, :update, :destroy]
  def index
    @training_costs = TrainingCost.paginate(page: params[:page],
                                            per_page: 20).order('duration ASC')
  end

  # GET backend/training_costs/new
  def new
    @training_cost = TrainingCost.new
  end

  # POST backend/training_costs
  def create
    @training_cost = TrainingCost.new(training_cost_params)

    if @training_cost.save
      redirect_to backend_training_costs_path, notice: 'Pomyślnie dodano.'
    else
      render :new
    end
  end

  # PATCH/PUT backend/training_costs/1
  def update
    if @training_cost.update(training_cost_params)
      redirect_to backend_training_costs_path,
                  notice: 'Pomyślnie zaktualizowano.'
    else
      render :edit
    end
  end

  # DELETE backend/training_costs/1
  def destroy
    @training_cost.destroy
    redirect_to :back, notice: 'Pomyślnie usunięto.'
  end

  private

  def set_training_cost
    @training_cost = TrainingCost.find(params[:id])
  end

  def training_cost_params
    params.require(:training_cost).permit(:duration, :cost)
  end
end