# -*- coding: utf-8 -*-
from django.db import models
from django.conf import settings
from django.utils.translation import ugettext as _

class Event(models.Model):

    """
    Stores a single event
    """

    title = models.CharField(_('Title'), max_length=120)
    language = models.CharField(
        _('Language'), max_length=20, choices=settings.LANGUAGES)
    slug = AutoSlugField(populate_from='title', db_index=True)
    init_date = models.DateTimeField(_('Init date'))
    finish_date = models.DateTimeField(_('Finish date'))
    image = models.ImageField(_('Image'), upload_to='event/', blank=True)
    organizer = models.CharField(_('Organizer'), max_length=120)
    place = models.CharField(_('Place'), max_length=120)
    short_description = models.CharField(_('Short description'), max_length=250, blank=True)
    body = models.TextField(default='')

    class Meta:
        verbose_name = _("Event")
        verbose_name_plural = _("Events")

    def __unicode__(self):
        return self.title

    def __str__(self):
        return '%s' % self.__unicode__()

