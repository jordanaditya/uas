<!DOCTYPE html>
<html>
<title>Your Article PDF</title>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>

<h2>Your Article</h2>
<table>
  <tr>
    <th>No</th>
    <th>Title</th>
    <th>Content</th>
    <th>Image</th>
  </tr>
  @php $i=1 @endphp
  @foreach($articles as $a)
  <tr>
    <td>{{$i++}}</td>
    <td>{{$a->title}}</td>
    <td>{{$a->content}}</td>
    <td><img width="150px" src="{{'storage/'.$a->featured_image}}" ></td>
  </tr>
  @endforeach
</table>
</body>
</html>
