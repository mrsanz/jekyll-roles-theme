## Tasks

***Within 24 Hours of Meeting***

 - [ ] Update the [shared calendar][calendar] series by extending it and and inviting any new attendees.
 - [ ] Visit the [shared document folder][folder].
 - [ ] Right-click on the `2020 - MM - DD` file.
 - [ ] Select {% if page.reference == 'onedrive' %}`Copy to`.  Set the current folder as the target location and click `Copy here`{% else %}`Make a copy`{% endif %}.
 - [ ] Replace `MM` and `DD` in the document name with the two-digit month and day of the upcoming meeting.
 - [ ] Open the document and follow the steps in the ***Do these things to set up this document section***.
 - [ ] Update the calendar invite for the next meeting to add:
   * Write-enabled link to the agenda document.
   * Copy/pasted role assignments and agenda detail.


***Tips***
* Create a short todo list of instructions in the agenda template.  
This can be used to collect information into a single place for review during the meeting, 
or linking to metrics in a spreadsheet.
* Put the most important task to complete first in the agenda.

{% if page.reference != nil %}
***To create a new shared document***
{% capture type %}default_roles/scheduler-{{page.reference}}.md{% endcapture %}
{% include {{ type }} %}
{% endif %}

{% include links.md %}
