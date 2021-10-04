class ToDo
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def info
    if @tasks == []
      puts '【！】 タスクはありません。'
    else
      @tasks.each do |task|
        puts "【追加】#{task.info}"
      end
      puts '*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*'
      @tasks.each do |task|
        puts task.info.to_s
      end
      puts '*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*'
    end
  end

  def delete(id:)
    task = @tasks.find { |task| task.id == id }

    if task.nil?
      puts '【！】 該当idのタスクはありません。'
    else
      @tasks.delete(task)
      puts "【削除】#{task.info}"
    end
  end
end
