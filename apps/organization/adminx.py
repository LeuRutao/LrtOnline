# _*_ coding: utf-8 _*_
__author__ = 'Leurutao'
__date__ = '2018/9/7 00:33'

import xadmin

from .models import CityDict, CourseOrg, Teacher


class CityDictAdmin(object):
    '''城市'''

    list_display = ['name', 'desc', 'add_time']
    search_fields = ['name', 'desc']
    list_filter = ['name', 'desc', 'add_time']


class CourseOrgAdmin(object):
    '''机构'''

    list_display = ['name', 'desc', 'click_nums', 'fav_nums', 'add_time', 'course_nums']
    search_fields = ['name', 'desc', 'click_nums', 'fav_nums']
    list_filter = ['name', 'desc', 'click_nums', 'fav_nums', 'city__name', 'address', 'add_time']

    # detail就是要显示为富文本的字段名
    style_fields = {"desc": "ueditor"}


class TeacherAdmin(object):
    '''老师'''

    list_display = ['name', 'org', 'work_years', 'work_company', 'add_time']
    search_fields = ['org', 'name', 'work_years', 'work_company']
    list_filter = ['org__name', 'name', 'work_years', 'work_company', 'click_nums', 'fav_nums', 'add_time']


xadmin.site.register(CityDict, CityDictAdmin)
xadmin.site.register(CourseOrg, CourseOrgAdmin)
xadmin.site.register(Teacher, TeacherAdmin)