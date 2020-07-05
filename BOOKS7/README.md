# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

describe '投稿のテスト' do
  let(:user) { create(:user) }
  let!(:user2) { create(:user) }
  let!(:book) { create(:book, user: user) }
  let!(:book2) { create(:book, user: user2) }
  before do
    visit new_user_session_path
    fill_in 'user[name]', with: user.name
    fill_in 'user[password]', with: user.password
    click_button 'Log in'
  end

aaaaa

















<thead>
    <tr> 
      <th></th>
      <th>Title</th>
      <th>Opinion</th>
      <th colspan="3"></th>
    </tr>
  </thead>

  <tbody>
  <% @books.each do |book| %>
  <tr>
  <td><%= book.title %></td>
  <td><%= book.body %></td>
  <td><%=link_to "edit", edit_book_path(book) %></td>
  <td><%=link_to "destroy", book_path(book), method: :delete, data: {confirm: "Are you sure?"} %>
  </td>
  </tr>
  <% end %>
  </tbody>
</table>


タイトルと意見がでるようにしたい


aaaさん

「BOOKSの条件」
bookモデルののすべてのデータ
一つ一つ順番に表示させる

[BOOKS/SHOWの条件]
bookモデルの、ユーザーIDがURLのIDと
一致するデーターすべて
一つ一つ順番に表示させる
