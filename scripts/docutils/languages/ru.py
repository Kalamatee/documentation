# Author: David Goodger; Sergey Mineychev
# Contact: goodger@users.sourceforge.net; keen@aros.org
# Revision: $Revision: 16716 $
# Date: $Date: 2006-08-12 16:53:09 +0400 (����, 10 ����� 2003) $
# Copyright: This module has been placed in the public domain.

"""
Russian-language mappings for language-dependent features of Docutils.
"""

__docformat__ = 'reStructuredText'


from docutils import nodes


labels = {
      'author': '�����',
      'authors': '������',
      'organization': '�����������',
      'address': '�����',
      'contact': '�������',
      'version': '������',
      'revision': '�������',
      'status': '������',
      'date': '����',
      'copyright': 'Copyright',
      'dedication': '����������',
      'abstract': '�����',
      'attention': '��������!',
      'caution': '��������!',
      'danger': '!������!',
      'error': '������',
      'hint': '�����',
      'important': '�����',
      'note': '�������',
      'tip': '���������',
      'warning': '��������������',
      'contents': '����������'}
"""Mapping of node class name to label text."""

bibliographic_fields = {
      '�����': nodes.author,
      '������': nodes.authors,
      '�����������': nodes.organization,
      '�����': nodes.address,
      '�������': nodes.contact,
      '������': nodes.version,
      '�������': nodes.revision,
      '������': nodes.status,
      '����': nodes.date,
      'copyright': nodes.copyright,
      '����������': nodes.topic,
      '�����': nodes.topic}
"""Field name (lowcased) to node class name mapping for bibliographic fields
(field_list)."""

author_separators = [';', ',']
"""List of separator strings for the 'Authors' bibliographic field. Tried in
order."""
