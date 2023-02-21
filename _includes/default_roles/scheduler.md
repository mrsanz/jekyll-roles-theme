## Tasks

***Within 24 Hours of Prior Meeting***

{% if page.invite_type == "series" %}- [ ] Update the [shared calendar][calendar] series with any new attendees.{% endif %}
 - [ ] Visit the [shared document folder][folder].
 - [ ] Right-click on the `2020 - MM - DD` file.
 - [ ] Select {% if page.reference == 'onedrive' %}`Copy to`.  Set the current folder as the target destination and click `Copy here`{% else %}`Make a copy`{% endif %}.
 - [ ] Replace `MM` and `DD` in the document name with the two-digit month and day of the upcoming meeting.
 - [ ] Open the document and follow the steps in the ***Do these things to set up this document section***.
{% case page.invite_type %}{% when "series" %}
 - [ ] Update the [calendar invite](https://github.com/InnerSourceCommons/foundation-governance/blob/319e6f9bea0de12e93aa418b1a4b0564ebaa59f4/how-to/access-isc-calendar.md) for the next meeting to add:
{% when "instance" %}
 - [ ] Reply-by-meeting to the notes from the previous meeting.
Set the time and place to the next meetup.
Be sure to include in the invite body:{% endcase %}
   * Write-enabled link to the agenda document.
   * Role assignment and agenda detail summary.

{% if page.reference != nil %}
***Tips***
{% capture type %}default_roles/scheduler-{{page.reference}}.md{% endcapture %}
{% include {{ type }} %}
{% endif %}

{% include links.md %}
