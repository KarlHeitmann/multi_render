class MR
  def initialize
    @data = {}
  end

  def add(name, route, data)
    @data[name.to_s] = {
      data_array: data,
      render_partial: ->(x) {x.call({partial: route, locals: @data[name.to_s][:data_array]})}
    }
  end

  def render_partial(name, _render)
    @data[name.to_s][:render_partial].call(_render)
  end

  def get_data
    @data
  end
end