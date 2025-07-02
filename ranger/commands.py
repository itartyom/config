from ranger.api.commands import Command


class sort_created_and_top(Command):
    """:sort_created_and_top — сортировать по дате создания и перейти наверх."""

    def execute(self):
        # Сортируем по ctime
        self.fm.execute_console("set sort=ctime")
        self.fm.execute_console("set sort_reverse=False")
        # Перемещаемся к первой записи
        # (10000 вниз гарантированно унесёт курсор наверх)
        first = self.fm.thisdir.files[0].path
        self.fm.select_file(first)
