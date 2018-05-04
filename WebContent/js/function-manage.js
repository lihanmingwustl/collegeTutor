// JavaScript Document
function userDelete(id)
{
	if(confirm("Are you sure you want to delete the user？")) {
		location.href = "delUser?Id=" + id;
	}
}

function tutorDelete(id)
{
	if(confirm("Are you sure you want to delete the tutor？")) {
		location.href = "delUser?Id=" + id;
	}
}

function orderDelete(id)
{
	if(confirm("Are you sure you want to delete this order？")) {
		location.href = "delUser?Id=" + id;
	}
}