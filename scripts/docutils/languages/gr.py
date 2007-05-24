# Author: Ioannis Koniaris
# Contact: ikoniari@csd.auth.gr
# Revision: $Revision: 24659 $
# Date: $Date: 2006-08-23 02:45:24 +0300 (���, 23 ��� 2006) $
# Copyright: This module has been placed in the public domain.

# New language mappings are welcome.  Before doing a new translation, please
# read <http://docutils.sf.net/docs/howto/i18n.html>.  Two files must be
# translated for each language: one in docutils/languages, the other in
# docutils/parsers/rst/languages.

"""
Greek-language mappings for language-dependent features of Docutils.
"""

__docformat__ = 'reStructuredText'

labels = {
      'author': '����������',
      'authors': '����������',
      'organization': '����������',
      'address': '���������',
      'contact': '�����������',
      'version': '������',
      'revision': '����������',
      'status': '�������',
      'date': '����������',
      'copyright': 'Copyright',
      'dedication': '��������',
      'abstract': '��������',
      'attention': '�������!',
      'caution': '�������!',
      'danger': '!��������!',
      'error': '������',
      'hint': '��������',
      'important': '���������',
      'note': '��������',
      'tip': '��������',
      'warning': '�������������',
      'contents': '�����������'}
"""Mapping of node class name to label text."""

bibliographic_fields = { 
      '����������': 'author',
      '����������': 'authors',
      '����������': 'organization',
      '���������': 'address',
      '�����������': 'contact',
      '������': 'version',
      '����������': 'revision',
      '�������': 'status',
      '����������': 'date',
      'copyright': 'copyright',
      '��������': 'dedication',
      '��������': 'abstract'}
"""Greek (lowcased) to canonical name mapping for bibliographic fields."""

author_separators = [';', ',']
"""List of separator strings for the 'Authors' bibliographic field. Tried in
order."""
