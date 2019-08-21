current_valuation = 0
current_karma = 0

SCHEDULER.every '2s' do
    hrows = [
        {
          style: 'color:#888;',
          class: 'right',
          cols: [
            {class: 'left', value: '项目'},
            {style: 'color:red; text-align:center;',value: '构建次数'},
           ]
        }
      ]
      
      rows = [
        { cols: [ {class: 'left', value: 'test'+rand(100).to_s}, {value: rand(100)}]},
        { cols: [ {class: 'left', value: 'ci'+rand(100).to_s}, {value: rand(100)}]},
        { cols: [ {class: 'left', value: 'cd'+rand(100).to_s}, {value: rand(100)}]},
        { cols: [ {class: 'left', value: 'demo'+rand(100).to_s}, {value: rand(100)}]}
      ]
      
      send_event('my-table', { hrows: hrows, rows: rows } )
end