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
Greek-language mappings for language-dependent features of
reStructuredText.
"""

__docformat__ = 'reStructuredText'

# XREIAZETAI ANATHEORISI 

directives = {
      '�������': 'attention',
      '�������': 'caution',
      '��������': 'danger',
      '������': 'error',
      '��������': 'hint',
      '���������': 'important',
      '��������': 'note',
      '��������': 'tip',
      '�������������': 'warning',
      '�������������': 'admonition',
      '������ �����': 'sidebar',
      '����': 'topic',
      '������-�������': 'line-block',
      'parsed-literal': 'parsed-literal',
      '���������': 'rubric',
      '��������': 'epigraph',
      '��������� ������': 'highlights',
      'pull-quote': 'pull-quote',
      '�����': 'compound',
      '�������': 'container',
      #'���������': 'questions',
      '�������': 'table',
      '�������-csv': 'csv-table',
      'list-table': 'list-table',
      #'faq': 'questions',
      'meta': 'meta',
      #'imagemap': 'imagemap',
      '������': 'image',
      '����������': 'figure',
      '��������������': 'include',
      'raw': 'raw',
      '�����������': 'replace',
      'unicode': 'unicode',
      '����������': 'date',
      '���������': 'class',
      '�����': 'role',
      '�����-����������': 'default-role',
      '������': 'title',
      '�����������': 'contents',
      '��������-��������': 'sectnum',
      '�����������': 'header',
      '�����������': 'footer',
      #'�������������': 'footnotes',
      #'����������': 'citations',
      'target-notes': 'target-notes',
      'restructuredtext-test-directive': 'restructuredtext-test-directive'}
"""Greek name to registered (in directives/__init__.py) directive name
mapping."""

roles = {
    '��������': 'abbreviation',
    '�����������': 'acronym',
    'index': 'index',
    'subscript': 'subscript',
    'superscript': 'superscript',
    '�������-������': 'title-reference',
    '������': 'title-reference',
    'pep-reference': 'pep-reference',
    'pep': 'pep-reference',
    'rfc-reference': 'rfc-reference',
    'rfc': 'rfc-reference',
    '������': 'emphasis',
    '�������': 'strong',
    '�������������': 'literal',
    '�������-�������': 'named-reference',
    '�������-�������': 'anonymous-reference',
    '�������-������������': 'footnote-reference',
    '�������-����������': 'citation-reference',
    '�������-��������������': 'substitution-reference',
    '������': 'target',
    'uri-reference': 'uri-reference',
    'uri': 'uri-reference',
    'url': 'uri-reference',
    'raw': 'raw',}
"""Mapping of Greek role names to canonical role names for interpreted text.
"""
